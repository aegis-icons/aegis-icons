# Contributing
Thank you for taking the time to contribute! Ask for help, report a bug or request a feature, read [issue guidelines](#issue-guidelines) first!

If you would like to contribute icons or code, please fork the project and keep reading! (Documentation is long, because we strive for high quality.)

**For contributing, you have to know basics of making and editing vectors with vector graphics editor.**

It's recommended to also have some knowledge of design in general.

---

#### Table of contents
- [**Icon creation walkthrough**](#icon-creation-walkthrough)
  - [Finding source images](#finding-source-images)
  - [Templates](#templates)
  - [Layout](#layout)
  - [Vectors](#vectors)
  - [Colors](#colors)
  - [bg.var & fg.var icons](#bgvar--fgvar-icons)
  - [Alternative icons](#alternative-icons)
  - [Generic icons](#generic-icons)
  - [Save and export](#save-and-export)
  - [SVG compression](#svg-compression)
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
First of all before doing anything, icon you're making for app / website **must have Aegis supported 2FA support**, one way or another. We don't accept icons based of services that don't have this requirement. And we also don't accept icons from known hate speech sites ([more info at issue guidelines](#issue-guidelines)).

### Finding source images
Scour the logo resources (URL, data URI etc.) to find a vector-based image (SVG, AI, EPS, PDF). Here are things you can check:
- **Press kit on the company website**
  - e.g. [Zenkit press kit](https://zenkit.com/en/press-kit/) contains `Zenkit_Logo1_Flat.eps`.
  - Look for pages like: *Brand, Press, Media, Logos, Assets, Marketing, About* etc.
- **Embedded logo(s) on company website**
  - Easiest way for finding / downloading SVGs from web pages is using [SVG Gobbler](https://www.svggobbler.com/) browser extension (Chrome & Firefox).
    - Alternatives: [SVG Export](https://svgexport.io/) (Chrome & Firefox), [Brandfetch](https://brandfetch.com/) (web app), [svg-grabber](https://chrome.google.com/webstore/detail/svg-grabber-get-all-the-s/ndakggdliegnegeclmfgodmgemdokdmg) (Chrome only).
  - **Ways without extension:**
    1. Try right-clicking logo image and selecting *Save image as...*, and see if the save dialogue appears with SVG (not JPG, PNG, GIF, WebP or [any other raster graphic format](https://en.wikipedia.org/wiki/Image_file_formats#Raster_formats)).
       - If right-clicking the image does not have an option for *Save image as...*, try using *Inspect* at the bottom of the right-click menu. This opens the developer tools which can reveal hidden URLs.
          - E.g. at [Codeberg](https://codeberg.org/), inspecting the logo in the left side of the navigation or logo at center reveals the location of SVG. Right-click and "open in new tab" to see the SVG file.
       - Sometimes SVG is embedded as inline. Means that instead of linking to external file, whole SVG file code is added to the HTML (see [SVG code example](https://gist.github.com/krisu5/677a8a3478331498929a11b900741aa2)). In that case, copy the SVG code completely from HTML (website embedded SVG starts with `<svg` & so forth and ends with `</svg>`), open your refer text editor and save copypasted text as `filename.svg`. You can test if the file works by opening in it into web browser.
         - If SVG doesn't seem to work, it probably is missing some markup. Try web tools like [Vecta.io's Nano](https://vecta.io/nano) or [SVGminify.com](https://www.svgminify.com/), these minimize the size and modify SVG to correct markup.
    2. Right-click the website and select *View page source*, then press `Ctrl + F` to open the search tool and type `SVG` to look for possible SVG vector files. Web inspector is also useful and better tool for some (press `F12`).
       - E.g. [You Need A Budget](https://www.youneedabudget.com) reveals the hidden SVG resource in HTML metadata section `https://www-assets.youneedabudget.com/wp-content/themes/dupatta/dist/images/safari-pinned-tab_[random-alphanumerical].svg` which can be copied-and-pasted into the browser to open the image, and then saved normally).
- If everything has failed so far, then **check [logo resources](#logos) section.** Remember though, logo has to be latest one company uses.
- As last resort, you could try **image tracing on Illustrator, Inkscape etc.** Usually results varies from bad to kind of decent. Rule of thumb with tracing is using image that's high resolution, not many colors and doesn't have any artifacts.
  - [Vectorizer.io](https://anonym.to/?https://www.vectorizer.io) is better alternative and has free option, but also has absurd download wait times for free users.
    - There's loophole though: open dev tools (`F12`), inspect the output image and copy the SVG code from there.
  - [Vector Magic](https://vectormagic.com/) is the one of best – if not the best – image tracer, but unfortunately they don't offer any free services.
- **Making vectorized logo from stratch** is also option, if you're skilled and patient enough.

> ⚠ Watch out for SVGs that are using raster graphics ([example](https://github.com/haiwen/seafile-client/blob/7d8f06111960921ce01ef08e169d41bae13959ed/data/icons/scalable/apps/seafile.svg?short_path=d0d75d2#L54)). These are not common, but still exists.

### Templates
When making icons, download and use provided [templates](/_templates).

- For Illustrator, use `ai_template.ait` (for primary icons) or `ai_template_generic.ait` (for generic icons).
  - `.ait` is Illustrator template file format, **don't save over template file!** (Read [save and export](#save-and-export) for more info).
- Other softwares, use `svg_template.svg` (for primary icons) or `svg_template_generic.svg` (for generic icons).

### Layout
- Always use logomark <sup><a href="#ftn1" id="ftn-sec1">[1]</a></sup> if brand is using one.
- If logo only has text, use that instead.
  - **Only if absolutely necessary:** if you think that text is too long, small and hard to read on smaller size, use first letter of text.
- Stay inside of the guides as much as possible.
- Square like shaped logos shouldn't step outside of the guides (size wise).
- For wider logos, furthest left & right side guides are max size limit.
- Technically center doesn't always look center in your eyes. You can manually visual center the logo, if necessary.
- **Compare your creation to other icons, try to keep logo size consistent to other icons.**

### Vectors
- Logo must be in **single** path / compound path / object:

<details>
<summary>In <i>Adobe Illustrator</i></summary>

**If you're using Mac:** in shortcuts, `CTRL` instead means `⌘ Cmd`.

1. Ungroup all the groups related to the logo completely.
   - Select layers in "Layers" window (`F7`) and press `CTRL + Shift + G` multiple times until everything is ungrouped.
     - After this, check if there's layers called "\<title\>" and delete those. ⚠ **Really important,** because exporting SVG with "\<title\>" layer inside of compound path can make some Illustrator versions to crash and makes SVG not function properly.
2. Usually, it's simple as selecting all the logo parts (temporary lock "Background" layer if needed) and make compound path (`Object -> Compound Path -> Make` or `CTRL + 8`).
   - If compound pathing doesn't work, open "Pathfinder" window (`CTRL + Shift + F9`) and press "Unite" (top-left icon in the window under "Shape modes" text).
</details>

<details>
<summary>In <i>Affinity Designer</i></summary>

1. Open "Layers" window, if it's not already open (`View -> Studio -> Layers`).
2. In canvas, use "Move" tool (`V`) and select logo layers by click & drag across the logo (avoid selecting circle).
3. Ungroup multiple times until everything in the logo is ungrouped (Windows: `CTRL + Shift + G` or Mac: `⌘ Cmd + Shift + G`).
4. Unselect everything (click outside of canvas with "Move" tool).
5. Repeat step 2.
   - **Before moving to step 6,** read and do "Affinity Designer designers" part at bottom.
6. Combine logo with `Layer -> Geometry -> Add`.
</details>

<details>
<summary>In <i>Inkscape</i></summary>

1. Open "Objects" window (`Object -> Objects`).
2. Select all the objects related to logo (`Shift + Click` in the "Objects" window).
3. Ungroup the object multiple times until everything is ungrouped (`Object -> Ungroup` or `CTRL + Shift + G`).
4. "Union" the objects to together (`Path -> Union`).
</details>

- 📝 **Affinity Designer designers:** change "fill mode" of the logo vector and its parts from *Winding (Non-Zero)* **into** *Alternative (Even-Odd)* (`Layer -> Fill Mode`). Why? Because it creates CSS rules we don't want for our SVGs and want everything to contain by the path.

### Colors
- Never use white as background color, white is always preserved for logo / fg.
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
  - Examples: [primary Steam icon](https://user-images.githubusercontent.com/3540275/85153557-042e4580-b25f-11ea-85ff-7cb883f977d4.png), [Steam `bg.var` icon](https://user-images.githubusercontent.com/3540275/85153530-fbd60a80-b25e-11ea-9197-d7400eeec74f.png).
  - Use brighter alternative background.
  - If there's no guidelines for alternative colors, check the website or app to see what other colors there might be.

- `fg.var` icons are made when brand color is bright and hard to see for white foreground.
  - Examples: [primary Snapchat icon](https://user-images.githubusercontent.com/3540275/83945146-6162d980-a811-11ea-8910-9e93ff65e804.png), [Snapchat `fg.var` icon](https://user-images.githubusercontent.com/3540275/83945157-6fb0f580-a811-11ea-8fc4-494dcfff53ae.png). 
  - Use black (`#000000`) as foreground color.
  
### Alternative icons
"Alternative" – in this case – means icons for brands that provide alternative logos of their brands.

> Examples: [primary IVPN icon](https://user-images.githubusercontent.com/3540275/85149274-c549c100-b259-11ea-8477-6164b679c673.png), [IVPN `alt` icon](https://user-images.githubusercontent.com/3540275/85149294-ca0e7500-b259-11ea-9655-b867c21ba1b6.png).

Just change the logo for alternative version.

### Generic icons
"Generic" – in this case – means icons that doesn't represent any brand and are using symbol-like vectors.

- Use `ai_template_generic.ait` or `svg_template_generic.svg` template, depending on the software.
- Don't change the background color of the template (`#607D8B`).
- Foreground color is always white (`#FFFFFF`).
- Use either of these icon library, depending on availability or visual looks:
  - [Unicons](https://iconscout.com/unicons/explore/line) (primary)
  - [Feather](https://feathericons.com/) (secondary)
    - [Lucide](https://lucide.dev/) (community fork of Feather)
  - [Cryptocurrency Icons](http://cryptoicons.co/) ([link to SVG directory](https://github.com/spothq/cryptocurrency-icons/tree/master/svg/black), when neither of the icon libraries has icon for cryptocurrency).

### Save and export
- If you're using Adobe Illustrator, save the file as AI **and** SVG.
  - Remember to **rename the artboard** (shortcut: `Shift + O`) before saving.
    - Name artboard based of [filenaming system](#filename) (without extension).
  - If you're using CC version, **export SVG with "Export for Screens"** (`File -> Export -> Export for Screens...`)
- For other softwares:
  - Remember to **remove the guide strokes!**
  - **In Inkscape,** save the SVG as "Plain SVG", not "Inkscape SVG".
  - **In Affinity Designer,** export SVG with "SVG (digital - small size)" preset.
  - **In software that's non-above,** save as "SVG" or "Plain SVG", whichever is the safest bet.
- **Don't make PNG files!** These are now made by maintainers to keep files & compressions consistent.
- Read info about naming at [filename](#filename) section.
- If you're submitting pull request, read also [directories](#directories) section.

### SVG compression
*If you comfortable with command line tools:*
- Install [Node.js](https://nodejs.org/en/download/) and [SVGO](https://github.com/svg/svgo#installation)
- Use this command: `svgo --multipass --pretty --indent 3 -f "input_folder/path_here" -o "output_folder/path_here"`
  - Or if you're in Windows, we have [batch file](https://github.com/aegis-icons/aegis-icons/blob/master/_compress/.0_svgo_prettify-svg.bat) for this.

*If you don't know how to use command line:*
- Use [SVGOMG](https://jakearchibald.github.io/svgomg/)
  - Just tick "[Prettify markup](https://user-images.githubusercontent.com/3540275/119977202-c97d7300-bfc0-11eb-8a67-00ec5b578134.png)" before downloading the compressed SVG.
  - **Don't make other changes to settings.**

📝 *Those who made the vector with Affinity Designer:*

- After the compression, open SVG to plain text editor and from the top, remove everything *from that line* after `xmlns="http://www.w3.org/2000/svg"` **EXCEPT** `>` character ([example](https://github.com/aegis-icons/aegis-icons/blob/a7dd1cdd3c051ef1b7c2e274539185294060df6a/SVG/1984%20Hosting.svg?short_path=db53e9b#L1)).

### Submit to repository
Submit your icon for review by [opening a new issue](../../issues/new/choose) (select "Icon submission") and attaching your file(s) and source(s). Alternately, you are encouraged to refer to [this GitHub guide](https://guides.github.com/activities/contributing-to-open-source) to fork the aegis-icons project, add the changed files to your fork, then create a pull request with your submissions. (Don't add AI files in the pull requests. Instead, zip it and upload it in the PR comment section.)

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
- Variation (`bg.var` or `fg.var`) and alternative (`alt`) icons are added to `PNG/Variations/` and `SVG/.Variations/` folder.
- Generic icons are added to `PNG/Generic/` and `SVG/.Generic/` folder.
- For outdated icons, see [version naming and organizing old files](#version-naming-and-organizing-old-files) section.

### Filename
  - Primary icon: `[Company or Product Name].[extension]`
    - *Examples:* `itch.io.svg`
  - Icon variations with alternate logo: `[Primary icon name] alt.[extension]`
    - *Examples:* `AppFolio alt.svg`
  - Icon variations with black foreground or different background color:
    - `[Primary icon name] bg.var.[extension]`
    - `[Primary icon name] fg.var.[extension]`
    - *Examples:* `Snapchat fg.var.svg`, `Squarespace bg.var.svg`
  - Icon variations with black foreground **and** different background color: `[Primary icon name] fg.bg.var.[extension]`
    - *Example:* `Lichess fg.bg.var.svg`
  - Alt. icons with black foreground or different background color:
    - `[Primary icon name] alt bg.var.[extension]`
    - `[Primary icon name] alt fg.var.[extension]`
    - *Example:* `Discourse alt bg.var.svg`
  - Generic icon: name as what the icon symbolizes with big capital letter.
    - *Example:* `Cloud.svg`
    
#### Version naming and organizing old files
- New versions of icons are only made when it's major change (new logo or brand color).
- Icon files that are outdated for the first time, `v1` is added to end of the filename.
  - Examples: `Yahoo v1.svg`, `Dashlane v1.png`.
- Newer files also gets version label here from out.
  - Examples: `Yahoo v2.svg`, `Dashlane v2.png`.
- Version label number increases when new versions are released (`v3`, `v4`, `v5`, `v6` etc.).
- Label number is also added / updated on the Illustrator file's artboard (shortcut: `Shift + O`).
- Outdated versions are moved to self titled directory (`PNG/Outdated/`, `SVG/.Outdated/`).
- Icons which are based of now dead service, should be moved to "Outdated" directory just as it is.

## Resources
Resources marked with star (⭐) are recommended / most used by the maintainers.

### Logos
These are good resources for finding logos in vector format, when no official brand kit / vector logos are available.

**Remember to always check if logo provided by these resources is latest one company uses!**

- [Brandfetch](https://brandfetch.com/) ⭐ (search engine for company branding resources)
- [jaywcjlove / logo](https://github.com/jaywcjlove/logo/tree/master/img) (good for finding logos of Chinese apps & sites)
- [lexrus / fontdiao](https://github.com/lexrus/fontdiao/tree/master/svg) (good for finding logos of Chinese apps & sites)
- [LogoSear.ch](https://logosear.ch/) ⭐
- [Seeklogo](https://seeklogo.com/)
- [Simple Icons](https://simpleicons.org/) ⭐
- [Worldvectorlogo](https://worldvectorlogo.com/)
- [Wikimedia Commons](https://commons.wikimedia.org/wiki/Main_Page)
- Wikipedia pages of the brand

More resources at [LogoSear.ch's "Alternative Logo Sources"](https://logosear.ch/alternatives/) list.

*Google searching tips:* 
- `site:www.officalsiteforappslashsite.com filetype:pdf` (you can rip vectors from PDF, really often logos in these PDFs are vector).
- `[app / site name] svg`.

### Lists of sites supporting 2FA
Need ideas for icons? These list apps / websites that support 2FA (and what kind of format too).

- [andOTP's thumbnail directory](https://github.com/andOTP/andOTP/tree/master/app/src/main/res/drawable) ⭐ (look for the filenames starting with `thumb_`)
- [Authy - Guides](https://authy.com/guides/) ⭐
- [Two-factor authentication list](https://evanhahn.com/2fa/)
- [Two Factor Auth List](https://2fa.directory/) ⭐

### Software
Looking for software to start make icons? Here's some of the well known ones.

- [Adobe Illustrator](https://www.adobe.com/products/illustrator.html) ⭐ (industry standard, most used software in this repository)
- [Affinity Designer](https://affinity.serif.com/designer/) (way cheaper but powerful alternative to Illustrator)
- [Inkscape](https://inkscape.org/) (popular open source option)

## Maintainer's Guide
*This is for admins of the repo. If you're regular contributor, you can ignore this section.*

[This section needs update]

## Issue guidelines
1. App / site icon related requests has to have Aegis supported 2FA support one way or another, this project does not make icons outside of Aegis usage.
2. Check that icon you're about to request doesn't [already exist](https://aegis-icons.github.io/) or requested in the [issues](https://github.com/krisu5/aegis-icons/issues).
3. Read the issue template and fill **at least** required parts.
4. If you have question or miscellaneous suggestion, check [FAQ](FAQ.md) first.
5. Aegis-icons can reject any icon request for any reason, but most of the requests gets filled. Usually we do provide explanation and possibly alternative option if we reject the request.
   - Possible reasons for rejections (among others) are *too complex logo to make as monochrome or viewable in small size* ([example](https://github.com/krisu5/aegis-icons/issues/92)) and *site / app not offering Aegis supported 2FA in the first place.*
   - *Hate speech site related requests* (such as Gab, Parler, Voat etc.) will be rejected without explanation, **no exceptions.**
6. For forums we have decided to make icons based of forum software they use, because those are more universally usable for icons then specific communities. *This is judged case by case.*
   - Finding out the forum software, we are using tools such as [What CMS](https://whatcms.org) and [W3Techs Site Info](https://w3techs.com/sites).

<b>After reading and accepting guidelines, <a href="../../issues/new/choose">you can make new issue</a>.</b>

## Footnotes
<sup><a href="#ftn-sec1" id="ftn1">[1]</a></sup> Article: [Logo, Logomark, Logotype - What's The Difference And What Do You Need?](https://blog.designcrowd.com/article/997/logo-logomark-logotype-whats-the-difference-and-what-do-you-need) <sup>[[wayback machine]](https://web.archive.org/web/20200606123728/https://blog.designcrowd.com/article/997/logo-logomark-logotype-whats-the-difference-and-what-do-you-need)</sup>

<sup><a href="#ftn-sec2" id="ftn2">[2]</a></sup> This color is taken from [Material Design 2014 color system](https://material.io/design/color/the-color-system.html#tools-for-picking-colors) <sup>[[archive.is w/ linked section]](https://archive.is/96QQG#77%)</sup> (Blue Grey, 500).