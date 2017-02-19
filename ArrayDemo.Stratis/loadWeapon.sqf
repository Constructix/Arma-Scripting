_person = player;
_primaryWeaponItems = ["optic_tws_mg", "muzzle_snds_93mmg", "bipod_02_F_blk"];
_items = ["Rangefinder"];
removeAllWeapons _person;
// Add Cyrus Rifle
_person addWeapon "srifle_DMR_05_blk_F";			
// Add backpack
_person addBackpack "B_Carryall_khk";				
for [{_i=0}, { _i < count _primaryWeaponItems}, {_i= _i+1}] do
{
	player addPrimaryWeaponItem (_primaryWeaponItems select _i);
};
for [{_i=0}, { _i < count _items}, {_i=_i+1}] do
{
	player addItem (_items select _i);
	player assignItem (_items select _i);
};
(unitBackpack player) addMagazineCargoGlobal ["10Rnd_93x64_DMR_05_Mag", 14];

for[{_i=0},{_i< 5}, {_i=_i+1}] do{
	player addItemToVest "FirstAidKit";
};
/*player setpos [100,90];*/

