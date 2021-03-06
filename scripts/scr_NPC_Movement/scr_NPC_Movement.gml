/// @description Basic NPC Movement Model
// ---------------------------------------------------------------------------------
#region Vertical Movement Control
if(vmov){
	vspd += sign(face)*acc;
	if(abs(vspd) > spd){
		vspd = sign(vspd)*spd;
	}
} else { // Apply Vertical Friction
	vspd -= sign(vspd)*fric;
	if(abs(vspd) <= 0){ // Prevent VSPD from looping miniscule +/- values.
		vspd = 0; // Also reset VSPD to 0 when Vertical Friction fully applied.
	}
}
#endregion

#region Horizontal Movement Control
if(hmov){
	hspd += sign(face)*acc;
	if(abs(hspd) > spd){
		hspd = sign(hspd)*spd;
	}
} else { // Apply Horizontal Friction
	hspd -= sign(hspd)*fric;
	if(abs(hspd) <= 0){ // Prevent HSPD from looping miniscule +/- values.
		hspd = 0; // Also reset HSPD to 0 when Horizontal Friction fully applied.	
	}
}
#endregion
