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
  - [Finding source images](#finding-source-images)
  - [Templates](#templates)
  - [Colors](#colors)
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
  - [Contact sheets (previews)](#contact-sheets-previews)
    - [Snap2IMG config](#snap2img-config)
- [**Footnotes**](#footnotes)

---

## Icon creation walkthrough

### Finding source images
Scour the logo resources (URL, data URI etc.) to find a vector-based image (SVG, AI, EPS, PDF). Here are things you can check:
- Press kit on the company website (e.g. [Zenkit press kit](https://zenkit.com/en/press-kit/) contains `Zenkit_Logo1_Flat.eps`).
  - Look for pages like: *Brand, Press, Media, Logos, Assets* etc.
- Logo on company website; try right-clicking it and selecting *Save image as...*, and see if the save dialogue appears with SVG, **not** JPEG, PNG or other raster graphic format.
  - If right-clicking the image does not have an option for *Save image as...*, try using *Inspect* at the bottom of the right-click menu. This opens the developer tools which can reveal hidden URLs.
    - E.g. at [Floatplane](https://www.floatplane.com), inspecting the icon in the footer reveals the URL `https://frontend.floatplane.com/2.15.1/assets/images/logos/floatplane/icon-white.svg` which can be copied-and-pasted into the browser to open the image, and then saved normally.
  - Sometimes SVG is embedded as inline. Means that instead of linking to external file, whole SVG file code is added to the HTML (see [SVG code example](https://gist.github.com/krisu5/677a8a3478331498929a11b900741aa2)). In that case, copy the SVG code completely from HTML (often, website embedded SVG starts with `<svg class` and so forth & ends with `</svg>`), open your refer text editor and save copypasted text as `filename.svg`. You can test if the file works by opening in it into web browser.
- Right-click the website and select *View page source*, then press *Ctrl+F* to open the search tool and type `SVG` to look for possible SVG vector files. Web inspector is also useful and better tool for some (press `F12`).
  - E.g. [You Need A Budget](https://www.youneedabudget.com) reveals the hidden SVG resource in HTML metadata section `https://www-assets.youneedabudget.com/wp-content/themes/dupatta/dist/images/safari-pinned-tab_[random-alphanumerical].svg` which can be copied-and-pasted into the browser to open the image, and then saved normally).
- If everything has failed so far, then check [logo resources](#logos) section.
- As last resort, you could try image tracing on Illustrator, Inkscape etc. Usually results varies from bad to kind of decent. Rule of thumb with tracing is using image that's high resolution, not many colors and doesn't have any artifacts. 
  - [Vector Magic](https://vectormagic.com/) does way better job, but unfortunately they don't offer free services.<br>[Vectorizer.io](https://www.vectorizer.io/) is good alternative and has free option, but with annoying restrictions.
  - Making vectorized logo from stratch is also option, if you're skilled and patient enough.

> ⚠ Watch out for SVGs that are using raster graphics ([example](https://github.com/haiwen/seafile-client/blob/7d8f06111960921ce01ef08e169d41bae13959ed/data/icons/scalable/apps/seafile.svg?short_path=d0d75d2#L54)). These are not common, but still exists.

### Templates
When making icons, download provided [templates](/_templates).

- For Illustrator, use `ai_template.ait` (for regular icons) or `ai_template_generic.ait` (for generic icons).
  - `.ait` is Illustrator template file format, **don't save over template file!** (Read [save and export](#save-and-export) for more info).
- Other softwares, use `svg_template.svg` (for regular icons) or `svg_template_generic.svg` (for generic icons). 
  - Inkscape users, please read [save and export](#save-and-export) section.

### Colors
- Never use white as background color.
- Don't use gradients, use solid colors.
- Keep everything at 100% opacity, no blending etc.
- Logo (a.k.a. foreground, fg) should always use white (`#FFFFFF`).
  - Exceptions are `fg.var` icons (see [technical](#technical)) that use black (`#000000`) as foreground color. These are for icons that have bright background color that makes white logo hard to see for some screens / eyes.
    - E.g. [regular Snapchat icon](https://user-images.githubusercontent.com/3540275/83945146-6162d980-a811-11ea-8910-9e93ff65e804.png), [Snapchat fg.var icon](https://user-images.githubusercontent.com/3540275/83945157-6fb0f580-a811-11ea-8fc4-494dcfff53ae.png).
- If you find brand guideline that has documented brand colors ([example](https://brave.com/brave-branding-assets/) <sup>[[archive]](https://web.archive.org/web/20200606124434/https://brave.com/brave-branding-assets/)</sup>), then go with that. Use primary brand color, that has specifically said on the guideline or based on what color is used most.
- If there's no guidelines and logo only has one color, use logo color as icon background.
  - **Tip:** In Illustrator, if logo is using gradient, use [this method](http://miraimages.com/illustrator-gradient-colors-to-swatches/) <sup>[[archive]](https://web.archive.org/web/20200606124113/http://miraimages.com/illustrator-gradient-colors-to-swatches/)</sup> to extract all the colors in the gradient to the swatches. Then select the color what you think looks the best.
- If icon you're making is using dark background, you **need to make** `bg.var` icon version as well (see [technical](#technical)).
  - If there's no guidelines for alternative colors, check the website or app to see what other colors there might be.
- For generic icons, use background color `#607D8B` <sup><a href="#ftn1" id="ftn-sec1">[1]</a></sup> and white foreground.
  - Templates `ai_template_generic.ait` & `svg_template_generic.svg` has correct background color set.

### Save and export
- If you're using Adobe Illustrator, save the file as AI **and** SVG.
  - Remember to **rename the artboard** (`Shift + O`) before saving.
- For other softwares, just save as SVG.
  - Remember to **remove the guide strokes!**
  - In Inkscape, save the SVG as "Plain SVG", not "Inkscape SVG".
- Then export file as a PNG with original height and width (1024 x 1024 px).
  - Use **1x scale** for Illustrator CC's "Export for Screens" (`Alt + Ctrl + E` on Windows, `⌘ + Option + E` on MacOS).

### Compression
Compress the PNG file(s) with either using [pingo](https://css-ig.net/pingo) <sup><a href="#ftn2" id="ftn-sec2">[2]</a></sup> (Windows, lossless), [ImageOptim](https://imageoptim.com/mac) (MacOS, lossless by default),<br>
[Trimage](https://trimage.org/) (Linux & MacOS, lossless) or [TinyPNG](https://tinypng.com/) (web app, lossy).

When using pingo's Windows GUI software *pinga*, [use these settings](https://user-images.githubusercontent.com/3540275/80963782-52ef5f80-8e18-11ea-8dbe-fc1c58fa81e4.png). For command line, use `pingo -s9 filename.png` or use [batch script](/_compress/.1_pingo-script-for-icons.bat).

If your software of choice has compression settings, set those  maximum as well. **Do not use lossy compressions that has visible differences / artifacts.** When in doubt, use lossless.

### Submit to repository
Submit your icon for review by [opening a new issue](https://github.com/krisu5/aegis-icons/issues) and attaching your file(s) and source(s). Alternately, you are encouraged to refer to [this GitHub guide](https://guides.github.com/activities/contributing-to-open-source) to fork the Aegis Icons project, add the changed files to your fork, then create a Pull Request with your submissions. This more-complex method is less work for the maintainers, and gives you more impressive contribution stats on your GitHub user homepage. 😉

## Style requirements

### Style
- The primary icon uses the main company logo, whether that is a [logomark, logotype, or something else](https://blog.designcrowd.com/article/997/logo-logomark-logotype-whats-the-difference-and-what-do-you-need) <sup>[[archive]](https://web.archive.org/web/20200606123728/https://blog.designcrowd.com/article/997/logo-logomark-logotype-whats-the-difference-and-what-do-you-need)</sup>.
- The icon has:
  - Image/page canvas of 1024 x 1024px
  - Transparent background
  - Solid background circle with company brand color (see colors section), spanning 100% of image canvas (1024px)
  - Company logo in flat white or flat black, depending on whichever creates greatest contrast with background color. This may require modifying an original multicolor company logo.
  - Company logo maximum height is 50% (512px) and maximum width is 75% (768 px).

#### Variations
- Other logos and variations (including logomarks when they are not the main brand logo) are accepted in the "Variations" subfolder.
- Variations use the same filename as the
- All variations otherwise follow the same style requirements as the primary logo.

#### Technical
- Master source file is vector-based AI or SVG format. Raster images (PNG/JPEG/etc) are unacceptable, including raster images embedded within the vector file.
- SVG and PNG size are 1024 x 1024 px without any scale
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

- [jaywcjlove / logo](https://github.com/jaywcjlove/logo/tree/master/img) (good for finding logos of Chinese apps & sites)
- [lexrus / fontdiao](https://github.com/lexrus/fontdiao/tree/master/svg) (good for finding logos of Chinese apps & sites)
- [LogoSear.ch](https://logosear.ch/) ⭐
- [Seeklogo](https://seeklogo.com/)
- [Simple Icons](https://simpleicons.org/) ⭐
- [Worldvectorlogo](https://worldvectorlogo.com/)
- [Wikimedia Commons](https://commons.wikimedia.org/wiki/Main_Page)
- Wikipedia pages of the brand

Google searching also works really well with right keywords (like `[app / site name] svg`)

### Lists of sites supporting 2FA
Need ideas for icons? These list apps / websites that support 2FA (and what kind of format too).

- [andOTP's thumbnail directory](https://github.com/andOTP/andOTP/tree/master/app/src/main/res/drawable) ⭐ (look for the filenames starting with `thumb_`)
- [Authy - Guides](https://authy.com/guides/) ⭐
- [Two-factor authentication list](https://evanhahn.com/2fa/)
- [Two Factor Auth List](https://twofactorauth.org/) ⭐

### Software
Looking for software to start make icons? Here's some of the well known ones.

- [Adobe Illustrator](https://www.adobe.com/products/illustrator.html) ⭐ (industry standard, most used software in this repository)
- [Affinity Designer](https://affinity.serif.com/en-gb/designer/) (way cheaper but powerful alternative to Illustrator)
- [Inkscape](https://inkscape.org/) (popular open source option)

## Maintainer's Guide
- As needed, update `full_preview.md`, `full_preview.png` (and convert that to `full_preview.webp` with using *pingo* command `pingo -webp-nigh=100 -s9 full_preview.png`), `full_preview_generic.png`, `full_preview_variations.png`, and `full_preview_outdated.png`.

### Contact sheets (previews)
We are using [*Snap2IMG*](https://www.rlvision.com/snap2img/about.php) software for generating previews (unfortunately, it's Windows only software. **Cross platform alternative wanted!** Submit your suggestions at issues).

Typeface for filenames is [Cascadia Code](https://github.com/microsoft/cascadia-code).

#### Snap2IMG Config
Check at "advanced" menu that text antialiasing is set as *ClearType*.

- **Basic Setup** section ([screenshot](https://user-images.githubusercontent.com/3540275/84652052-a1ae1000-af13-11ea-829a-e810ab36e8a8.png))
  - Folder: *[folder with PNGS that you want preview made of]*
  - Create index images for: *This folder only*
  - Width and height: *128*
    - Adapt height to row content: **checked**
    - Ignore aspect ratio: **not checked**
  - Thumbs per row: *6*
    - Always pad to full width: **not checked**
  - Limit rows: **not checked**.

- **Spacing** section ([screenshot](https://user-images.githubusercontent.com/3540275/84652069-a96db480-af13-11ea-98b0-35f2d30224b8.png))
  - Spacing Between Thumbnails:
    - ↔️: *12*
    - ↕️: *28*
  - Page margins:
    - Top / Left / Right: *16*
    - Bottom: *0*.
    
- **Text** section ([screenshot](https://user-images.githubusercontent.com/3540275/84652079-b12d5900-af13-11ea-895e-e6e0acefd49a.png))
  - Show header: **not checked**
  - Show filenames: **checked**
    - Text: *< Filename >*
    - Font: *Cascadia Mono 9* (install `CascadiaMono.ttf` and set size as *9*)
    - Extend upwards / Solid background / Truncate to one line: **not checked**
    - Ignore aspect ratio: **checked**
  - Show footer: **not checked**.

- **Styling** section ([screenshot](https://user-images.githubusercontent.com/3540275/84652096-ba1e2a80-af13-11ea-9117-6dad42da53c2.png))
  - Page Background:
    - Color: *white* (RGB `255 255 255`)
    - Texture: *no texture*
  - Thumbnails:
    - Add a shadow / Grayscale / Draw border around thumbnails: **not checked**.

## Footnotes
<sup><a href="#ftn-sec1" id="ftn1">[1]</a></sup> This color is taken from [Material Design 2014 color system](https://material.io/design/color/the-color-system.html#tools-for-picking-colors) (Blue Grey, 500).

<sup><a href="#ftn-sec2" id="ftn2">[2]</a></sup> While *pingo* is still one of the best & fastest PNG compressor currently, we can't recommend it 100% anymore because of author's uncertain behaviour. Recently, the author  of *pingo* has erased Linux version, feedback forum and changelog completely without warning and explanation. Good GUI alternatives for Windows are [FileOptimizer](https://sourceforge.net/projects/nikkhokkho/files/FileOptimizer/) and [PNGGauntlet](https://pnggauntlet.com/). For command line usage, check out *zopflipng* ([main source](https://github.com/google/zopfli), [tutorial](https://ariya.io/2016/06/using-zopfli-to-optimize-png-images), [Node.js port](https://github.com/pierreinglebert/node-zopfli), [builded Windows binaries](https://github.com/garyzyg/zopfli-windows/releases)).
