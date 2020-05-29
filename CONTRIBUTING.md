# ⚠ Contributing process is still work in progress
**⚠ Do not submit icons, until this notice is gone and documents / assets related to contributing are finalized.**

----

# Contributing
Thank you for taking the time to contribute! Ask for help, report a bug, or request a feature simply by [opening a new issue](https://github.com/krisu5/aegis-icons/issues)! If you would like to contribute icons or code, please fork the project and keep reading!

**For contributing, you have to know basics of making and editing vector graphics.**

It's recommended to also have some knowledge of design in general.

---

#### Table of contents
- [**Icon creation walkthrough**](#icon-creation-walkthrough)
  - [Find source images](#find-source-images)
  - [Editing with Inkscape or Adobe Illustrator](#editing-with-inkscape-or-adobe-illustrator)
  - [Save and export](#save-and-export)
  - [Compression](#compression)
  - [Submit to repository](#submit-to-repository)
- [**Style requirements**](#style-requirements)
  - [Style](#style)
  - [Variations](#variations)
  - [Technical](#technical)
- [**Resources**](#resources)
  - [Logos](#logos)
  - [Lists of sites supporting 2FA](#lists-of-sites-supporting-2fa)
  - [Software](#software)
- [**Maintainer's guide**](#maintainers-guide)

---

## Icon creation walkthrough

### Find source images
Scour the logo resources (URL, app data, etc.) to find a vector-based image (SVG, AI, EPS etc.). Here are some places you can check:
- Company press kit (e.g. [Zenkit press kit](https://zenkit.com/en/press-kit/) contains `Zenkit_Logo1_Flat.eps`, which when opened with Inkscape turns out to contain a vector-based logo.)
- Logo on company website; try right-clicking it and selecting *Save image as...*, and see if the save dialogue appears with SVG, AI, etc., not JPEG, PNG, or other raster based format.
  - If right-clicking the image does not have an option for *Save image as...*, try using *Inspect* at the bottom of the right-click menu. This opens the developer tools which can reveal hidden URLs.
  - E.g. at [Floatplane](https://www.floatplane.com), inspecting the icon in the footer reveals the URL `https://frontend.floatplane.com/2.15.1/assets/images/logos/floatplane/icon-white.svg` which can be copied-and-pasted into the browser to open the image, and then saved normally.
- Right-click the website and select *View page source*, then press *Ctrl+F* to open the search tool and type things like `.SVG` or `.AI` to look for hidden image URLs 
  - E.g. [You Need A Budget](https://www.youneedabudget.com) reveals the hidden SVG resource `https://www-assets.youneedabudget.com/wp-content/themes/dupatta/dist/images/safari-pinned-tab_*.svg` which can be copied-and-pasted into the browser to open the image, and then saved normally.)
- If everything else fails, then check [logo resources](#logos) section.

### Editing with Inkscape or Adobe Illustrator
Open the file with Adobe Illustrator, [Inkscape](https://inkscape.org), or another vector image editor of your choice. Follow the [Style guidelines](#style-guidelines) to create a suitable icon(s).

### Save and export
Save the file in its original format (whether AI or SVG), and additionally export as a PNG file with 1024 px for both height and width.

### Compression
Compress the PNG file with either using [pingo](https://css-ig.net/pingo)<b>*</b> (Windows), [Trimage](https://trimage.org/) (Linux & MacOS), [ImageOptim](https://imageoptim.com/mac) (MacOS) or [TinyPNG webapp](https://tinypng.com/).

When using pingo's Windows GUI software *pinga*, [use these settings](https://user-images.githubusercontent.com/3540275/80963782-52ef5f80-8e18-11ea-8dbe-fc1c58fa81e4.png). For command line, use `pingo -s9 [file.png]`.

If your software of choice has compression settings, set those  maximum as well.

> <b>*</b> While *pingo* is still the best & fastest PNG compressor currently, we can't recommend it 100% anymore because of author's uncertain behaviour. Recently, the author  of *pingo* has erased Linux version, feedback forum and changelog completely without warning and explanation. Good GUI alternatives for Windows are [FileOptimizer](https://sourceforge.net/projects/nikkhokkho/files/FileOptimizer/) and [PNGGauntlet](https://pnggauntlet.com/). For command line usage, check out *zopflipng* ([main source](https://github.com/google/zopfli), [tutorial](https://ariya.io/2016/06/using-zopfli-to-optimize-png-images), [Node.js port](https://github.com/pierreinglebert/node-zopfli), [builded Windows binaries](https://github.com/garyzyg/zopfli-windows/releases)).

### Submit to repository
Submit your icon for review by [opening a new issue](https://github.com/krisu5/aegis-icons/issues) and attaching your file(s) and source(s). Alternately, you are encouraged to refer to [this GitHub guide](https://guides.github.com/activities/contributing-to-open-source) to fork the Aegis Icons project, add the changed files to your fork, then create a Pull Request with your submissions. This more-complex method is less work for the maintainers, and gives you more impressive contribution stats on your GitHub user homepage 😉

## Style requirements

### Style
- The primary icon uses the main company logo, whether that is a [logomark, logotype, or something else](https://blog.designcrowd.com/article/997/logo-logomark-logotype-whats-the-difference-and-what-do-you-need).
- The icon has:
  - Image/page canvas of 1024 x 1024px
  - Transparent background
  - Solid background circle with company brand color, spanning 100% of image canvas (1024px)
  - Company logo in flat white or flat black, depending on whichever creates greatest contrast with background color. This may require modifying an original multicolor company logo.
  - Company logo maximum height is 50% (512px) and maximum width is 75% (768 px).

#### Variations
- Other logos and variations (including logomarks when they are not the main brand logo) are accepted in the "Variations" subfolder.
- Variations use the same filename as the
- All variations otherwise follow the same style requirements as the primary logo.

#### Technical
  - Master source file is vector-based AI or SVG format. Raster images (PNG/JPEG/etc) are unacceptable, including raster images embedded within the vector file.
  - SVG and PNG size are 1024 x 1024 px without any scale
  - Export for Aegis is 1024x1024px PNG file
  - Filename
    - Primary icon: `Company or Product Name.extension`
          - Examples: `Epic Games.ai`, `itch.io.svg`, `AWS.png`
        - Icon variations with alternate logo: `Primary icon name **alt**.extension`
          - Examples: `AppFolio alt.svg`, `You Need A Budget alt.png`
        - Icon variations with different foreground/background brand color: `Primary icon name **fg/bg.var**.extension`
          - Examples: `Snapchat fg.var.png`, `Squarespace bg.var.png`
        - Icon variations with multiple differences: `Primary icon name **alt fg/bg.var**.extension`
          - Examples: `Black Desert Online alt bg.var.png`

## Resources
Resources marked with star (⭐) are recommended and most used by the maintainers.

### Logos
These are good resources for finding logos in vector format, when no official brand kit / vector logos are available.

- [jaywcjlove / logo](https://github.com/jaywcjlove/logo/tree/master/img) *(good for finding logos of Chinese apps & sites)*
- [lexrus / fontdiao](https://github.com/lexrus/fontdiao/tree/master/svg) *(good for finding logos of Chinese apps & sites)*
- [LogoSear.ch](https://logosear.ch/) ⭐
- [Seeklogo](https://seeklogo.com/)
- [Simple Icons](https://simpleicons.org/) ⭐
- [Worldvectorlogo](https://worldvectorlogo.com/)
- [Wikimedia Commons](https://commons.wikimedia.org/wiki/Main_Page)
- Wikipedia pages of the brand

Google searching also works really well with right keywords (like `[app / site name] svg`)

### Lists of sites supporting 2FA
Need ideas for icons? These list apps / websites that support 2FA (and what kind of format too).

- [andOTP's thumbnail directory](https://github.com/andOTP/andOTP/tree/master/app/src/main/res/drawable) ⭐ *(look for the filenames starting with `thumb_`)*
- [Authy - Guides](https://authy.com/guides/) ⭐
- [Two-factor authentication list](https://evanhahn.com/2fa/)
- [Two Factor Auth List](https://twofactorauth.org/) ⭐

### Software
Looking for software to start make icons? Here's some of the well known ones.

- [Adobe Illustrator](https://www.adobe.com/products/illustrator.html) ⭐ *(industry standard, most used software in this repository)*
- [Affinity Designer](https://affinity.serif.com/en-gb/designer/) *(way cheaper but powerful alternative to Illustrator)*
- [Inkscape](https://inkscape.org/) *(popular open source option)*


## Maintainer's Guide
  - As needed, update `full_preview.md`,  `full_preview.png` (and convert that to `full_preview.webp` with command `pingo -webp-nigh=100 -s9 full_preview.png`), `full_preview_generic.png`, `full_preview_variations.png`, and `full_preview_outdated.png`.
