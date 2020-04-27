Thank you for taking the time to contribute! Ask for help, report a bug, or request a feature simply by [opening a new issue](https://github.com/krisu5/aegis-icons/issues)! If you would like to contribute icons or code, please fork the project and keep reading!

#### Contents
**Contents**
- [**Icon creation walkthrough**](#icon-creation-walkthrough)
  - [Find source images](#find-source-images)
  - [Editing with Inkscape or Adobe Illustrator](#editing-with-inkscape-or-adobe-illustrator)
  - [Save and export](#save-and-export)
  - [Submit to repository](#submit-to-repository)
- [**Style requirements**](#style-requirements)
  - [Style](#style)
  - [Variations](#variations)
  - [Technical](#technical)
- [**Maintainer's guide**](#maintainers-guide)

# Icon creation walkthrough

## Find source images
Scour the logo resources (URL, app data, etc.) to find a vector-based image (SVG, AI, etc.). Here are some places you can check:
- Company press kit (Example: [Zenkit](https://zenkit.com/en/press-kit/) logo press kit contains Zenkit_Logo1_Flat.eps, which when opened with Inkscape turns out to contain a vector-based logo.)
- Logo on company website; try right-clicking it and selecting *Save image as...*, and hope that the save dialogue appears with SVG, AI, etc., not JPEG, PNG, etc. If right-clicking the image does not have an option for *Save image as...*, t:...skipping...
# Contributing

Thank you for taking the time to contribute! Ask for help, report a bug, or request a feature simply by [opening a new issue](https://github.com/krisu5/aegis-icons/issues)! If you would like to contribute icons or code, please fork the project and keep reading!

#### Table of contents

- [**Icon creation walkthrough**](#icon-creation-walkthrough)
  - [Find source images](#find-source-images)
  - [Editing with Inkscape or Adobe Illustrator](#editing-with-inkscape-or-adobe-illustrator)
  - [Save and export](#save-and-export)
  - [Submit to repository](#submit-to-repository)
- [**Style requirements**](#style-requirements)
  - [Style](#style)
  - [Variations](#variations)
  - [Technical](#technical)
- [**Maintainer's guide**](#maintainers-guide)
  - [Release process](#release-process)

# Icon creation walkthrough

## Find source images
Scour the logo resources (URL, app data, etc.) to find a vector-based image (SVG, AI, etc.). Here are some places you can check:
- Company press kit (Example: [Zenkit](https://zenkit.com/en/press-kit/) logo press kit contains Zenkit_Logo1_Flat.eps, which when opened with Inkscape turns out to contain a vector-based logo.)
- Logo on company website; try right-clicking it and selecting *Save image as...*, and hope that the save dialogue appears with SVG, AI, etc., not JPEG, PNG, etc. If right-clicking the image does not have an option for *Save image as...*, try using Google Chrome and clicking *Inspect* at the bottom of the right-click menu (this works in other browsers too, but may have a different name). This opens the developer tools which can reveal hidden URLs. (Example: [Floatplane](https://www.floatplane.com), inspecting the icon in the footer reveals the URL https://frontend.floatplane.com/2.15.1/assets/images/logos/floatplane/icon-white.svg which can be copied-and-pasted into the browser to open the image, and then saved normally.)
- Search [Wikimedia Commons](https://commons.wikimedia.org) (Example: [Linus Tech Tips](https://commons.wikimedia.org/wiki/File:2018_Linus_Tech_Tips_logo.svg))
- Right-click the website and select *View page source*, then press *Ctrl+F* to open the search tool and type things like `.SVG` or `.AI` to look for hidden image URLs (Example: [You Need A Budget](https://www.youneedabudget.com) reveals the hidden URL https://www-assets.youneedabudget.com/wp-content/themes/dupatta/dist/images/safari-pinned-tab_9f66dfb85bfc4fae0f8fc465c3c2d978.svg which can be copied-and-pasted into the browser to open the image, and then saved normally.)

## Editing with Inkscape or Adobe Illustrator
Open the file with Adobe Illustrator, [Inkscape](https://inkscape.org), or another vector image editor of your choice. Follow the [Style guidelines](#style-guidelines) to create a suitable icon(s).

## Save and export
Save the file in its original format (whether AI or SVG), and additionally export as a PNG file with 1024 px for both height and width. Optionally compress the PNG file using [PNG Gauntlet](https://pnggauntlet.com) or other lossless compression.

## Submit to repository

Submit your icon for review by [opening a new issue](https://github.com/krisu5/aegis-icons/issues) and attaching your file(s) and source(s). Alternately, you are encouraged to refer to [this GitHub guide](https://guides.github.com/activities/contributing-to-open-source) to fork the Aegis Icons project, add the changed files to your fork, then create a Pull Request with your submissions. This more-complex method is less work for the maintainers, and gives you more impressive contribution stats on your GitHub user homepage 😉

# Style requirements
## Style
- The primary icon uses the main company logo, whether that is a [logomark, logotype, or something else](https://blog.designcrowd.com/article/997/logo-logomark-logotype-whats-the-difference-and-what-do-you-need).
- The icon has:
  - Image/page canvas of 1024 x 1024px
  - Transparent background
  - Solid background circle with company brand color, spanning 100% of image canvas (1024px)
  - Company logo in flat white or flat black, depending on whichever creates greatest contrast with background color. This may require modifying an original multicolor company logo.
  - Company logo maximum height is 50% (512px) and maximum width is 75% (768 px).

## Variations
- Other logos and variations (including logomarks when they are not the main brand logo) are accepted in the "Variations" subfolder.
- Variations use the same filename as the
- All variations otherwise follow the same style requirements as the primary logo.

## Technical
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

## Maintainer's Guide
  - As needed, update `full_preview.md`, `full_preview_generic.png`, `full_preview_variations.png`, and `full_preview_outdated.png`.
