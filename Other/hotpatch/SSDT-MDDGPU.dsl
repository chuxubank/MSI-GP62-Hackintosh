// For disabling the discrete GPU
DefinitionBlock("", "SSDT", 2, "hack", "_DDGPU", 0)
{
	External(\_SB.PCI0.PEG0.PEGP._OFF, MethodObj)
	External(RWAK, MethodObj)
	External(\_SB.PCI0.NWAK, MethodObj)
	External(\_SB.PCI0.LPCB.SWAK, MethodObj)
	External(WAKP, PkgObj)

	Method(_SB.PCI0.PEG0.PEGP._INI) { _OFF() }

	Method (_WAK, 1, NotSerialized)
	{
		RWAK (Arg0)
		\_SB.PCI0.NWAK (Arg0)
		\_SB.PCI0.LPCB.SWAK (Arg0)
		//disable discrete GPU when wake
		\_SB.PCI0.PEG0.PEGP._OFF()
		Return (WAKP)
	}
}