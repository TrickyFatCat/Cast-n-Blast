/// @description CalculateRecoil

var _recoilStep = recoilPowerCurrent * recoilFactor;
recoilPowerCurrent = Approach(recoilPowerCurrent, 0, _recoilStep);