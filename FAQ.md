# Frequently Asked Questions

## How I use these icons?

1. Either download icons [separately](/PNG) or as [icon pack ZIP](../../releases/latest) (click to unhide "Assets" sections and download ZIP that starts with `PNGs_`)
   - If you downloaded icon pack, use file manager to unzip it (if you don't have one, I recommend [Amaze](https://github.com/TeamAmaze/AmazeFileManager/blob/master/README.md))
   - If you didn't find a icon for site / app you wanted, [double-check here](full_preview.md) and [make a issue](https://github.com/krisu5/aegis-icons/issues) you didn't find one.
2. In Aegis, long press 2FA account you want to add the icon and press the "pencil" icon to edit. 🖼 [Example](https://user-images.githubusercontent.com/3540275/80872785-e875dc80-8cbc-11ea-8451-0fff3ed4565f.png)
3. In "Edit Profile", press the circle that has one letter in it. 🖼 [Example](https://user-images.githubusercontent.com/3540275/80872798-f9bee900-8cbc-11ea-9a7d-c0f94a675044.png)
4. Select app for finding icons (like file manager or gallery app).
5. Go to folder where the icons are and select icon image you want.
6. Press "Save". 🖼 [Example](https://user-images.githubusercontent.com/3540275/80872809-08a59b80-8cbd-11ea-88cf-39c932fc4710.png)
7. 🖼 [Finished! :)](https://user-images.githubusercontent.com/3540275/80872810-093e3200-8cbd-11ea-9615-9a343ccb7756.png)

Repeat steps 2 to 6 for other accounts.

## How can I make icon with different background color?

### Easy way, but you need a PC

Even though PC is needed, you don't need to install extra software. Web browser is all you need.

1. [Get the SVG file(s) for the icon(s) you want to edit](/SVG).
	- SVG is [vector file format](https://simple.wikipedia.org/wiki/Vector_graphics) that can  be easily edited, specially with colors. It's also possible to edit it via text (that's the subject on the next tutorial).
2. Right-click image and save it (or click "Raw" button and then save it).
3. Go to [Vectr](https://vectr.com/new), web app for vector making / editing.
4. Select the SVG file. 🖼 [Example](https://user-images.githubusercontent.com/3540275/81182238-34bf6600-8fb6-11ea-958c-05d1bf46ce7f.png)
5. Click the circle part of the icon that has the background color. 🖼 [Example](https://user-images.githubusercontent.com/3540275/81182240-35f09300-8fb6-11ea-975f-48a84888714e.png)
6. Click the "color button". 🖼 [Example](https://user-images.githubusercontent.com/3540275/81182244-36892980-8fb6-11ea-8b8c-8702bda5ec09.png)
7. Select color you want.
8. Click "Export" button. 🖼 [Example](https://user-images.githubusercontent.com/3540275/81184942-a947d400-8fb9-11ea-9a62-194430b7f6e4.png)
9. Change `svg` to `png`.
10. Change both `640px` values to `1024px`.
11. Download and move PNG(s) into your phone with your refer method (USB, email, cloud etc).

If you want to use a software, [Inkscape](https://inkscape.org/) and [SVG Splash](https://www.svgsplash.com/) are best free options. But you're on your own there.

### Harder way, but PC isn't necessary

This tutorial focuses on icon editing in Android and with [Amaze file manager](https://github.com/TeamAmaze/AmazeFileManager/blob/master/README.md).

1. [Get the SVG file(s) for the icon(s) you want to edit](/SVG).
2. On Chrome (or Chromium-based browsers), long press the "raw" button and select "download link".
3. Open **Amaze** and go to "Downloads" folder.
4. Press menu icon on the file (three dots) and select "Open with".
5. In the "Open As" dialog, select "text".
6. Select "Amaze Text Editor".
7. Copy and paste code below after the word `<circle`. 🖼 [Example](https://user-images.githubusercontent.com/3540275/85231721-480d8000-b402-11ea-8b19-4221b2c777b4.png)
```
 style="fill: #COLOR !important;"
```
8. Select the color using color picker.
   - Good mobile-friendly web apps: https://color.obscuredetour.com/ & https://color.joelb.dev/
9. Copy the hex color value.
   - Hex color starts with hash (#) and has 6 alphanumerical characters.
10. Replace the `#COLOR` text with copied hex color. 🖼 [Example](https://user-images.githubusercontent.com/3540275/85231723-48a61680-b402-11ea-85cf-e21c9c4ca252.png)
11. Press the "save" icon. 🖼 [Example](https://user-images.githubusercontent.com/3540275/85231725-49d74380-b402-11ea-8364-e468e9214263.png)
12. [Convert SVG to PNG with "CloudConvert" web app](https://cloudconvert.com/svg-to-png).
	- Or you could download some "SVG converter" app from Play Store.

## Why only some of icons have `bg.var`, `fg.var` or `alt` version?

- `Bg.var` versions are made when original icon has dark background color. Dark background blends in on Dark and AMOLED themes. 
- `Fg.var` versions has logo color changed to black when background color is brightly colored (eg. Snapchat).
- `Alt` icons have alternative logo, if app / site has one.

We try to honor app / webservice's branding as much as possible, so that's why there's variations as well for these situations.

## These icons aren't integrated in the app?

Currently these icons aren't integrated in the app.

Upcoming [icon pack feature](https://github.com/beemdevelopment/Aegis/issues/509) will make adding icons easier to do.

