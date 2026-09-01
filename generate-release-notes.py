#!/usr/bin/env python3
"""
Generate release notes for the monthly Aegis Icons release.

It prepends the custom banner (ZIP download + help links) and then uses
GitHub's own "generate release notes" API (the same engine that powers
the "Generate release notes" button) so that the output looks exactly
like the example release notes, e.g.:

    ### :package: [Latest ZIP Download](...)
    #### :memo: Help: [...](...) or [...](...)
    ---

    ## What's Changed

    * New icon: Duitku by @partingscientist in https://github.com/aegis-icons/aegis-icons/pull/1021
    ...

    **Full Changelog**: https://github.com/aegis-icons/aegis-icons/compare/2026-05-01...2026-06-01

GitHub's generated notes use the merged pull request *title*, which in this
repo follows the "New icon: ..." / "Update icon: ..." convention, so the
resulting list contains exactly the newly added / updated icons with a link
to the pull request and the author. This is far more reliable than diffing
icon files or relying on PR labels.
"""

import json
import os
import urllib.request

REPO = os.environ.get("GITHUB_REPOSITORY", "aegis-icons/aegis-icons")
TOKEN = os.environ.get("GITHUB_TOKEN", "")
TAG = os.environ.get("RELEASE_TAG", "")
TARGET = os.environ.get("RELEASE_TARGET", "")

OUTPUT = "release_notes.md"

BANNER = """### :package: [Latest ZIP Download](https://github.com/aegis-icons/aegis-icons/releases/latest/download/aegis-icons.zip)

#### :memo: Help: [install](https://github.com/aegis-icons/aegis-icons/blob/master/FAQ.md#with-icon-pack) or [update](https://github.com/aegis-icons/aegis-icons/blob/master/FAQ.md#how-to-update-the-icon-pack)

---

"""


def _generate_notes():
    """Ask GitHub to generate release notes for the given tag."""
    url = f"https://api.github.com/repos/{REPO}/releases/generate-notes"
    payload = {"tag_name": TAG}
    if TARGET:
        payload["target_commitish"] = TARGET

    req = urllib.request.Request(url, data=json.dumps(payload).encode("utf-8"),
                                 method="POST")
    req.add_header("Accept", "application/vnd.github+json")
    if TOKEN:
        req.add_header("Authorization", f"Bearer {TOKEN}")
        req.add_header("X-GitHub-Api-Version", "2022-11-28")

    with urllib.request.urlopen(req, timeout=60) as resp:
        data = json.loads(resp.read().decode("utf-8"))
        # 'name' is e.g. "2026-09-01", 'body' holds the generated notes.
        return data.get("body", "")


def main():
    generated = _generate_notes().strip()
    if generated:
        body = BANNER + generated + "\n"
    else:
        # Fallback so the workflow always has something to publish.
        body = BANNER + "\nNo icon changes in this release.\n"

    with open(OUTPUT, "w") as f:
        f.write(body)
    print(f"Wrote {OUTPUT}")


if __name__ == "__main__":
    main()

