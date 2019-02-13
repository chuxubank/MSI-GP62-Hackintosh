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
			
			//remap the Left Control to CapsLock, and CapsLock to Left Control.
			"Custom ADB Map", Package()
			{
				Package(){},
				"3a=3b",	// 3a is PS2 for capslock, 3b is ADB for left control (normal map is 3a=39)
				"1d=39",	// 1d is PS2 for left control, 39 is ADB for caps lock (normal map is 1d=3b)
			},

		},
	})
}
//EOF
