#!/bin/bash
echo ""
echo "  =========================================="
echo "        BITCOIN SHOP GAME"
echo "  =========================================="
echo ""
echo "  Would you like to open the Game App?"
echo ""
echo "  [Y] Yes - Launch Game"
echo "  [N] No  - Exit"
echo ""
read -p "Choose: " answer

if [ "$answer" = "Y" ] || [ "$answer" = "y" ]; then
    echo ""
    echo "  Opening Game App..."
    sleep 1
    SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
    if command -v xdg-open &> /dev/null; then
        xdg-open "$SCRIPT_DIR/game.html"
    elif command -v open &> /dev/null; then
        open "$SCRIPT_DIR/game.html"
    elif command -v firefox &> /dev/null; then
        firefox "$SCRIPT_DIR/game.html" &
    elif command -v chromium-browser &> /dev/null; then
        chromium-browser "$SCRIPT_DIR/game.html" &
    elif command -v google-chrome &> /dev/null; then
        google-chrome "$SCRIPT_DIR/game.html" &
    else
        echo "  No browser found. Open game.html manually."
    fi
else
    echo ""
    echo "  Goodbye!"
fi
