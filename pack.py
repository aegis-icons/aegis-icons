#!/usr/bin/env python3
import argparse
import io
import json
import os
import pathlib
import zipfile

def _do_gen_def(args):
    pack = {
        "uuid": "c1018b93-4e8c-490a-b575-30dde62a833e",
        "name": "aegis-icons",
        "version": 0,
        "icons": []
    }

    root = os.path.join(args.root, "SVG")
    for root, _, files in os.walk(root):
        for f in files:
            filename = os.path.join(root, f)
            if os.path.isfile(filename):
                pack["icons"].append({
                    "filename": pathlib.Path(filename).as_posix(),
                    "category": None,
                    "issuer": [os.path.splitext(os.path.basename(filename))[0]]
                })

    filename = os.path.join(args.root, "pack.json")
    pack["icons"].sort(key=lambda icon: icon["filename"])
    with io.open(filename, "w") as f:
        f.write(json.dumps(pack, indent=4))

    print(f"generated {filename}")

def _do_gen(args):
    with io.open(os.path.join(args.root, "pack.json"), "r") as f:
        pack = json.load(f)

    count = 0
    pack["version"] = args.version
    with zipfile.ZipFile(args.output, "w", zipfile.ZIP_DEFLATED) as zipf:
        for icon in pack["icons"]:
            zipf.write(icon["filename"])
            count += 1
        zipf.writestr("pack.json", json.dumps(pack, indent=4).encode("utf-8"))

    print(f"generated pack with {count} icons")

def main():
    parser = argparse.ArgumentParser(description="Script used to generate an Aegis Authenticator icon pack", formatter_class=argparse.ArgumentDefaultsHelpFormatter)
    parser.add_argument("--root", dest="root", default="", help="the root directory of the icon pack repository")
    subparsers = parser.add_subparsers()

    gen_parser = subparsers.add_parser("gen", help="Generate the icon pack .ZIP file", formatter_class=argparse.ArgumentDefaultsHelpFormatter)
    gen_parser.add_argument("--output", dest="output", required=True, help="icon pack output filename")
    gen_parser.add_argument("--version", dest="version", required=True, type=int, help="the version of the icon pack")
    gen_parser.set_defaults(func=_do_gen)

    update_parser = subparsers.add_parser("gen-def", help="Generate the pack.json file", formatter_class=argparse.ArgumentDefaultsHelpFormatter)
    update_parser.set_defaults(func=_do_gen_def)

    args = parser.parse_args()
    if args.func:
        args.func(args)

if __name__ == "__main__":
    main()
