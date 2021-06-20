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

1. Long-press the entry and then tap "pencil button". 🖼 [[Example]](https://user-images.githubusercontent.com/3540275/120072239-7f1cf480-c09b-11eb-9aef-d7f8fd0f7825.png)
2. In "Edit entry", tap the circle that has one letter in it. 🖼 [[Example]](https://user-images.githubusercontent.com/3540275/120072428-8f819f00-c09c-11eb-88c5-06fc400a6ba8.png)
3. Now picker should appear and you can select the icon you want from the aegis-icons pack.
4. After the selection, tap "Save" button at top-right.

Do steps 1-4 above for other accounts you have.

### Manually

1. Download the icon (eg. from [our website](https://aegis-icons.github.io/))
2. In **Aegis**, long-press the entry and then tap "pencil button". 🖼 [[Example]](https://user-images.githubusercontent.com/3540275/120072239-7f1cf480-c09b-11eb-9aef-d7f8fd0f7825.png)
3. In "Edit entry", tap the circle that has one letter in it. 🖼 [[Example]](https://user-images.githubusercontent.com/3540275/120072428-8f819f00-c09c-11eb-88c5-06fc400a6ba8.png)
4. If you don't have any icon packs enabled, then select app for locating icon (like file manager or gallery app)
   - If you *do* have a icon pack enabled, first press button with "Custom" label 🖼 [[Example]](https://user-images.githubusercontent.com/3540275/120072964-f86a1680-c09e-11eb-990e-a12539ac6bee.png) and *then* select the app for locating icon that you downloaded.
5. After the selection, tap "Save" button at top-right.

## How can I make icon with different background color?

### Easy "PC only" way

Even though PC is needed, you don't need to install extra software. Web browser is all you need.

1. [Get the SVG file(s) for the icon(s) you want to edit](https://aegis-icons.github.io/).
   - SVG is [vector file format](https://simple.wikipedia.org/wiki/Vector_graphics) that can  be easily edited, specially with colors. It's also possible to edit it via text (that's the subject on the next tutorial).
2. Go to [Vectr](https://vectr.com/new), web app for vector making / editing.
3. Select the SVG file. 🖼 [[Example]](https://user-images.githubusercontent.com/3540275/81182238-34bf6600-8fb6-11ea-958c-05d1bf46ce7f.png)
4. Click the circle part of the icon that has the background color. 🖼 [[Example]](https://user-images.githubusercontent.com/3540275/81182240-35f09300-8fb6-11ea-975f-48a84888714e.png)
5. Click the "color button". 🖼 [[Example]](https://user-images.githubusercontent.com/3540275/81182244-36892980-8fb6-11ea-8b8c-8702bda5ec09.png)
6. Select color you want.
7. Click "Export" button. 🖼 [[Example]](https://user-images.githubusercontent.com/3540275/81184942-a947d400-8fb9-11ea-9a62-194430b7f6e4.png)
8. Change both `640px` values to `1024px`.
9. Download and move edited SVG(s) into your phone with your refer method (USB, email, cloud etc).

If you want to use different web app, check [Photopea](https://www.photopea.com/). Or want to use desktop software instead, [Inkscape](https://inkscape.org/) and [SVG Splash](https://www.svgsplash.com/) are best free options. But you're on your own there.

### Harder Android way

This tutorial focuses on icon editing in Android and with [Amaze file manager](https://github.com/TeamAmaze/AmazeFileManager#readme). This is slightly more technical method, so it's only recommended for more advanced users. You apply this method on PC too using Notepad or other plain text editor.

1. [Get the SVG file(s) for the icon(s) you want to edit](https://aegis-icons.github.io/).
2. Open **Amaze** and go to "Downloads" folder (or whatever folder you downloaded icons into).
3. Press menu icon on the file (three dots) and select "Open with".
4. In the "Open As" dialog, select "text".
5. Select "Amaze Text Editor".
6. Find a color you like using color picker.
   - Good mobile-friendly web apps: https://color.obscuredetour.com/ & https://color.joelb.dev/
7. Copy the HEX color value.
   - HEX color starts with hash (#) and has 6 alphanumerical characters.
8. Find `<circle` part from the code, then look for `fill:#RANDOMHEX`. 🖼 [[Example]](https://user-images.githubusercontent.com/3540275/115146777-ac1fc580-a060-11eb-9e85-d010ca23da52.png)
   - In this example, `#RANDOMHEX` is `#1a8cff`.
   - Black icons don't have `style` attribute, so you need to add it manually (check the example screenshot above).
   ```
   style="fill:#RANDOMHEX"
   ```
9. Replace the HEX color code text with copied hex color. 🖼 [[Example]](https://user-images.githubusercontent.com/3540275/115147154-564c1d00-a062-11eb-8972-2729903a5530.png)
   - In this example, *replacable* HEX code is `#1a8cff` and HEX code *we want* is `#e32b3f`.
10. Press the "save" icon. 🖼 [[Example]](https://user-images.githubusercontent.com/3540275/115147156-56e4b380-a062-11eb-9f2b-aebb6e9fc839.png)

## Why only some of the icons have `bg.var`, `fg.var`, `fg.bg.var` or `alt` version?

- `Bg.var` (background variation) icons are made when original icon has dark background color. Dark background blends in on Dark and AMOLED themes. 
- `Fg.var` (foreground variation) icons has logo color changed to black when background color is brightly colored (eg. Snapchat).
- `Fg.bg.var` is combination of both variations. Made when even background variation color is too bright / light. We try to avoid making these as much as possible.
- `Alt` icons have alternative logo, if app / site has one.

We try to honor app / website's branding as much as possible, so that's why there's variations as well for these situations.

## Can you make variation for X icon?

We don't make new icon variations for icons by request.