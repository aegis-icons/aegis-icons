# Contributing
Thank you for taking the time to contribute! Ask for help, report a bug, or request a feature simply by [opening a new issue](../../issues)! If you would like to contribute icons or code, please fork the project and keep reading! Documentation may look long, but it's mostly simple rules and suggestions.

**For contributing, you have to know basics of making and editing vector graphics.**

It's recommended to also have some knowledge of design in general.

---

#### Table of contents
- [**Icon creation walkthrough**](#icon-creation-walkthrough)
  - [Finding source images](#finding-source-images)
  - [Templates](#templates)
  - [Layout](#layout)
  - [Colors](#colors)
  - [bg.var & fg.var icons](#bgvar--fgvar-icons)
  - [Alternative icons](#alternative-icons)
  - [Generic icons](#generic-icons)
  - [Save and export](#save-and-export)
  - [PNG compression](#png-compression)
  - [Submit to repository](#submit-to-repository)
- [**Technical**](#technical)
  - [Directories](#directories)
  - [Filename](#filename)
    - [Version naming and organizing old files](#version-naming-and-organizing-old-files)
- [**Resources**](#resources)
  - [Logos](#logos)
  - [Lists of sites supporting 2FA](#lists-of-sites-supporting-2fa)
  - [Software](#software)
- [**Maintainer's guide**](#maintainers-guide)
  - [Contact sheets (previews)](#contact-sheets-previews)
    - [Snap2IMG config](#snap2img-config)
- [**Issue guidelines**](#issue-guidelines)
- [**Footnotes**](#footnotes)

---

## Icon creation walkthrough

### Finding source images
Scour the logo resources (URL, data URI etc.) to find a vector-based image (SVG, AI, EPS, PDF). Here are things you can check:
- **Press kit on the company website**
  - e.g. [Zenkit press kit](https://zenkit.com/en/press-kit/) contains `Zenkit_Logo1_Flat.eps`.
  - Look for pages like: *Brand, Press, Media, Logos, Assets, Marketing, About* etc.
- **Embedded logo(s) on company website**
  - Easiest way for finding / downloading SVGs from web pages is using [SVG Gobbler](https://www.svggobbler.com/) browser extension (Chrome & Firefox).
    - Alternative: [svg-grabber](https://chrome.google.com/webstore/detail/svg-grabber-get-all-the-s/ndakggdliegnegeclmfgodmgemdokdmg) (Chrome only).
  - **Ways without extension:**
    1. Try right-clicking logo image and selecting *Save image as...*, and see if the save dialogue appears with SVG, not JPG, PNG or other raster graphic format.
       - If right-clicking the image does not have an option for *Save image as...*, try using *Inspect* at the bottom of the right-click menu. This opens the developer tools which can reveal hidden URLs.
       - E.g. at [Floatplane](https://www.floatplane.com), inspecting the icon in the footer reveals the URL `https://frontend.floatplane.com/2.15.1/assets/images/logos/floatplane/icon-white.svg` which can be copied-and-pasted into the browser to open the image, and then saved normally.
       - Sometimes SVG is embedded as inline. Means that instead of linking to external file, whole SVG file code is added to the HTML (see [SVG code example](https://gist.github.com/krisu5/677a8a3478331498929a11b900741aa2)). In that case, copy the SVG code completely from HTML (website embedded SVG starts with `<svg` & so forth and ends with `</svg>`), open your refer text editor and save copypasted text as `filename.svg`. You can test if the file works by opening in it into web browser.
    2. Right-click the website and select *View page source*, then press `Ctrl + F` to open the search tool and type `SVG` to look for possible SVG vector files. Web inspector is also useful and better tool for some (press `F12`).
       - E.g. [You Need A Budget](https://www.youneedabudget.com) reveals the hidden SVG resource in HTML metadata section `https://www-assets.youneedabudget.com/wp-content/themes/dupatta/dist/images/safari-pinned-tab_[random-alphanumerical].svg` which can be copied-and-pasted into the browser to open the image, and then saved normally).
- If everything has failed so far, then **check [logo resources](#logos) section.**
- As last resort, you could try **image tracing on Illustrator, Inkscape etc.** Usually results varies from bad to kind of decent. Rule of thumb with tracing is using image that's high resolution, not many colors and doesn't have any artifacts. 
  - [Vector Magic](https://vectormagic.com/) does way better job, but unfortunately they don't offer free services.
  - [Vectorizer.io](https://www.vectorizer.io/) is good alternative and has free option, but with annoying restrictions.
- **Making vectorized logo from stratch** is also option, if you're skilled and patient enough.

> ⚠ Watch out for SVGs that are using raster graphics ([example](https://github.com/haiwen/seafile-client/blob/7d8f06111960921ce01ef08e169d41bae13959ed/data/icons/scalable/apps/seafile.svg?short_path=d0d75d2#L54)). These are not common, but still exists.

### Templates
When making icons, download and use provided [templates](/_templates).

- For Illustrator, use `ai_template.ait` (for primary icons) or `ai_template_generic.ait` (for generic icons).
  - `.ait` is Illustrator template file format, **don't save over template file!** (Read [save and export](#save-and-export) for more info).
- Other softwares, use `svg_template.svg` (for primary icons) or `svg_template_generic.svg` (for generic icons).

### Layout
- Use logomark <sup><a href="#ftn1" id="ftn-sec1">[1]</a></sup> if brand is using one.
- If logo **only has text**, use that.
  - If you think that text is too long and hard to read on smaller size, **use first letter of text.**
- Stay inside of the guides as much as possible.
- Square like shaped logos shouldn't step outside of the guides (size wise).
- For wider logos, furthest left & right side guides are max size limit.
- Technically center doesn't always look center in your eyes. You can manually visual center the logo, if necessary.
- Be mindful of white space. It's art form, not science. :)
- **Optional:** icons should have similar ["optical volumes"](https://blog.nucleoapp.com/nucleo-icon-guidelines-introduction-70092f8b4697) (scroll to "Grid and Optical Volume" section <sup>[[archive.is w/ linked section]](https://archive.is/HiMEB#28.5%)</sup>)

### Colors
- Never use white as background color.
- Don't pick a random colors, unless there's absolutely no other options.
- Don't use gradients, use solid colors.
- Keep everything at 100% opacity, no blending etc.
- Logo (a.k.a. foreground, fg) should use white (`#FFFFFF`).
- If you find brand guideline that has documented brand colors ([example](https://brave.com/brave-branding-assets/) <sup>[[wayback machine]](https://web.archive.org/web/20200606124434/https://brave.com/brave-branding-assets/)</sup>), then go with that. For background color, use primary brand color that has specifically said on the guideline or based on what color is used most.
- If there's no guidelines and logo only has one color, use logo color as icon background.
  - For multi-color logos, pick the best looking or most used color. 
    - **Tip:** In Illustrator, if logo is using gradient, use [this method](http://miraimages.com/illustrator-gradient-colors-to-swatches/) <sup>[[wayback machine]](https://web.archive.org/web/20200606124113/http://miraimages.com/illustrator-gradient-colors-to-swatches/)</sup> to extract all the colors in the gradient to the swatches.
- If icon you're making is using dark background, you **have to make** `bg.var` icon version as well.
  - Or opposite, if background is too bright for white logo, then make `fg.var` icon version.
- For generic icons, use background color `#607D8B` <sup><a href="#ftn2" id="ftn-sec2">[2]</a></sup> and white foreground.
  - Templates `ai_template_generic.ait` & `svg_template_generic.svg` has correct background color set.
  
### bg.var & fg.var icons
- `bg.var` icons are for dark / AMOLED themes. These are made when primary icon has dark background that blends in when using the darker theme.
  - Examples: [primary Steam icon](https://user-images.githubusercontent.com/3540275/85153557-042e4580-b25f-11ea-85ff-7cb883f977d4.png), [Steam bg.var icon](https://user-images.githubusercontent.com/3540275/85153530-fbd60a80-b25e-11ea-9197-d7400eeec74f.png).
  - Use brighter alternative background.
  - If there's no guidelines for alternative colors, check the website or app to see what other colors there might be.

- `fg.var` icons are made when brand color is bright and hard to see for white foreground.
  - Examples: [primary Snapchat icon](https://user-images.githubusercontent.com/3540275/83945146-6162d980-a811-11ea-8910-9e93ff65e804.png), [Snapchat fg.var icon](https://user-images.githubusercontent.com/3540275/83945157-6fb0f580-a811-11ea-8fc4-494dcfff53ae.png). 
  - Use black (`#000000`) as foreground color.
  
### Alternative icons
"Alternative", in this case, means icons for brands that provide alternative logos of their brands (examples: [primary IVPN icon](https://user-images.githubusercontent.com/3540275/85149274-c549c100-b259-11ea-8477-6164b679c673.png), [alternative IVPN icon](https://user-images.githubusercontent.com/3540275/85149294-ca0e7500-b259-11ea-9655-b867c21ba1b6.png)).

Just change the logo for alternative version.

### Generic icons
"Generic", in this case, means icons that doesn't represent any brand and are using symbol-like vectors.

- Use `ai_template_generic.ait` or `svg_template_generic.svg` template, depending on the software.
- Don't change the background color of the template (`#607D8B`).
- Foreground color is always white (`#FFFFFF`).
- Use either of these icon library, depending on availability or visual looks:
  - [Unicons](https://iconscout.com/unicons/explore/line) (primary)
  - [Feather](https://feathericons.com/) (secondary)
    - [Lucide](https://lucide.netlify.app/) (community fork of Feather)
  - [Cryptocurrency Icons](http://cryptoicons.co/) ([link to SVG directory](https://github.com/spothq/cryptocurrency-icons/tree/master/svg/black), when neither of the icon libraries has icon for cryptocurrency).

### Save and export
- If you're using Adobe Illustrator, save the file as AI **and** SVG.
  - Remember to **rename the artboard** (shortcut: `Shift + O`) before saving.
    - Name artboard based of [filenaming system](#filename) (without extension).
- For other softwares, just save as SVG.
  - Remember to **remove the guide strokes!**
  - **In Inkscape,** save the SVG as "Plain SVG", not "Inkscape SVG".
  - Don't minify / compress the SVG.
- Then export file as a PNG with original height and width (1024 x 1024 px).
  - Use **1x scale** for Illustrator CC's "Export for Screens" (shortcut: `Alt + Ctrl + E` on Windows, `⌘ + Option + E` on MacOS).
- Read info about naming at [filename](#filename) section.
- If you're submitting pull request, read also [directories](#directories) section.

### PNG compression
Compress the PNG file(s) with either using *[pingo](https://css-ig.net/pingo)* <sup><a href="#ftn3" id="ftn-sec3">[3]</a></sup> (Windows, lossless), *[ImageOptim](https://imageoptim.com/mac)* (MacOS, lossless by default), *[Trimage](https://trimage.org/)* (Linux & MacOS, lossless) or *[TinyPNG](https://tinypng.com/)* (web app, lossy).

When using pingo's Windows GUI software *pinga*, [use these settings](https://user-images.githubusercontent.com/3540275/80963782-52ef5f80-8e18-11ea-8dbe-fc1c58fa81e4.png). For command line, use `pingo -s9 filename.png` or [batch script](/_compress/.1_pingo-script-for-icons.bat).

If your software of choice has compression settings, set those maximum as well.

**Do not use lossy compressions that has visible differences / artifacts.** When in doubt, use lossless.

### Submit to repository
Submit your icon for review by [opening a new issue](../../issues/new/choose) (select "Icon submission") and attaching your file(s) and source(s). Alternately, you are encouraged to refer to [this GitHub guide](https://guides.github.com/activities/contributing-to-open-source) to fork the Aegis Icons project, add the changed files to your fork, then create a Pull Request with your submissions. This more-complex method is less work for the maintainers, and gives you more impressive contribution stats on your GitHub user homepage. 😉 (If possible, please don't add AI files in the pull requests. Instead, zip it and upload it in the PR comment section or sent AI files to [aegis-icons / ai-files](https://github.com/aegis-icons/ai-files) repo instead.)

## Technical
- Master source file is vector-based AI or SVG format. Raster images (PNG, JPEG, GIF etc.) are unacceptable, including raster images embedded within the vector file.
- SVG and PNG size are 1024 x 1024 px without any scale.
- AI template's color mode is RGB color.
- The icon has:
  - Image/page canvas of 1024 x 1024 px.
  - Alpha channel.
  - Solid background circle with company brand color, spanning 100% of image canvas (1024px).
  - Company logo maximum height is 50% (512px) and maximum width is 75% (768px).

### Directories
- Non-variation primary icons are added to root of `PNG/` and `SVG/` folder.
  - AI files are added to root of [aegis-icons / ai-files](https://github.com/aegis-icons/ai-files) repo.
- Variation icons (`bg.var` or `fg.var`) and alternative (`alt`) are added to `PNG/Variations/` and `SVG/Variations/` folder.
  - At [aegis-icons / ai-files](https://github.com/aegis-icons/ai-files) repo, it's `Variations/`.
- For outdated icons, see [version naming and organizing old files](#version-naming-and-organizing-old-files) section.

### Filename
  - Primary icon: `[Company or Product Name].[extension]`
    - *Examples:* `Epic Games.ai`, `itch.io.svg`, `AWS.png`
  - Icon variations with alternate logo: `[Primary icon name] alt.[extension]`
    - *Examples:* `AppFolio alt.svg`, `You Need A Budget alt.png`
  - Icon variations with black foreground or different background color:
    - `[Primary icon name] bg.var.[extension]`
    - `[Primary icon name] fg.var.[extension]`
    - *Examples:* `Snapchat fg.var.png`, `Squarespace bg.var.png`
  - Icon variations with different background color **and** black foreground: `[Primary icon name] fg.bg.var.[extension]`
    - *Example:* `Lichess fg.bg.var.png`
  - Alt. icons with black foreground or different background color: `[Primary icon name] alt fg/bg.var.[extension]`
    - `[Primary icon name] alt bg.var.[extension]`
    - `[Primary icon name] alt fg.var.[extension]`
    - *Example:* `Black Desert Online alt bg.var.png`
  - Generic icon: name as what the icon symbolizes with big capital letter.
    - *Example:* `Cloud.png`
    
#### Version naming and organizing old files
- New versions of icons are only made when it's major change (new logo or brand color).
- Icon files that are outdated for first time, `v1` is added to end of the filename.
  - Examples: `Yahoo v1.svg`, `Dashlane v1.png`.
- Newer files also gets version label here from out.
  - Examples: `Yahoo v2.svg`, `Dashlane v2.png`.
- Version label number increases when new versions are released (`v3`, `v4`, `v5`, `v6` etc.).
- Label number is also added / updated on the Illustrator file's artboard (shortcut: `Shift + O`).
- Outdated versions are moved to self titled directory (`PNG/Outdated/`, `SVG/Outdated/`).
  - In [aegis-icons / ai-files](https://github.com/aegis-icons/ai-files) repo, directory is `Outdated/`.
- Icons which are based of now dead service, should be moved to "Outdated" directory just as it is.

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

More resources at [LogoSear.ch's "Alternative Logo Sources"](https://logosear.ch/alternatives/) list.

Google searching also works really well with right keywords (like `[app / site name] svg`).

### Lists of sites supporting 2FA
Need ideas for icons? These list apps / websites that support 2FA (and what kind of format too).

- [andOTP's thumbnail directory](https://github.com/andOTP/andOTP/tree/master/app/src/main/res/drawable) ⭐ (look for the filenames starting with `thumb_`)
- [Authy - Guides](https://authy.com/guides/) ⭐
- [Two-factor authentication list](https://evanhahn.com/2fa/)
- [Two Factor Auth List](https://twofactorauth.org/) ⭐

### Software
Looking for software to start make icons? Here's some of the well known ones.

- [Adobe Illustrator](https://www.adobe.com/products/illustrator.html) ⭐ (industry standard, most used software in this repository)
- [Affinity Designer](https://affinity.serif.com/designer/) (way cheaper but powerful alternative to Illustrator)
- [Inkscape](https://inkscape.org/) (popular open source option)

## Maintainer's Guide
*This is for admins of the repo. If you're regular contributor, you can ignore this section.*

As needed, update `full_preview.md`, `full_preview.png` (and convert that to `full_preview.webp` with using *pingo* command `pingo -webp-nigh=100 -s9 full_preview.png` [[batch script](/_compress/.2_pingo-script-for-previews.bat)]), `full_preview_generic.png`, `full_preview_variations.png`, and `full_preview_outdated.png`.

### Contact sheets (previews)
We are using [*Snap2IMG*](https://www.rlvision.com/snap2img/about.php) software for generating previews (unfortunately, it's Windows only software. **Cross platform alternative wanted!** Submit your suggestions at issues).

Typeface for filenames is *[Cascadia Code](https://github.com/microsoft/cascadia-code)* (mono version).

#### Snap2IMG config
Check at "advanced" menu that text antialiasing is set as ClearType.

- **Basic Setup** section ([screenshot](https://user-images.githubusercontent.com/3540275/84652052-a1ae1000-af13-11ea-829a-e810ab36e8a8.png))
  - Folder: *PNG/, PNG/Generic/, PNG/Outdated/* or *PNG/Variations/*.
  - Create index images for: *This folder only*.
  - Width and height: *128*.
    - Adapt height to row content: **checked**.
    - Ignore aspect ratio: **not checked**.
  - Thumbs per row: *6*.
    - Always pad to full width: **not checked**.
  - Limit rows: **not checked**.

- **Spacing** section ([screenshot](https://user-images.githubusercontent.com/3540275/84652069-a96db480-af13-11ea-98b0-35f2d30224b8.png))
  - Spacing Between Thumbnails:
    - ↔️ (left to right): *12*.
    - ↕️ (top to bottom): *28*.
  - Page margins:
    - Top / Left / Right: *16*.
    - Bottom: *0*.
    
- **Text** section ([screenshot](https://user-images.githubusercontent.com/3540275/84652079-b12d5900-af13-11ea-895e-e6e0acefd49a.png))
  - Show header: **not checked**.
  - Show filenames: **checked**.
    - Text: *\<Filename\>*.
    - Font: *Cascadia Mono 9* (install `CascadiaMono.ttf` and set size as *9*).
    - Extend upwards / Solid background / Truncate to one line: **not checked**.
    - Ignore aspect ratio: **checked**.
  - Show footer: **not checked**.

- **Styling** section ([screenshot](https://user-images.githubusercontent.com/3540275/84652096-ba1e2a80-af13-11ea-9117-6dad42da53c2.png))
  - Page Background:
    - Color: *white* (RGB `255 255 255`).
    - Texture: *No Texture*.
  - Thumbnails:
    - Add a shadow / Grayscale / Draw border around thumbnails: **not checked**.

## Issue guidelines
1. App / site icon related requests has to have software based 2FA support one way or another, this project does not make icons outside of Aegis usage.
2. Check that icon you're about to request doesn't [already exist](full_preview.md) or requested in the [issues](https://github.com/krisu5/aegis-icons/issues).
3. Read the issue template and fill **at least** required parts.
4. If you have question or miscellaneous suggestion, check [FAQ](FAQ.md) first.
5. Please think twice before requesting icons that possibly are overly complex to make ([example](https://github.com/krisu5/aegis-icons/issues/92)). Ask yourself if the icon is really worth of time and effort.
   - Aegis-icons can reject any icon request for any reason. But most of the requests gets filled. Usually we do provide explanation and possibly alternative option if we reject the request.
   - *Hate speech site related requests* (such as Gab, Parler, Voat etc.) will be rejected without explanation, **no exceptions.**
6. For forums we have decided to make icons based of forum software they use, because those are more universally usable for icons then specific communities. *This is judged case by case.*
   - Finding out the forum software, we are using tools such as [What CMS](https://whatcms.org) and [W3Techs Site Info](https://w3techs.com/sites).

<b>After reading and accepting guidelines, <a href="../../issues/new/choose">you can make new issue</a>.</b>

## Footnotes
<sup><a href="#ftn-sec1" id="ftn1">[1]</a></sup> Article: [Logo, Logomark, Logotype - What's The Difference And What Do You Need?](https://blog.designcrowd.com/article/997/logo-logomark-logotype-whats-the-difference-and-what-do-you-need) <sup>[[wayback machine]](https://web.archive.org/web/20200606123728/https://blog.designcrowd.com/article/997/logo-logomark-logotype-whats-the-difference-and-what-do-you-need)</sup>

<sup><a href="#ftn-sec2" id="ftn2">[2]</a></sup> This color is taken from [Material Design 2014 color system](https://material.io/design/color/the-color-system.html#tools-for-picking-colors) <sup>[[archive.is w/ linked section]](https://archive.is/96QQG#77%)</sup> (Blue Grey, 500).

<sup><a href="#ftn-sec3" id="ftn3">[3]</a></sup> While *pingo* is still one of the best & fastest PNG compressor currently, we can't recommend it 100% anymore because of author's uncertain behaviour. The author of *pingo* has erased Linux version, <del>feedback forum</del>, changelog and even documentation completely without warning and explanation. Good GUI alternatives for Windows are *[FileOptimizer](https://sourceforge.net/projects/nikkhokkho/files/FileOptimizer/)* and *[PNGGauntlet](https://pnggauntlet.com/)*. For command line usage, check out *[Efficient Compression Tool](https://github.com/fhanau/Efficient-Compression-Tool)* or *[zopflipng](https://github.com/google/zopfli)* ([tutorial](https://ariya.io/2016/06/using-zopfli-to-optimize-png-images) <sup>[[wayback machine]](https://web.archive.org/web/20200619115110/https://ariya.io/2016/06/using-zopfli-to-optimize-png-images)</sup>, [Node.js port](https://github.com/pierreinglebert/node-zopfli), [builded Windows binaries](https://github.com/garyzyg/zopfli-windows/releases)).