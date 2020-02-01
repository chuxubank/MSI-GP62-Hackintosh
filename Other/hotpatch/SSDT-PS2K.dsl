DefinitionBlock ("", "SSDT", 2, "hack", "ps2", 0)
{
	Name(_SB.PCI0.LPCB.PS2K.RMCF, Package()
	{
		"Keyboard", Package()
		{
			"Custom PS2 Map", Package()
			{
				Package(){},
				"e017=0",	// Fix power key
			},
		},
	})
}
//EOF
