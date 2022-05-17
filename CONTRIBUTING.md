# Contributing
Thank you for taking the time to read and contribute to our project!

*This documentation is long and comprehensive, because we strive for high quality for our icons and want to minimize extra work as much possible.*

:warning: **For contributing, you must know basics of making / editing vectors with vector graphics editor** (there's instrutions for some steps, but not for absolute basics).

It's **highly recommended** to also have some knowledge of graphic design and design in general.

---

**Table of contents**
- [**Icon acceptability criteria**](#icon-acceptability-criteria)
  - [Approved](#approved)
  - [Case-by-case basis](#case-by-case-basis)
  - [Not approved](#not-approved)
- [**Icon creation walkthrough**](#icon-creation-walkthrough)
  - [Finding source images](#finding-source-images)
  - [Templates](#templates)
  - [Layout](#layout)
  - [Vectors](#vectors)
  - [Colors](#colors)
  - [bg.var, fg.var & fg.bg.var icons](#bgvar-fgvar--fgbgvar-icons)
  - [Alternative icons](#alternative-icons)
  - [Generic icons](#generic-icons)
  - [Save and export](#save-and-export)
  - [SVG compression & cleanup](#svg-compression--cleanup)
  - [Submit to repository](#submit-to-repository)
- [**Technical**](#technical)
  - [Directories](#directories)
  - [Filename](#filename)
    - [Version naming and organizing old files](#version-naming-and-organizing-old-files)
  - [About PNGs](#about-pngs)
- [**Resources**](#resources)
  - [Logos](#logos)
    - [Google searching tips](#google-searching-tips)
  - [Lists of sites supporting 2FA](#lists-of-sites-supporting-2fa)
    - [Google search query for double-checking 2FA support](#google-search-query-for-double-checking-2fa-support)
  - [Software](#software)
- [**Maintainer's guide**](#maintainers-guide)
- [**Issue guidelines**](#issue-guidelines)
- [**Footnotes**](#footnotes)

---

## Icon acceptability criteria
Before making or requesting an icon for app / site, please check if it fits our "acceptability criteria".

### Approved
:heavy_check_mark: *Almost* always accepted to request or submit.

- Apps / sites that are popular and has Aegis supported 2FA support **(specially wanted).**
  - *Examples (not limited to):* social media, productivity tools, cloud services, development tools, gaming related etc.
- Almost any app / site / service, **that doesn't have the exceptions from below.**
  - Still in spite of this, aegis-icons has right to reject requests or submissions if needed or necessary.

### Case-by-case basis
:grey_question: Needs some examining before accepting or rejecting. Request or submit and we will tell if it's accepted or not.

- Forums, message groups.
  - We rather make icons based of the forum softwares, because those are more universally usable for users then specific communities.
    - Detected with tools like [What CMS](https://whatcms.org) and [W3Techs Site Info](https://w3techs.com/sites).
  - *Exception:* **really** popular forums can get their own icons (at least over 250,000 total members and high posting activity).
- Platforms that icon requester / submitter is the creator or owner of the platform itself.
  - We don't do free work or want self-advertising here.
  - *Exception:* if platform is actually popular and has potential users for Aegis.
- Self-hosted or similar software.
  - Suggested to have ≥ 500 Github / Gitlab stars or other non-maintainer activity to back it up.
  - If things previously mentioned aren't available, then we measure popularity based of search results.
- Adult content platforms / services, piracy related apps / sites.
  - Mostly okay here, **but** it cannot break **any** of the "not approved" bullet points.
- App / site being too vague.
  - *Examples (not limited to):* site only has login page and nothing else, search results don't answer what that app / site is either.
  - It's not enough that you tell what the app / site does, we need at least **some** evidence from the web. Otherwise it counts as *"suspiciously shady"*.
- Ad networks
  - Most of them belongs to *"suspiciously shady"* category, because often these services violate privacy on other users expense and trick users for unwanted things.
  - *Exception:* ad networks with ethical standpoints (minimal or no user tracking / data collecting, no dark patterns, high advertiser monitoring etc).

# Not approved
:x: These are never accepted to aegis-icons, **no exceptions!**

- Apps / sites **not** having Aegis supported 2FA support.
  - Also when service has discontinued 3rd party 2FA support (only supporting legacy users).
- Platforms having massive hate speech group following and poor moderation.
  - *Examples (not limited to):* [most of the platforms listed here](https://en.wikipedia.org/wiki/Alt-tech#Platforms).
- Obvious scams or other suspiciously shady apps / sites.
- Apps / sites focusing on **highly** immoral and illegal activity / material.
  - *Examples (not limited to):* black hat hacking, money laundering, malware, malvertising, illegal sexual material / services, harassment / cyberbullying etc.

## Icon creation walkthrough

### Finding source images
Search through the logo resources to find a vector-based image (SVG, AI, EPS, PDF).

:warning: Never use JPG / PNG / GIF / WebP or other raster images **(as is)!**

*Here are things you can check, go these options in order:*

- **Press kit on the company website**
  - Eg. Zenkit has ["Press Kit" page](https://zenkit.com/en/press-kit/), that has ZIPs containing vector-based logos.
  - Look for pages like: *Brand(ing), Press, Media, Logos, Assets, Marketing, About* etc.
    - Trying googling too: `logo site:offical-site-for-app-or-site.com`
- **Embedded logo(s) on company website**
  - Easiest way for finding / downloading SVGs from web pages is using [SVG Gobbler](https://www.svggobbler.com/) browser extension (Chrome & Firefox, [open source](https://github.com/rossmoody/svg-gobbler)).
    - Alternatives: [SVG Export](https://svgexport.io/) (Chrome & Firefox), [svg-grabber](https://chrome.google.com/webstore/detail/svg-grabber-get-all-the-s/ndakggdliegnegeclmfgodmgemdokdmg) (Chrome only, abandonware).
  - **Ways without extension:**
    1. Try right-clicking logo image and selecting <kbd><i>Save image as...</i></kbd>, and see if the save dialogue appears with SVG (not as JPG, PNG, GIF, WebP or [any other raster graphic format](https://en.wikipedia.org/wiki/Image_file_formats#Raster_formats)).
       - If right-clicking the image does not have an option for <kbd><i>Save image as...</i></kbd>, try using <kbd><i>Inspect</i></kbd> at the bottom of the right-click menu. This opens the developer tools which can reveal hidden URLs.
          - Eg. at [Codeberg](https://codeberg.org/), inspecting the logo in the left side of the navigation or logo at center reveals the location of SVG. Right-click and "open in new tab" to see the SVG file.
          - Sometimes SVG is embedded as inline. Means that instead of linking to external file, whole SVG file code is added to the HTML site code (see [SVG code example](https://gist.github.com/krisu5/677a8a3478331498929a11b900741aa2)). In that case, copy the SVG code completely from HTML (website embedded SVG starts with `<svg` & so forth and ends with `</svg>`), open your refer text editor and save copypasted text as `filename.svg`. You can test if the file works by opening in it into web browser (drag-and-drop SVG to tab bar or *shortcut:* <kbd>Ctrl [⌘ Cmd]</kbd>+<kbd>O</kbd>).
    2. Right-click the website and select <kbd><i>View page source</i></kbd>, then press <kbd>Ctrl [⌘ Cmd]</kbd>+<kbd>F</kbd> to open the search tool and type `SVG` to look for possible SVG vector files. Web inspector is also useful and better tool for some users / use cases (press <kbd>F12</kbd> on the website, go to "Inspector" / "Elements" tab, then press <kbd>Ctrl [⌘ Cmd]</kbd>+<kbd>F</kbd> to search).
       - Eg. [You Need A Budget](https://www.youneedabudget.com) reveals the hidden SVG resource in HTML metadata section (`https://www-assets.youneedabudget.com/wp-content/themes/dupatta/dist/images/safari-pinned-tab_[alphanumerical-string].svg`) which can be copy-paste into the browser and save (<kbd>Ctrl [⌘ Cmd]</kbd>+<kbd>S</kbd>).
- If everything has failed so far, then **check [logo resources](#logos) section.**
  - Remember though, logo has to be latest one that company uses.
- As last resort, you can **try [image tracing](https://en.wikipedia.org/wiki/Image_tracing) with raster images** (JPG, PNG etc). Rule of thumb with image tracing is using image that's high resolution, not many colors and doesn't have any [artifacts](https://simple.wikipedia.org/wiki/Compression_artifact) (if image does have artifacts, you can try [Pix Fix](https://pixfix.com/) tool to remove them).
  - [Vectorizer.io](https://anonym.to/?https://www.vectorizer.io) is great image tracer, but vectors aren't freely downloadable anymore. Generating vectors without account / freely is still possible.
    - There's loophole to downloads though: use [SVG Gobbler](https://www.svggobbler.com/) after vector was generated.
      - Alternatively: Inspect the output image (<kbd>Ctrl [⌘ Cmd]</kbd>+<kbd>Shift</kbd>+<kbd>C</kbd>) and copy the SVG code from dev tools.
  - [Vector Magic](https://vectormagic.com/) is the one of best – if not the best – image tracer.
    - Also commercial, but does offer free trials for [desktop application](https://vectormagic.com/desktop).
  - Illustrator & Inkscape has image tracing tools, but we really don't recommend them. Usually results varies from really bad to somewhat decent.
- **Making vectorized logo from stratch** is also option, if you're skilled and patient enough.

> :information_source: SVG doesn't work? Try fixing it with [SVGminify.com](https://www.svgminify.com/).

> :warning: Watch out for SVGs that are using raster graphics ([example](https://github.com/haiwen/seafile-client/blob/7d8f06111960921ce01ef08e169d41bae13959ed/data/icons/scalable/apps/seafile.svg?short_path=d0d75d2#L54-L218)). These are not common, but does exist.

### Templates
When making icons, download and use provided [templates](/_templates).

- For Illustrator, use `ai_template.ait` (for primary icons) or `ai_template_generic.ait` (for generic icons).
  - `.ait` is Illustrator template file format, **don't save over template file!** (Read [save and export](#save-and-export) for more info).
- Other softwares, use `svg_template.svg` (for primary icons) or `svg_template_generic.svg` (for generic icons).

### Layout
- Always use logomark[^1] if brand is using one.
- If logo only has text (known as logotype[^1]), use that instead.
  - **Only if absolutely necessary:** if you think that logotype is too long and hard to see on smaller size, make it similar to [favicon](https://en.wikipedia.org/wiki/Favicon) / app icon or use first letter of logotype.
- Stay inside of the guides as much as possible.
- Square like shaped logos shouldn't step outside of the guides (size wise).
- For wider logos, furthest left & right side guides are max size limit.
- Guides don't necessarily mean that logo's size should be exactly like from *guide a* to *guide b*, it's more often a safe area for logo or suggestion for logo's size.
  - *Examples:* [one](https://raw.githubusercontent.com/aegis-icons/misc/main/screenshots/contributing_003.png), [two](https://raw.githubusercontent.com/aegis-icons/misc/main/screenshots/contributing_004.png), [three](https://raw.githubusercontent.com/aegis-icons/misc/main/screenshots/contributing_005.png), [four](https://raw.githubusercontent.com/aegis-icons/misc/main/screenshots/contributing_006.png).
- **Technically center doesn't always look center in your eyes.** You can visually center the logo, if necessary.
  - This can be a hard concept to understand, so here's few articles / resources:
    - ["The PLAY button is not optical alignment" by Xue Gu](https://medium.com/@erqiudao/the-play-button-is-not-optical-alignment-4cea11bda175) <sup>[[wayback machine](https://web.archive.org/web/20220505201053/https://medium.com/@erqiudao/the-play-button-is-not-optical-alignment-4cea11bda175)]</sup>
    - ["‘Eyeballing’ or Optical Alignment in Design" by Sergey Vlastiuk](https://medium.com/ringcentral-ux/eyeballing-or-optical-alignment-in-design-4ef5ab2d326f) <sup>[[archive.today](https://archive.ph/6JHdU)]</sup>
    - ["Optical Adjustment – Logic vs. Designers" by Luke Jones](https://marvelapp.com/blog/optical-adjustment-logic-vs-designers/) <sup>[[archive.today](https://archive.ph/9gd7h)]</sup>
    - [Visual Center](https://javier.xyz/visual-center/) tool (not always accurate results to human eye).
- **Compare your creation to other icons**, try to keep logo size visually consistent to other icons.

### Vectors
- Logo must be in **single** path / compound path / object:

<details>
<summary>In <i>Adobe Illustrator</i> (click to reveal)</summary>

1. Open **Layers** window, if it's not already open (*shortcut:* <kbd>F7</kbd> or *menu:* <kbd><i>Window</i> ➜ <i>Layers</i></kbd>)
2. Ungroup all the layer groups related to the logo completely.
   - "Target select" the layer group in **Layers** window by clicking "circle" (○) on the right (<kbd>Shift</kbd>+<kbd>Click</kbd> to select multiple groups).
   - Press <kbd>Ctrl [⌘ Cmd]</kbd>+<kbd>Shift</kbd>+<kbd>G</kbd> multiple times until everything is ungrouped.
3. Keep all the logo parts "target selected" and make compound path (*menu:* <kbd><i>Object</i> ➜ <i>Compound Path</i> ➜ <i>Make</i></kbd> or *shortcut:* <kbd>Ctrl [⌘ Cmd]</kbd>+<kbd>8</kbd>).
   - If compound pathing doesn't work, open **Pathfinder** window (*menu:* <kbd><i>Window</i> ➜ <i>Pathfinder</i></kbd> or *shortcut:* <kbd>Ctrl [⌘ Cmd]</kbd>+<kbd>Shift</kbd>+<kbd>F9</kbd>) and press "Unite" (top-left icon in the window under "Shape modes" text).
</details>

<details>
<summary>In <i>Affinity Designer</i> (click to reveal)</summary>

1. Open **Layers** window, if it's not already open (*menu:* <kbd><i>View</i> ➜ <i>Studio</i> ➜ <i>Layers</i></kbd>).
2. In canvas, use "Move" tool (<kbd>V</kbd>) and select logo layers by click & drag across the logo (avoid selecting circle).
3. Ungroup multiple times until everything in the logo is ungrouped (<kbd>Ctrl [⌘ Cmd]</kbd>+<kbd>Shift</kbd>+<kbd>G</kbd>).
4. Unselect everything (click outside of canvas with "Move" tool).
5. Repeat step 2.
   - :information_source: **Before moving to step 6,** read and do "Note for Affinity Designer users" part downwards.
6. Combine logo (*menu:* <kbd><i>Layer</i> ➜ <i>Geometry</i> ➜ <i>Add</i></kbd>).
</details>

<details>
<summary>In <i>Inkscape</i> (click to reveal)</summary>

1. Open **Objects** window (*menu:* <kbd><i>Object</i> ➜ <i>Objects</i></kbd>).
2. Select all the objects related to logo (<kbd>Shift</kbd>+<kbd>Click</kbd> in the **Objects** window).
3. Ungroup the object multiple times until everything is ungrouped (*menu:* <kbd><i>Object</i> ➜ <i>Ungroup</i></kbd> or *shortcut:* <kbd>Ctrl [⌘ Cmd]</kbd>+<kbd>Shift</kbd>+<kbd>G</kbd>).
4. "Union" the objects to together (*menu:* <kbd><i>Path</i> ➜ <i>Union</i></kbd>).
</details>

- :memo: **Note for Affinity Designer users:** change "fill mode" of the logo vector and its parts from *"Winding (Non-Zero)"* **into** *"Alternative (Even-Odd)"* (*menu:* <kbd><i>Layer</i> ➜ <i>Fill Mode</i></kbd>). Why? Because it creates CSS rules we don't want for our SVGs and want everything to contain by the path.

### Colors
- **Never use white as background** (abbreviation: *BG*), white is always preserved for logo (a.k.a. *foreground*, short for *FG*).
- Don't pick random colors, unless there's absolutely no other options.
- Don't use gradients, use solid colors.
- Keep everything at 100% opacity, no blending etc.
- **Logo / FG should always use white** (`#FFFFFF`).
  - *Exceptions:* `fg.var` & `fg.bg.var` icons.
- If you find brand guideline that has documented brand colors ([example](https://brave.com/brave-branding-assets/) <sup>[[wayback machine](https://web.archive.org/web/20200606124434/https://brave.com/brave-branding-assets/)]</sup>), then go with that. For background color, use primary brand color that has specifically said on the guideline or based on what color is used most.
- If there's no guidelines and logo only has one color, use logo color as icon background.
  - For multi-color logos, pick the best looking or most used color. 
    - **Tip:** In Illustrator, if logo is using gradient, use [this method](http://miraimages.com/illustrator-gradient-colors-to-swatches/) <sup>[[wayback machine](https://web.archive.org/web/20200606124113/http://miraimages.com/illustrator-gradient-colors-to-swatches/)]</sup> to extract all the colors in the gradient to the swatches.
- **If icon you're making is using dark background, you have to make** `bg.var` **icon version as well.**
  - Or opposite, **if background is too bright for white logo, then make** `fg.var` **icon version.**
  - Check with ["BG colors to avoid" SVG](https://github.com/aegis-icons/aegis-icons/blob/master/_templates/z_bg-colors_to_avoid.svg) if `bg.var` version is needed.
- For generic icons, use background color `#607D8B` and white foreground.
  - Templates `ai_template_generic.ait` & `svg_template_generic.svg` already has correct background color set.
  
### bg.var, fg.var & fg.bg.var icons
> `var` is abbreviation of *variation*.

- `bg.var` icons are for dark / AMOLED themes. These are made when **primary icon has dark background that blends in when using the darker theme.**
  - **Examples:** [primary Steam icon](https://user-images.githubusercontent.com/3540275/85153557-042e4580-b25f-11ea-85ff-7cb883f977d4.png), [Steam `bg.var` icon](https://user-images.githubusercontent.com/3540275/85153530-fbd60a80-b25e-11ea-9197-d7400eeec74f.png).
  - *Use brighter alternative background.*
  - If there's no brand guidelines for alternative colors, check the website or app to see what other colors there might be.
  - Check with ["BG colors to avoid" SVG](https://github.com/aegis-icons/aegis-icons/blob/master/_templates/z_bg-colors_to_avoid.svg) if `bg.var` version is needed.

- `fg.var` icons are made when **primary icon's BG color is too bright and hard to see with white logo.**
  - **Examples:** [primary Snapchat icon](https://user-images.githubusercontent.com/3540275/83945146-6162d980-a811-11ea-8910-9e93ff65e804.png), [Snapchat `fg.var` icon](https://user-images.githubusercontent.com/3540275/151216951-ed34ea5e-d443-4e72-864e-56595e9a32c5.png). 
  - *Use black* (`#000000`) *as foreground color.* 
  
- `fg.bg.var` is combination of both variations, for edge cases **when** `bg.var` **BG color is too bright and makes white logo hard to see.**
  - :warning: **Only make these if absolutely necessary!** Find better BG color for `bg.var` if possible to avoid making these.
    - Check with ["BG colors to avoid" SVG](https://github.com/aegis-icons/aegis-icons/blob/master/_templates/z_bg-colors_to_avoid.svg) if `fg.bg.var` version is needed.
  - **Examples:** [Lichess `bg.var` icon](https://user-images.githubusercontent.com/3540275/151090580-9b4a3bf2-7221-493c-b71c-597f52a0666b.png), [Lichess `fg.bg.var` icon](https://user-images.githubusercontent.com/3540275/151090581-0898b5e6-7df7-47e7-978e-3466a21a52b0.png)
  - *Use black* (`#000000`) *as foreground color for* `bg.var` *version.*
  
### Alternative icons
"Alternative" – in this case – means icons for brands that provide alternative logos of their brands.

- **Examples:** [primary IVPN icon](https://user-images.githubusercontent.com/3540275/85149274-c549c100-b259-11ea-8477-6164b679c673.png), [IVPN `alt` icon](https://user-images.githubusercontent.com/3540275/85149294-ca0e7500-b259-11ea-9655-b867c21ba1b6.png).

Just change the logo for alternative version.

### Generic icons
"Generic" – in this case – means icons that doesn't represent any brand and are using symbol-like vectors.

- Use `ai_template_generic.ait` or `svg_template_generic.svg` template, depending on the software.
- Don't change the background color of the template (`#607D8B`[^2]).
- Foreground color is always white (`#FFFFFF`).
- Use either of these icon library, depending on availability or visual looks:
  - [Unicons](https://iconscout.com/unicons/explore/line) (primary)
  - [Feather](https://feathericons.com/) (secondary)
    - [Lucide](https://lucide.dev/) (community fork of Feather)
  - [Cryptocurrency Icons](http://cryptoicons.co/) ([link to SVG directory](https://github.com/spothq/cryptocurrency-icons/tree/master/svg/black), when neither of the icon libraries has icon for cryptocurrency).

### Save and export
- :information_source: Read the info about naming at the [filename](#filename) section.
- If you're using **Adobe Illustrator CC 2017 or newer**, save the file as SVG with *"Export for Screens"* option (*shortcut:* <kbd>Ctrl [⌘ Cmd]</kbd>+<kbd>Alt [⌥ Option]</kbd>+<kbd>E</kbd> or *menu:* <kbd><i>File</i> ➜ <i>Export</i> ➜ <i>Export for Screens...</i></kbd>) with [these settings](https://raw.githubusercontent.com/aegis-icons/misc/main/screenshots/contributing_007.png).
  - **For older Illustrator versions,** [check the other methods mentioned here](https://css-tricks.com/illustrator-to-svg/) <sup>[[wayback machine](https://web.archive.org/web/20220425015517/https://css-tricks.com/illustrator-to-svg/)]</sup>
  - We also recommend saving it (temporarily) to `ai` file format for making edit requests faster and easier to do.
- For other softwares:
  - Before saving final version, remember to **remove the guide strokes!**
  - **In Affinity Designer,** export file with *"SVG (digital - small size)"* preset.
    - We also recommend saving it (temporarily) to `afdesign` file format for making edit requests faster and easier to do.
  - **In Inkscape,** save the file as *"Optimized SVG".* (:warning: Hugely important!)
    - [In the prompt window, use these settings!](https://raw.githubusercontent.com/aegis-icons/misc/main/screenshots/contributing_002.png) (:warning: Equally important!)
  - **In software that's non-above,** save as *"SVG"* or *"Plain SVG",* whichever is the safest available option.
- :x: Don't make PNG files! PNG files are legacy content ([with some exceptions](#about-pngs)).
- If you're submitting pull request, read also the [directories](#directories) section.

Next, do SVG compression & cleanup.

### SVG compression & cleanup
*If you're comfortable with command line tools:*
- Install [Node.js](https://nodejs.org/en/download/) and [SVGO](https://github.com/svg/svgo#installation)
- Use this command:
  ```console
  svgo --multipass --pretty --indent 3 -f "input/folder/path/here" -o "output/folder/path/here"
  ```
  (Or if you're in Windows, we have [batch file](https://github.com/aegis-icons/aegis-icons/blob/master/_compress/.1_svgo_prettify-svg.bat) for this).

*If you don't know how to use command line:*
- Use [SVGOMG](https://jakearchibald.github.io/svgomg/)
  - Just tick "[Prettify markup](https://raw.githubusercontent.com/aegis-icons/misc/main/screenshots/contributing_001.png)" before downloading the compressed SVG.
  - **Don't make other changes to settings.**

:warning: After SVGO or SVGOMG step, check / **manually edit** with text / code editor (Notepad, TextEdit, Vim etc.) that **SVG is correctly formatted for submission:**

```xml
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1024 1024">
   <circle cx="512" cy="512" r="512" style="fill:#BG-HEX-COLOR"/>
   <path d="PRETTY-LONG-LOGO-PATH" style="fill:#LOGO-HEX-COLOR"/>
</svg>
```
<sup>🡱&nbsp;&nbsp;&nbsp; SVG code formatting example</sup>

- :warning: Checklist for SVG formatting:
  - Check that the **indentation is 3 spaces** (important if you used SVGOMG).
  - Check that the **order of the all the [elements](https://developer.mozilla.org/en-US/docs/Web/SVG/Element) and [attributes](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute) is EXACTLY same** as the *SVG code formatting example*.
  - Check that possible `fill="` **prefixes are changed to** `style="fill:`
  - **Remove all the [elements](https://developer.mozilla.org/en-US/docs/Web/SVG/Element) and [attributes](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute) that aren't featured** in the *SVG code formatting example*.

:mag: **Test the SVG on web browser** that it still works after edits! (drag-and-drop SVG to tab bar or *shortcut:* <kbd>Ctrl [⌘ Cmd]</kbd>+<kbd>O</kbd>).

> :broom: *[Example SVG diff of manual cleanup with notes](https://github.com/aegis-icons/misc/commit/c0128f61f0d2b88d5953881699955a4a17477e47?diff=split).*

### Submit to repository
- Submit your icon for review by [opening a new issue](../../issues/new/choose) (select "Icon submission") and add your file(s) / info.
- Alternately, you can fork this project (only recommended for those who know how to use git).

## Technical

### Directories
- Non-variation primary icons are added to root of `SVG/` folder.
- Variation (`bg.var` or `fg.var`) and alternative (`alt`) icons are added to `SVG/.Variations/` folder.
- Generic icons are added to `SVG/.Generic/` folder.
- For outdated icons, see [version naming and organizing old files](#version-naming-and-organizing-old-files) section.

### Filename
:warning: When naming brand based icon(s), check how brand capitalised and spell the name from their app / website.

:information_source: **Filename character limitations:** only use [ISO basic Latin alphabet letters](https://en.wikipedia.org/wiki/ISO_basic_Latin_alphabet), numbers, spaces and safe ASCII characters ([list of forbidden characters](https://stackoverflow.com/a/31976060)).

  - Primary icon:
    - `[Company / product / app / site name].<ext>`
    - *Examples:* `Adobe.svg`, `Best Buy.svg`, `FACEIT.svg`, `itch.io.svg`
  - Icon variations with alternate logo:
    - `[Primary icon name] alt.<ext>`
    - *Example:* `IVPN alt.svg`
  - Icon variations with black foreground or different background color:
    - `[Primary icon name] bg.var.<ext>`
    - `[Primary icon name] fg.var.<ext>`
    - *Examples:* `Squarespace bg.var.svg`, `Snapchat fg.var.svg`
  - Icon variations with black foreground **and** different background color:
    - `[Primary icon name] fg.bg.var.<ext>`
    - *Example:* `Lichess fg.bg.var.svg`
  - Alt. icons with black foreground **or/and** different background color:
    - `[Primary icon name] alt bg.var.<ext>`
    - `[Primary icon name] alt fg.var.<ext>`
    - `[Primary icon name] alt fg.bg.var.<ext>`
    - *Example:* `Discourse alt bg.var.svg`
  - Generic icon: 
    - *Name as what the icon symbolizes with big capital letter.*
    - *Example:* `Cloud.svg`
    
#### _Version naming and organizing old files_
- New versions of icons are only made when it's major change (new logo or brand color).
  - Logos with only **barely noticable** brand related changes with same brand color ([example by T-Mobile](https://user-images.githubusercontent.com/3540275/160298574-c28cfe2a-3393-44b0-9fd1-63a4e6ade214.png)), doesn't need new icon version.
- Icon files that are outdated for the first time, `v1` is added to end of the filename.
  - Examples: `Codeberg v1.svg`.
- Version label number increases for outdated icons when new versions of the primary icon are released (`v2`, `v3`, `v4`, `v5` etc.).
- Outdated versions are moved to self titled directory (`SVG/.Outdated/`).
- Icons of now dead service (or didn't have 2FA etc.) should be moved to [*aegis-icons / misc*'s "removed_icons"](https://github.com/aegis-icons/misc/tree/main/removed_icons) directory just as it is.
  - Also add info to the directory's README on why icon was removed.

### About PNGs
As of 2021-07-25, aegis-icons doesn't actively make PNG icons anymore. Instead PNGs are only made when someone notices rendering problems with SVG on Aegis.

PNGs are only made by maintainers to keep files & compressions consistent. [List of SVG icons with known rendering issues are available here](https://github.com/aegis-icons/aegis-icons/blob/master/PNG/README.md).

## Resources
Resources marked with star (:star:) are recommended / most used by the maintainers.

### Logos
Resources for finding logos in vector format, when no official brand kit / vector logos are available.

**Remember to always double check if logo provided by these resources is the latest one company uses!**

- [Brandfetch](https://brandfetch.com/) (not always accurate results)
- [LogoSearch](https://logosear.ch/) :star:
- [Seeklogo](https://seeklogo.com/)
- [Simple Icons](https://simpleicons.org/) :star:
- [Worldvectorlogo](https://worldvectorlogo.com/)
- [Wikimedia Commons](https://commons.wikimedia.org/wiki/Main_Page)
- Wikipedia pages of the brand :star:

More resources at [LogoSearch's "Alternative Logo Sources"](https://logosear.ch/alternatives/) list.

#### _Google searching tips_
- `logo site:offical-site-for-app-or-site.com`
- `filetype:pdf site:offical-site-for-app-or-site.com` (you can rip vectors from PDF, really often logos in these PDFs are vector).
- `"app-or-site-name-here" svg` or `"app-or-site-name-here" vector`.

### Lists of sites supporting 2FA
Need ideas for icons? These list apps / websites that support 2FA (and what kind of format too).

- [2FA Directory](https://2fa.directory/) (*[Github commits](https://github.com/2factorauth/twofactorauth/commits/master)*) :star:
- [Authy - Guides](https://authy.com/guides/) :star:

#### _Google search query for double-checking 2FA support_
```
"app-or-site-name-here" AND 2fa OR mfa OR factor authentication OR step verification
```

### Software
Looking for software to start make icons? Here's some of the well known ones.

- [Adobe Illustrator](https://www.adobe.com/products/illustrator.html) :star: (industry standard, most used software in this repository)
- [Affinity Designer](https://affinity.serif.com/designer/) :star: (way cheaper but powerful alternative to Illustrator)
- [Inkscape](https://inkscape.org/) (popular open source option)

## Maintainer's Guide
*This is for admins of the repo. If you're regular contributor, you can ignore this section.*

[This section needs update]

## Issue guidelines
1. App / site icon related requests has to have Aegis supported 2FA support one way or another, this project does not make icons outside of Aegis usage.
2. **Check that icon you're about to request doesn't [already exist](https://aegis-icons.github.io/)** or opened / closed in the [issues](https://github.com/aegis-icons/aegis-icons/issues).
   - Icon packs are updated monthly, not every time a new icon is created ([see the pack releases](https://github.com/aegis-icons/aegis-icons/releases)). Icons created after the latest pack update are downloadable on [the website](https://aegis-icons.github.io/).
3. Read the issue template and fill **at least** required parts.
4. If you have question or miscellaneous suggestion, check [FAQ](FAQ.md) first.
5. Aegis-icons can reject any icon request for any reason, but most of the requests gets filled. Usually we do provide explanation and possibly alternative option if we reject the request.
   - **Possible reasons for rejections (among others):**
     - App / site not offering Aegis supported 2FA in the first place.
     - Forum not popular enough (forum software related icon is the alternative).
     - No high quality logo resources available.
     - Too complex logo to make as monochrome or viewable in small size.
   - **[More info about approved & unapproved types of apps / sites](#icon-acceptability-criteria)**.
6. Be respectful to the maintainers and contributers.

## Footnotes
*Here's all the footnotes:*

[^1]: Article: [Logo, Logomark, Logotype - What's The Difference And What Do You Need?](https://blog.designcrowd.com/article/997/logo-logomark-logotype-whats-the-difference-and-what-do-you-need) <sup>[[wayback machine](https://web.archive.org/web/20200606123728/https://blog.designcrowd.com/article/997/logo-logomark-logotype-whats-the-difference-and-what-do-you-need)]</sup>

[^2]: This color is taken from [Material Design 2014 color system](https://material.io/design/color/the-color-system.html#tools-for-picking-colors) <sup>[[archive.today w/ linked section](https://archive.today/96QQG#77%)]</sup> (Blue Grey, 500).
