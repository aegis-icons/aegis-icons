# Contributing
Thank you for taking the time to read and contribute to our project!

*This documentation is long and comprehensive, because we strive for high quality for our icons and want to minimize extra work as much possible.*

:mega: **ALWAYS double-check from this page before asking a question about submissions**.

> **Warning** \
> For contributing, you must know **basics of making / editing vectors** with **vector graphics editor** (see the [software](#software) section).<br><br>
> ***Please get familiar with the editor before creating ANY icons:*** \
> Google [`[vector editor name] basics`](https://www.google.com/search?q=%5Bvector%20editor%20name%5D%20basics) *(recommended to use vector editor's official guides)*.

> **Note** \
> It's **highly recommended** to also have **some knowledge of graphic design** and design in general, if possible.<br><br>
> ***Specially in these subjects:*** white space[^1], creating monochrome logos[^2].

Icons may look simple, but logos / symbols in them are actually carefully crafted, positioned and scaled. \
**We except same kind of quality from every submission.** 

---

**Table of contents**
- [**Icon acceptability criteria**](#icon-acceptability-criteria)
  - [Approved](#approved)
  - [Case-by-case basis](#case-by-case-basis)
  - [Not approved](#not-approved)
- [**Icon creation walkthrough**](#icon-creation-walkthrough)
  - [Software](#software)
    - [Allowed](#allowed)
    - [Prohibited](#prohibited)
  - [Repository submitting options](#repository-submitting-options)
    - [Filling requests](#filling-requests)
  - [Finding source images](#finding-source-images)
  - [Templates](#templates)
  - [Layout](#layout)
    - [Icon grid](#icon-grid)
  - [Vectors](#vectors)
  - [Colors](#colors)
  - [bg.var, fg.var & fg.bg.var icons](#bgvar-fgvar--fgbgvar-icons)
  - [Alternative icons](#alternative-icons)
  - [Generic icons](#generic-icons)
  - [Save and export](#save-and-export)
  - [SVG compression & cleanup](#svg-compression--cleanup)
- [**Technical**](#technical)
  - [Directories](#directories)
  - [Filename](#filename)
    - [New versions, version naming and organizing old files](#new-versions-version-naming-and-organizing-old-files)
  - [About PNGs](#about-pngs)
  - [About JSONs](#about-jsons)
- [**Resources**](#resources)
  - [Logos](#logos)
    - [Google tips for searching logos](#google-tips-for-searching-logos)
  - [Image tracing tools](#image-tracing-tools)
  - [Lists of sites supporting 2FA](#lists-of-sites-supporting-2fa)
    - [Google search queries for double-checking 2FA support](#google-search-queries-for-double-checking-2fa-support)
  - [Software](#software)
- [**Issue guidelines**](#issue-guidelines)
- [**Footnotes**](#footnotes)

---

## Icon acceptability criteria
Before making or requesting an icon for app / site, please check if it fits our "acceptability criteria".

### Approved
:heavy_check_mark: *Almost* always accepted to request or submit.

- Apps / sites that are popular and has Aegis supported 2FA support **(specially wanted).**
  - *Examples (not limited to):* social media, productivity tools, cloud services, development tools, gaming related etc.
- Almost any app / site / service, **that's trustworthy and doesn't have the exceptions from below.**
  - Still in spite of this, aegis-icons has right to reject requests or submissions if needed or necessary.

### Case-by-case basis
:grey_question: Needs some examining before accepting or rejecting. Request or submit and we will tell if it's accepted or not.

- Forums, message groups and similar sites / communities using pre-existing hosted software.
  - We rather make icons based of the softwares, because those are more universally usable for users then specific communities.
    - Detected with tools like [What CMS](https://whatcms.org) and [W3Techs Site Info](https://w3techs.com/sites).
  - *Exception:* really popular forums can get their own icons (at least **over 250,000 total members** and high posting activity).
- Platforms that icon requester / submitter is the creator or owner of the platform itself.
  - We don't do free work or want self-advertising here.
  - *Exception:* if platform is actually popular and has potential users for Aegis.
- Self-hosted or similar software.
  - Suggested to have ≥ 500 GitHub / Gitlab stars or other non-maintainer activity to back it up.
  - If things previously mentioned aren't available, then we measure popularity based of search results.
- Adult content, piracy & gambling related sites / apps / services.
  - Mostly okay here, **but** it cannot break **any** of the "not approved" bullet points.
  - These services are **always** researched from any "not approved" points before accepting.
- App / site being too vague.
  - *Examples (not limited to):* site only has login page and nothing else, search results don't answer what that app / site is either.
  - It's not enough that you tell what the app / site does, we need at least **some** evidence from the web. Otherwise it counts to *shady apps / sites* category.
- Ad networks.
  - Most of them belongs to *shady apps / sites* category, because often these services violate privacy on other users expense and trick users for unwanted things.
  - *Exception:* ad networks with ethical standpoints (minimal or no user tracking / data collecting, no dark patterns, high advertiser monitoring etc).

### Not approved
:x: These are never accepted to aegis-icons, **no exceptions!**

- Apps / sites **not** having Aegis supported 2FA support.
  - Also when service has officially discontinued 3rd party 2FA support (only supporting legacy users) and no known workaround for new users.
- **Unregulated** (crypto) currency trading / investing platforms.
  - Checked with [WikiBit](https://www.wikibit.com), [WikiFX](https://www.wikifx.com/en/), [P2PMarketData](https://p2pmarketdata.com/) and/or Google.
    - If regulation information isn't found from those sites or googling, request / submission is also rejected.
  - Why this restriction?
    1. Too many requests for these platforms and high maintenance for it.
    2. So many of these platforms are scams / frauds or operate company illegally in other ways
       - See: [FTX](https://en.wikipedia.org/wiki/FTX#Legal_process), [Celsius](https://www.forbes.com/sites/mitchellmartin/2023/01/05/celsius-founder-mashinsky-hit-with-fraud-suit-by-new-york-state/), [Samtrade FX](https://www.straitstimes.com/singapore/courts-crime/online-trading-platform-samtrade-fx-under-probe-by-police-mas-3-arrested), [Vauld](https://techcrunch.com/2022/08/12/india-seizes-46-million-from-crypto-exchange-vauld-in-money-laundering-probe/) etc.
    3. Checking regulation is the only way to *somewhat* certainly say of the legality of the company.
- Apps / sites **focusing** on **highly** immoral and illegal activity / material.
  - *Examples (not limited to):* black hat hacking, malware, malvertising, money laundering, illegal or highly controversal sexual material / services, harassment / cyberbullying etc.
- Scams or other shady apps / sites.
- Platforms having massive hate speech group following and poor moderation (a.k.a. "Alt-tech").
  - *Examples (not limited to):* [most of the platforms listed here](https://en.wikipedia.org/wiki/Alt-tech#Platforms).
- :warning: **Only for icon submissions:** submitting unmodified SVGs / [raster images](https://simple.wikipedia.org/wiki/Raster_graphics) from the web.
  - You'll need to design the icon **yourself** for submissions!

## Icon creation walkthrough

### Software
Lists of softwares that are suitable for making vectors (and opposite).

#### _Allowed_
:heavy_check_mark: Most used and approved software.

We recommend these because the maintainer can give advice / help for these softwares:

- [Adobe Illustrator](https://www.adobe.com/products/illustrator.html) (industry standard, most used software in this repository)
- [Affinity Designer](https://affinity.serif.com/designer/) (way cheaper but powerful and better alternatives to Illustrator)
- [Figma](https://www.figma.com/) (more known as interface design tool, but has good vector functions for making icons as well)
- [Inkscape](https://inkscape.org/) (popular open source option)

If your software isn't listed in here or prohibited section, **check your software's website.**

**If it mentions** being *"vector graphics editor"* (and **not** *"photo / image editor"*), then it most likely is okay as long as it can save vectors as SVG.

> **Note** \
> If your software is outside of the mentioned list, then we cannot give you help or support for your vector creating problems.

#### _Prohibited_
:x: *Some* of the softwares we don't approve, **change to one of the allowed softwares or cancel the making of the icon.**

- Adobe Photoshop
- Affinity Photo
- Clip Studio Paint
- GIMP
- Krita
- Paint.NET
- [(And more...)](https://en.wikipedia.org/wiki/Comparison_of_raster_graphics_editors#List)

These softwares are mostly for photo / image editing and aren't designed for vector creating.

Some of the softwares might have some basic vector editing capabilities, but aren't good enough for e.g. combining logos into one path or creating SVGs without lot of bloat code.

### Repository submitting options
Before creating icons, you have decide which way you want to submit your icon creations:

- **Option 1:** Fork this project and submit it via pull request *a.k.a. PR* **(recommended)**.
  - :information_source: We recommend [GitHub Desktop](https://desktop.github.com/) GUI software, if you're new to this.
  - First, **fork the project** ([how to fork the project in GitHub Desktop](https://docs.github.com/en/desktop/contributing-and-collaborating-using-github-desktop/adding-and-cloning-repositories/cloning-and-forking-repositories-from-github-desktop#forking-a-repository)).
  - Sidenote: **creating changes in new branch(es)** instead of using `master` branch is **highly recommended**.
    - This way, for example, you can submit multiple PRs with ease and aegis-icons's own `master` branch updates aren't in your way.
    - [Creating branches in GitHub Desktop](https://docs.github.com/en/desktop/contributing-and-collaborating-using-github-desktop/making-changes-in-a-branch/managing-branches#creating-a-branch) (remember to also [publish that branch](https://docs.github.com/en/desktop/contributing-and-collaborating-using-github-desktop/making-changes-in-a-branch/managing-branches#publishing-a-branch) after creating one).
  - When icon is finished, fixed, tweaked or have any new changes, **create new commit** ([creating new commits in GitHub Desktop](https://docs.github.com/en/desktop/contributing-and-collaborating-using-github-desktop/making-changes-in-a-branch/committing-and-reviewing-changes-to-your-project#write-a-commit-message-and-push-your-changes)).
  - And when you're finally ready to submit for aegis-icons, **[create a pull request](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/proposing-changes-to-your-work-with-pull-requests/creating-a-pull-request).**
    - [Quick link for aegis-icons's PR submission page](https://github.com/aegis-icons/aegis-icons/compare).

- **Option 2:** Submit your icon for review by [opening a new issue](../../issues/new/choose) (select "Icon submission") and add your file(s) / info.
  - This is the easiest option, but can become more complicated route later on if new changes are needed.
  - Submitting via new issue is also more inconvenient to the maintainers.

#### _Filling requests_

To ensure that icons have been made correctly based of the CONTRIBUTING guidelines, **we require all the contributers to create submission issue or pull request for filling requests** (excludes organization members).

### Finding source images
Search through the logo resources to find a vector-based image (SVG, AI, EPS, PDF).

> **Warning** \
> Never use JPG / PNG / GIF / WebP or other raster images **(as is)!**

*Here are things you can check, go these options in order:*

- **Press kit on the company website**
  - Eg. Zenkit has ["Press Kit" page](https://zenkit.com/en/press-kit/), that has ZIPs containing vector-based logos.
  - Look for pages like: *Brand(ing), Press, Media, Logos, Assets, Marketing, About* etc.
    - Trying googling too: `logo site:offical-site-for-app-or-site.com`
- **Embedded logo(s) on company website**
  - **Easiest way** for finding / downloading SVGs from web pages is using [SVG Gobbler](https://www.svggobbler.com/) browser extension (Chrome & Firefox, [open source](https://github.com/rossmoody/svg-gobbler)).
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
- As last resort, you can **try [image tracing](#image-tracing-tools) with raster images**.
  - :warning: Only use tools recommended in the "image tracing tools" section. *Using tool outside of the list is not acceptable.*
- **Making vectorized logo from scratch** is also option, if you're skilled and patient enough.

> **Note** \
> Is the SVG file broken? [SVG compression with SVGO or SVGOMG](#svg-compression--cleanup) might just fix it.

> **Warning** \
> Watch out for SVGs that are using raster graphics ([example](https://github.com/haiwen/seafile-client/blob/7d8f06111960921ce01ef08e169d41bae13959ed/data/icons/scalable/apps/seafile.svg?short_path=d0d75d2#L54-L218)). These are not common, but does exist.

### Templates
When making icons, download and use provided [templates](/_templates).

- For Illustrator, use `ai_template.ait` (for primary icons) or `ai_template_generic.ait` (for generic icons).
  - `.ait` is Illustrator template file format, **don't save over template file!** (Read [save and export](#save-and-export) for more info).
- Other softwares, use `svg_template.svg` (for primary icons) or `svg_template_generic.svg` (for generic icons).

### Layout
*Go these instructions in order:*

- Always use logomark[^3] if brand is using one.
- If logo only has text (known as logotype[^3]), use that instead.
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

#### _Icon grid_

*Documentation coming soon...*

### Vectors
- :warning: Logo must be in **single** path / compound path / object:

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
4. Combine the objects to together (*menu:* <kbd><i>Path</i> ➜ <i>Combine</i></kbd>).
</details>

> **Note** – **For Affinity Designer users:** \
> Change "fill mode" of the logo vector and its parts from *"Winding (Non-Zero)"* **into** *"Alternative (Even-Odd)"* (*menu:* <kbd><i>Layer</i> ➜ <i>Fill Mode</i></kbd>). Otherwise it creates CSS rules we don't want for our SVGs and we want everything to contain by the vector path.

### Colors
*Go these instructions in order:*

- **Never use white as background** (abbreviation: *BG*), white is always preserved for logo (a.k.a. *foreground*, short for *FG*).
- Don't use random color.
- Don't use gradients, use solid colors.
- Keep everything at 100% opacity, no blending etc.
- **Logo / FG should always use white** (`#FFFFFF`).
  - *Exceptions:* `fg.var` & `fg.bg.var` icons.
- If you find brand guideline that has documented brand colors ([example](https://brave.com/brave-branding-assets/) <sup>[[wayback machine](https://web.archive.org/web/20200606124434/https://brave.com/brave-branding-assets/)]</sup>), then go with that. Use primary brand color that has specifically said on the guideline or based on what color is used most.
- If there's no guidelines and logo only has one color, use logo color as icon background.
  - For multi-color logos, pick the best looking or most used color. 
    - **Tip:** In Illustrator, if logo is using gradient, use [this method](http://miraimages.com/illustrator-gradient-colors-to-swatches/) <sup>[[wayback machine](https://web.archive.org/web/20200606124113/http://miraimages.com/illustrator-gradient-colors-to-swatches/)]</sup> to extract all the colors in the gradient to the swatches.
- :warning: **Only when absolutely necessary:** if there's no brand guidelines and **only found white versions** of the logo, pick some color from website (preferably from header or site's most used color).
- **If icon you're making is using dark background, you have to make** `bg.var` **icon version as well.**
  - Or opposite, **if background is too bright for white logo, then make** `fg.var` **icon version.**
  - Check with ["BG colors to avoid" SVG](https://github.com/aegis-icons/aegis-icons/blob/master/_templates/z_bg-colors_to_avoid.svg) if `bg.var` version is needed.
- For *generic icons*, use templates (`ai_template_generic.ait` or `svg_template_generic.svg`) and **don't change the BG colors!**
  - [More info at the "generic icons" section](#generic-icons).
  
### bg.var, fg.var & fg.bg.var icons
> **Note** \
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
- Don't change the background color of the template (`#6750a4`[^4]).
- Foreground color is always white (`#FFFFFF`).
- Use these icon libraries:
  - [Phosphor Icons](https://phosphoricons.com/?weight=light) (primary, **use light weight**)
  - [Cryptocurrency Icons](http://cryptoicons.co/) (when *Phosphor Icons* doesn't have an icon for cryptocurrency)
    - [Link to SVG directory](https://github.com/spothq/cryptocurrency-icons/tree/master/svg/black).

### Save and export
> **Note** \
> Please read the info about naming at the [filename](#filename) section.

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
<sup>▲&nbsp;&nbsp;&nbsp; *SVG code formatting example*</sup>

- :spiral_notepad: Checklist for SVG formatting:
  - Check that the **indentation is 3 spaces** (important if you used SVGOMG).
  - Check that the **order of all the [elements](https://developer.mozilla.org/en-US/docs/Web/SVG/Element) and [attributes](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute) is EXACTLY same** as the *SVG code formatting example*.
  - Check that possible `fill="` **prefixes are changed to** `style="fill:`
  - **Remove all the [elements](https://developer.mozilla.org/en-US/docs/Web/SVG/Element) and [attributes](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute) that aren't featured** in the *SVG code formatting example*.
  - *See the [example SVG code after manual cleanup](https://github.com/aegis-icons/misc/commit/c0128f61f0d2b88d5953881699955a4a17477e47?diff=split) for aimed optimal result.*

> **Note** \
> **Test the SVG on the web browser** that it still works after edits! (drag-and-drop SVG to tab bar or *"Open File..." shortcut:* <kbd>Ctrl [⌘ Cmd]</kbd>+<kbd>O</kbd>).

When everything is done and ready to go, [submit icons with either as pull request or issue](#repository-submitting-options).

## Technical

### Directories
- Primary icons ➜
  - `/icons/1_Primary/` folder.
  - *Means all the logo based icons that aren't variations / alternatives.*
- Variation and alternative icons ➜
  - `/icons/2_Variations/` folder.
- Generic icons ➜
  - `/icons/3_Generic/` folder.
- For the outdated icons, see the [new versions, version naming and organizing old files](#new-versions-version-naming-and-organizing-old-files) section.

### Filename
> **Warning** \
> When naming brand based icon(s), check how brand capitalised and spell the name from their app / website (check the capitalization / spelling from browser tab title or body text of their website, **not from the logo!**).

> **Note** – **Filename character limitations:** \
> Only use [ISO basic Latin alphabet letters](https://en.wikipedia.org/wiki/ISO_basic_Latin_alphabet), numbers, spaces, dashes and other safe ASCII characters ([list of forbidden ASCII](https://stackoverflow.com/questions/1976007/what-characters-are-forbidden-in-windows-and-linux-directory-names/31976060#31976060)).

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
    
#### _New versions, version naming and organizing old files_
- New versions of icons are only made when it's major change (new logo or brand color).
  - Logos with only **barely noticable** brand related changes with same brand color ([example by T-Mobile](https://user-images.githubusercontent.com/3540275/160298574-c28cfe2a-3393-44b0-9fd1-63a4e6ade214.png)), doesn't need new icon version.
- Icon files that are outdated for the first time, `v1` is added to end of the filename.
  - Examples: `Codeberg v1.svg`.
- Version label number increases for outdated icons when new versions of the primary icon are released (`v2`, `v3`, `v4`, `v5` etc.).
- Outdated versions are moved to directory: `/icons/4_Outdated/`.
- :warning: **Only for maintainers:** Icons of now dead service (or didn't have 2FA etc.) should be moved to [*aegis-icons / misc*'s `removed_icons`](https://github.com/aegis-icons/misc/tree/main/removed_icons) directory just as is.
  - Also add info to the directory's README on why icon was removed.

### About PNGs
As of 2021-07-25, aegis-icons doesn't actively make PNG icons anymore.

Instead, PNGs are only made when noticing problems with SVG on Aegis and are added to *[aegis-icons / png-files](https://github.com/aegis-icons/png-files)* repo. PNGs are only made by maintainers to keep files & compressions consistent.

[List of SVG icons with known rendering issues and PNG counterparts are available here](https://github.com/aegis-icons/png-files/blob/main/.github/NOTICE.md).

### About JSONs
> **Warning** \
> Please do not submit PRs that make changes to JSON files!

Because of the JSON update process, currently only the maintainer ([@krisu5](https://github.com/krisu5)) is allowed to make changes to JSONs.

If you want to suggest a change related to JSONs, [make a issue instead](https://github.com/aegis-icons/aegis-icons/issues/new/choose) (choose "Other").

## Resources
Resources marked with star (:star:) are recommended / most used by the maintainers.

### Logos
Resources for finding logos in vector format, when no official brand kit / vector logos are available.

> **Warning** \
> Remember to always double check if logo provided by these resources is the latest one company uses!

- [Brandfetch](https://brandfetch.com/) (not always accurate results)
- [LogoSearch](https://logosear.ch/) :star:
- [Seeklogo](https://seeklogo.com/)
- [Simple Icons](https://simpleicons.org/) :star:
- [VectorWiki](https://vectorwiki.com/)
- [Worldvectorlogo](https://worldvectorlogo.com/)
- [Wikimedia Commons](https://commons.wikimedia.org/wiki/Main_Page)
- Wikipedia pages of the brand :star:

More resources at [LogoSearch's "Alternative Logo Sources"](https://logosear.ch/alternatives/) list.

#### _Google tips for searching logos_
- `logo site:offical-site-for-app-or-site.com`
- `filetype:pdf site:offical-site-for-app-or-site.com` (you can rip vectors from PDF, really often logos in these PDFs are vector).
- `"app-or-site-name-here" svg` or `"app-or-site-name-here" vector`.

### Image tracing tools

> **Note** \
> Only use image tracing tool if there's no other option, **always use ready-made vectors if available.**

In a nutshell, image tracing means converting raster image (PNG, JPG etc.) to vector file (SVG, EPS, AI etc.) with vector paths, [more info at Wikipedia](https://en.wikipedia.org/wiki/Image_tracing).

:balance_scale: **Rule of thumb with image tracing:**
1. Use high resolution image if possible.
2. Preferably with image that doesn't have many colors.
3. Doesn't have any [compression artifacts](https://simple.wikipedia.org/wiki/Compression_artifact).
   - If image does have artifacts, try [Pix Fix](https://pixfix.com/) tool to remove them.

> **Warning** \
> Using tool **outside of these recommendations below** can do mediocre job and **is not acceptable.** \
> Maintainer has tested many image tracing tools and these are only actually good ones so far (yes, even Illustrator is mediocre).

- [Vector Magic](https://vectormagic.com/) :star:
  - The one of best – if not the best – image tracer, often used by the maintainer. Unfortunately **commercial software**, trial only allows previews.
- [Vectorizer.AI](https://vectorizer.ai/) :star:
  - From makers of Vector Magic. **Free to use while in beta**, no account needed, almost as good results as Vector Magic.
- [Vectorizer.io](https://href.li/?https://www.vectorizer.io) :star: <!-- href.li (referrer hider) is added on purpose, preventing devs finding the loophole -->
  - Not as good as previous two but still great image tracer. **Generating vectors without account / freely is possible.**
    - **There's a loophole to download the SVG:** use [SVG Gobbler](https://www.svggobbler.com/) after vector is generated.
      - *Alternatively:* Inspect the output image (<kbd>Ctrl [⌘ Cmd]</kbd>+<kbd>Shift</kbd>+<kbd>C</kbd>), copy the SVG code from dev tools and use plain text editor to create & save as SVG file.
- [Vectorizer(.com)](https://vectorizer.com/)
  - Out of these four options, this one is worst one of the bunch. But best part is that it's **completely free to use** and it's still better then most other tools out there.

### Lists of sites supporting 2FA
Need to check if service has 2FA? These list apps / websites that support 2FA and in what kind of format.

- [2FA Directory](https://2fa.directory/int/) (*[GitHub commits](https://github.com/2factorauth/twofactorauth/commits/master)*) :star:
- [Authy - Guides](https://authy.com/guides/)

#### _Google search queries for double-checking 2FA support_
```
"app-or-site-name-here" AND 2fa OR mfa OR otp OR totp OR factor authentication OR step verification OR time-based one-time
```

or

```
site:official-domain-of-the-app-or-site.com 2fa OR mfa OR otp OR totp OR factor authentication OR step verification OR time-based one-time
```

<!--
## Maintainer's Guide
*This is for admins of the repo. If you're regular contributor, you can ignore this section.*

[ DISABLED, NEEDS TEXT HERE ]

NOTE: remember to link this section in the TOC when ready.
-->

## Issue guidelines
*(Issue guidelines was last updated on: 2022-10-26)*

1. App / site related requests has to **have Aegis-compatible 2FA support** one way or another, this project does not make icons outside of Aegis usage.
   - Don't lie, we always double-check if requested service has 2FA support. You can add proof for the existence of Aegis-compatible 2FA to the issue form's "Proof of the Aegis-compatible 2FA" section.
     - For the similar icons for general purpose, check out [Simple Icons](https://simpleicons.org/) instead.
2. **Check that icon you're about to request doesn't [already exist](https://aegis-icons.github.io/)** or opened / closed in the [issues](https://github.com/aegis-icons/aegis-icons/issues).
   - Icon packs are updated monthly, not every time a new icon is created ([see the pack releases](https://github.com/aegis-icons/aegis-icons/releases)). Icons created after the latest pack update are downloadable on [the website](https://aegis-icons.github.io/).
3. Read the issue form **carefully** and **follow the instructions.**
4. Don't open **more then 5 icon request issues** at the same time.
   - You can request more after **all** of your current requests are filled.
5. Aegis-icons can reject any icon request for any reason, but most of the requests gets filled. Usually we do provide explanation and possibly alternative option if we reject the request.
   - *Possible reasons for rejections (among others):*
     - App / site not offering Aegis supported 2FA in the first place.
     - Forum not popular enough (forum software related icon is the alternative).
     - No high quality logo resources available.
   - **[More info](#icon-acceptability-criteria)** about **approved & unapproved types of apps / sites.**
6. If you have question or miscellaneous suggestion, check out [FAQ](FAQ.md) first.
7. Be respectful to the maintainers and contributers.

## Footnotes
*Here's all the footnotes:*

[^1]: Article: [How to correctly design the monochrome version of a logo](https://www.creativosonline.org/en/how-to-correctly-design-the-monochrome-version-of-a-logo.html) <sup>[[archive.is](https://archive.is/OfYrY)]</sup>

[^2]: Article: [White space in graphic design: What is white space in design?](https://fabrikbrands.com/white-space-in-graphic-design-white-space-principle-of-design/) <sup>[[archive.is](https://archive.is/ryCkS)]</sup>

[^3]: Article: [Logo, Logomark, Logotype - What's The Difference And What Do You Need?](https://blog.designcrowd.com/article/997/logo-logomark-logotype-whats-the-difference-and-what-do-you-need) <sup>[[wayback machine](https://web.archive.org/web/20200606123728/https://blog.designcrowd.com/article/997/logo-logomark-logotype-whats-the-difference-and-what-do-you-need)]</sup>

[^4]: This color is taken from [Material Design 3's color system](https://m3.material.io/styles/color/the-color-system/tokens#0d90da19-3d89-4964-9a97-5a024fc6d77b) (token: `Primary40`, hex: `#6750a4`).