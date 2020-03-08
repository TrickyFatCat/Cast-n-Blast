if (global.TimeFactor == 0)
{
	return;
}

ProcessObject(vfx_Dust, "ProcessDust");
ProcessObject(vfx_AirDust, "ProcessDust");
ProcessObject(vfx_Splatter, "ProcessSplatter");
ProcessObject(vfx_Smear, "ProcessSmear");
ProcessObject(vfx_Trail, "ProcessTrail");
ProcessObject(vfx_Limbs, "ProcessLimbs");