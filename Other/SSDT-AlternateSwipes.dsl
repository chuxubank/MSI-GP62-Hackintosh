// This sample shows how to remap the the default swipes to Ctrl+Arrows,
// instead of the Ctrl+Option+Arrows
DefinitionBlock ("", "SSDT", 2, "hack", "ps2", 0)
{
    Name(_SB.PCI0.LPCB.PS2K.RMCF, Package()
    {
        "Keyboard", Package()
        {
            "ActionSwipeUp", "3b d, 7e d, 7e u, 3b u",
            "ActionSwipeDown", "3b d, 7d d, 7d u, 3b u",
            "ActionSwipeLeft", "3b d, 7b d, 7b u, 3b u",
            "ActionSwipeRight", "3b d, 7c d, 7c u, 3b u",
        },
    })
}
//EOF
