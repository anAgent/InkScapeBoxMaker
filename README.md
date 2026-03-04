# InkScapeBoxMaker - For InkScape 1.2+
Compatible with Inkscape 1.2, 1.3, and 1.4.3

This is an inkscape extension to support various Laser Cut Box Layouts.

## Features

Currently it supports three types of boxes:
 - just an open box (with bottom, left, right, front, and back side, but no top cover)
 - a box with a top cover that can be opened by a hinge
 - a shelf box with contained boxes

Major options are:
 - box width
 - box height
 - box depth
 - thickness of panel
 - units (mm or cm, inch, px) (currently only mm tested)

This extension has some functional overlap with the "laser Cut Box"-Extension. However instead of supporting only closed boxes, this extension supports also open boxes and hinged boxes.

## Installation

### Quick Installation (Recommended)

**Windows:**
1. Double-click `install.bat`
2. Restart Inkscape
3. Find the extension under: **Extensions → Render → Box Maker**

**Linux/macOS/Git Bash:**
```bash
./install.sh
```
Then restart Inkscape and find the extension under: **Extensions → Render → Box Maker**

### Manual Installation

1. Locate your Inkscape extensions folder:
   - **Windows:** `C:\Users\[YourUsername]\AppData\Roaming\inkscape\extensions`
   - **Linux:** `~/.config/inkscape/extensions`
   - **macOS:** `~/Library/Application Support/org.inkscape.Inkscape/config/inkscape/extensions`
   - Or find it in Inkscape: **Edit → Preferences → System** (look for "User extensions")

2. Copy these files from the `src` folder to your extensions directory:
   - `boxmakerN.py`
   - `boxmakerNLib.py`
   - `boxmakerN.inx`

3. Restart Inkscape

## Usage

After installation:
1. Open Inkscape
2. Go to **Extensions → Render → Box Maker**
3. Configure your box dimensions and options
4. Click "Apply"

## Troubleshooting

If the extension doesn't appear:
- Check the extension-errors.log file in your Inkscape config directory
- Ensure all three files are in the extensions directory
- Verify Inkscape was completely restarted

 
 

