#!/bin/bash
# Installation script for InkScape Box Maker Extension
# Compatible with Inkscape 1.2, 1.3, and 1.4.3

echo "========================================"
echo "InkScape Box Maker - Installation"
echo "========================================"
echo ""

# Determine the Inkscape extensions directory based on OS
if [[ "$OSTYPE" == "darwin"* ]]; then
    # macOS
    INKSCAPE_EXT_DIR="$HOME/Library/Application Support/org.inkscape.Inkscape/config/inkscape/extensions"
elif [[ "$OSTYPE" == "msys" || "$OSTYPE" == "cygwin" ]]; then
    # Windows (Git Bash/MINGW)
    INKSCAPE_EXT_DIR="$APPDATA/inkscape/extensions"
else
    # Linux
    INKSCAPE_EXT_DIR="$HOME/.config/inkscape/extensions"
fi

# Get the script directory
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Check if the extensions directory exists, create if not
if [ ! -d "$INKSCAPE_EXT_DIR" ]; then
    echo "Creating Inkscape extensions directory..."
    mkdir -p "$INKSCAPE_EXT_DIR"
    echo "Directory created: $INKSCAPE_EXT_DIR"
    echo ""
fi

echo "Installing Box Maker extension..."
echo ""

# Copy the extension files
echo "Copying boxmakerN.py..."
cp -f "$SCRIPT_DIR/src/boxmakerN.py" "$INKSCAPE_EXT_DIR/" || { echo "Error copying boxmakerN.py"; exit 1; }

echo "Copying boxmakerNLib.py..."
cp -f "$SCRIPT_DIR/src/boxmakerNLib.py" "$INKSCAPE_EXT_DIR/" || { echo "Error copying boxmakerNLib.py"; exit 1; }

echo "Copying boxmakerN.inx..."
cp -f "$SCRIPT_DIR/src/boxmakerN.inx" "$INKSCAPE_EXT_DIR/" || { echo "Error copying boxmakerN.inx"; exit 1; }

# Make Python files executable
chmod +x "$INKSCAPE_EXT_DIR/boxmakerN.py"
chmod +x "$INKSCAPE_EXT_DIR/boxmakerNLib.py"

echo ""
echo "========================================"
echo "Installation completed successfully!"
echo "========================================"
echo ""
echo "Extension files installed to:"
echo "$INKSCAPE_EXT_DIR"
echo ""
echo "Please restart Inkscape to use the extension."
echo "You'll find it under: Extensions > Render > Box Maker"
echo ""
