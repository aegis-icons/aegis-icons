# Frequently Asked Questions

## How I use these icons?

### With icon pack

First, you need to download and enable icon pack:

1. [Download icon pack](https://github.com/aegis-icons/aegis-icons/releases/latest).
2. In **Aegis**, tap "more menu" (three dots) and select "Settings".
3. Select "Icon Packs".
4. Tap "plus" button at bottom right.
5. Locate the icon pack ZIP file (usually at the "Downloads" folder).

Now you can add icons to your entries:

1. Long-press the entry and then tap "pencil button". [[Example]](https://raw.githubusercontent.com/aegis-icons/misc/main/screenshots/faq_how-to-use-icons_001.png)
2. In "Edit entry", tap the circle that has one letter in it. [[Example]](https://raw.githubusercontent.com/aegis-icons/misc/main/screenshots/faq_how-to-use-icons_002.png)
3. Now picker should appear and you can select the icon you want from the aegis-icons pack.
4. After the selection, tap "Save" button at top-right.

### Manually

1. Download the icon (eg. from [our website](https://aegis-icons.github.io/)).
2. In **Aegis**, long-press the entry and then tap "pencil button". [[Example]](https://raw.githubusercontent.com/aegis-icons/misc/main/screenshots/faq_how-to-use-icons_001.png)
3. In "Edit entry", tap the circle that has one letter in it. [[Example]](https://raw.githubusercontent.com/aegis-icons/misc/main/screenshots/faq_how-to-use-icons_002.png)
4. If you don't have any icon packs enabled, then select app for locating icon (like file manager or gallery app).
   - If you *do* have a icon pack enabled, first press button with "Custom" label [[Example]](https://raw.githubusercontent.com/aegis-icons/misc/main/screenshots/faq_how-to-use-icons_003.png) and *then* select the app for locating icon that you downloaded.
5. After the selection, tap "Save" button at top-right.

## How to update the icon pack?

It's the same steps as [adding the icon pack first time](#with-icon-pack), you don't need to delete icon pack before updating.

When encountering the error dialog while updating pack, just tap "Yes". [[Example]](https://raw.githubusercontent.com/aegis-icons/misc/main/screenshots/faq_how-to-update-icon-pack.png)

None of the icons in entries will be changed after icon pack update (you'll need to manually change the entry icons, if you so desire).

## How can I make icon with different background color?

Because icons are in SVG format, it's possible to edit colors of the icons.

### Easy "PC only" way

Even though PC is needed, you don't need to install extra software. Web browser is all you need.

1. [Get the SVG file(s) for the icon(s) you want to edit](https://aegis-icons.github.io/).
2. Go to [Method Draw](https://editor.method.ac/), web app for vector making / editing.
3. Click "File" and "Open SVG..." to select the icon you want to edit. [[Example]](https://raw.githubusercontent.com/aegis-icons/misc/main/screenshots/faq_edit_icon_01-001.png)
4. Click the circle part of the icon that has the background color. [[Example]](https://raw.githubusercontent.com/aegis-icons/misc/main/screenshots/faq_edit_icon_01-002.png)
5. Click the "color button". [[Example]](https://raw.githubusercontent.com/aegis-icons/misc/main/screenshots/faq_edit_icon_01-003.png)
6. Select color you want and click "OK".
7. All these parts are in this example screenshot: [[Example]](https://raw.githubusercontent.com/aegis-icons/misc/main/screenshots/faq_edit_icon_01-004.png)
   - 1\. Click somewhere outside of the canvas.
   - 2\. Change the name of the title to something else (eg. name of the app or website).
   - 3\. Click "File" and "Save image..."
8. Download and move edited SVG(s) into your phone with your refer method (USB, email, cloud etc).
9. [Import icon(s) to Aegis](#manually).

If you want alternatives, check out [Photopea](https://www.photopea.com/) or [Vectr](https://vectr.com/). Or want to use desktop software instead, [Inkscape](https://inkscape.org/) is the best free option.

### Harder Android way

This tutorial focuses on icon editing in Android and with [Amaze file manager](https://github.com/TeamAmaze/AmazeFileManager#readme). This is slightly more technical method, so it's only recommended for more advanced users. You can apply this method on PC too using Notepad or other plain text editor.

1. [Get the SVG file(s) for the icon(s) you want to edit](https://aegis-icons.github.io/).
2. Open **Amaze** and go to "Downloads" folder (or whatever folder you downloaded icons into).
3. Press menu icon on the file (three dots) and select "Open with".
4. In the "Open As" dialog, select "text".
5. Select "Amaze Text Editor".
6. Find a color you like using color picker.
   - Good mobile-friendly web apps: https://color.obscuredetour.com/ & https://color.joelb.dev/
7. Copy the HEX color value.
   - HEX color starts with hash (#) and has 3 to 6 alphanumerical characters.
8. Find `<circle` part from the code, then look for `fill:#RANDOMHEX`. [[Example]](https://raw.githubusercontent.com/aegis-icons/misc/main/screenshots/faq_edit_icon_02-001.png)
   - In this example, `#RANDOMHEX` is `#1a8cff`.
   - Some rare occasions instead of HEX code, it could also be the name of the color (eg. `fill:gray`).
   - Black icons don't have `style` attribute, so you need to add it manually (check the placement in the example screenshot above).
   ```
   style="fill:#RANDOMHEX"
   ```
9. Replace the HEX color code text with copied hex color. [[Example]](https://raw.githubusercontent.com/aegis-icons/misc/main/screenshots/faq_edit_icon_02-002.png)
   - In this example, *replacable* HEX code is `#1a8cff` and HEX code *we want* is `#e32b3f`.
10. Press the "save" icon. [[Example]](https://raw.githubusercontent.com/aegis-icons/misc/main/screenshots/faq_edit_icon_02-003.png)
11. [Import icon(s) to Aegis](#manually).

## Why only some of the icons have `bg.var`, `fg.var`, `fg.bg.var` or `alt` version?

- `Bg.var` (background variation) icons are made when original icon has dark background color. Dark background blends in on Dark and AMOLED themes.
- `Fg.var` (foreground variation) icons has logo color changed to black when background color is brightly colored (eg. Snapchat).
- `Fg.bg.var` is combination of both variations. Made when even background variation color is too bright. We try to avoid making these as much as possible.
- `Alt` icons have alternative logo, if app / site has one.

We try to honor app / website's branding as much as possible, so that's why there's variations as well for these situations.

## Can you make variation for X icon?

We don't make new icon variations by request.

**Only exceptions** are when:
- Icon's BG color blends in dark / AMOLED theme.
- Icon's BG color is too bright compare to logo.

## There's rendering issues with X icon.

If you notice such issues with icon, please [report us](https://github.com/aegis-icons/aegis-icons/issues/new/choose) (choose "Other") and we fix the icon and/or make PNG counterpart for it.

[List of icons with rendering issues](https://github.com/aegis-icons/png-files/blob/main/.github/NOTICE.md#svgs-known-to-have-rendering-issues).

## What happend to X icon?

Time to time, we clean up the icon pack by removing icons from the pack for various reasons.

[List of removed icons and reasons for deletion](https://github.com/aegis-icons/misc/tree/main/removed_icons#readme).

## How to do know if installed icon pack is latest one?

The version number is the date that it was builded.

In the [website](https://aegis-icons.github.io/) or [GitHub release pages](https://github.com/aegis-icons/aegis-icons/releases/latest), it's in the `YYYY-MM-DD` format (4-Digit Year, 2-Digit Month, 2-Digit Day).

In the icon pack file, it's the same format minus the dashes.

## How can I make icon pack build?

> **Note** \
> This section is only for more technical users that know how to use command line.

*Requirements: [Python version 3 (and up)](https://www.python.org/downloads/) installed.*

First, clone / fork the git repo or [download the repo as ZIP](https://github.com/aegis-icons/aegis-icons/archive/refs/heads/master.zip) (unzip the ZIP file, if you download it as ZIP).

In **Windows**: 
- Go to `/aegis-icons/_compress/` directory
- Open `.3_icon_pack_helper.bat` and press the corresponding number option in front of *"Make the icon pack ZIP"* text.
- After it's done, go back to `/aegis-icons/` directory, there should be icon pack build as `aegis-icons.zip`.

In **other systems**, open terminal in the `/aegis-icons/` directory and execute this command:

```
make-pack.py gen --output aegis-icons.zip --version YYYYMMDD
```
<sup><i>Replace the</i> <code>YYYYMMDD</code> <i>with version number you want.</i></sup>

After executing command, there should be icon pack build as `aegis-icons.zip`.
