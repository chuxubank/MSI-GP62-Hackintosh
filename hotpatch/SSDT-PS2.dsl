// This sample shows how to remap the the default swipes to Ctrl+Arrows,
// instead of the Ctrl+Option+Arrows
DefinitionBlock ("", "SSDT", 2, "hack", "ps2", 0)
{
	Name(_SB.PCI0.LPCB.PS2K.RMCF, Package()
	{
		"Keyboard", Package()
		{
			//ctrl + up arrow
			"ActionSwipeUp", "3b d, 7e d, 7e u, 3b u",
			//ctrl + down arrow
			"ActionSwipeDown", "3b d, 7d d, 7d u, 3b u",
			//ctrl + right arrow
			"ActionSwipeLeft", "3b d, 7c d, 7c u, 3b u",
			//ctrl + left arrow
			"ActionSwipeRight", "3b d, 7b d, 7b u, 3b u",
			
			"Swap capslock and left control", ">y",
			
			"Custom PS2 Map", Package()
			{
				Package(){},
				"e017=0",	// disable power key
			},
		},
	})
}
//EOF
