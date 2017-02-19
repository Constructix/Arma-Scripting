/*  adds a silencer to the current weapon. */
_player = _this select 1;
removeAllPrimaryWeaponItems player;
player addWeaponItem ["arifle_MX_GL_ACO_F", "1Rnd_HE_Grenade_shell"];
/*
player addPrimaryWeaponItem "muzzle_snds_H";
player addPrimaryWeaponItem "optic_Aco";
player addWeapon "M9";*/