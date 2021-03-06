/obj/item/clothing/suit/leathercoat
	name = "leather coat"
	desc = "A flowing, black coat."
	icon = 'tauceti/items/clothing/suits/leathercoat.dmi'
	tc_custom = 'tauceti/items/clothing/suits/leathercoat.dmi'
	icon_state = "leathercoat"
	item_state = "leathercoat"
	flags = FPRINT | TABLEPASS

/obj/item/clothing/suit/poncho
	name = "poncho"
	desc = "Your classic, non-racist poncho."
	icon = 'tauceti/items/clothing/suits/suits.dmi'
	tc_custom = 'tauceti/items/clothing/suits/suits.dmi'
	icon_state = "classicponcho"
	item_state = "classicponcho"

/obj/item/clothing/suit/poncho/green
	name = "green poncho"
	desc = "Your classic, non-racist poncho. This one is green."
	icon = 'tauceti/items/clothing/suits/suits.dmi'
	tc_custom = 'tauceti/items/clothing/suits/suits.dmi'
	icon_state = "greenponcho"
	item_state = "greenponcho"

/obj/item/clothing/suit/poncho/rainbow
	name = "green poncho"
	desc = "Your classic, non-racist poncho. This one is rainbow."
	icon = 'tauceti/items/clothing/suits/suits.dmi'
	tc_custom = 'tauceti/items/clothing/suits/suits.dmi'
	icon_state = "rainbowponcho"
	item_state = "rainbowponcho"

/obj/item/clothing/suit/poncho/red
	name = "red poncho"
	desc = "Your classic, non-racist poncho. This one is red."
	icon = 'tauceti/items/clothing/suits/suits.dmi'
	tc_custom = 'tauceti/items/clothing/suits/suits.dmi'
	icon_state = "redponcho"
	item_state = "redponcho"

/obj/item/clothing/suit/poncho/ponchoshame
	name = "poncho of shame"
	desc = "Forced to live on your shameful acting as a fake mexican, you and your poncho have grown inseperable. Literally."
	icon = 'tauceti/items/clothing/suits/suits.dmi'
	tc_custom = 'tauceti/items/clothing/suits/suits.dmi'
	icon_state = "ponchoshame"
	item_state = "ponchoshame"

//Mafia
/obj/item/clothing/suit/browntrenchcoat
	name = "brown trench coat"
	desc = "It makes you stand out. Just the opposite of why it's typically worn. Nice try trying to blend in while wearing it."
	icon = 'tauceti/items/clothing/suits/mafia.dmi'
	tc_custom = 'tauceti/items/clothing/suits/mafia.dmi'
	icon_state = "trenchcoat_brown"
	item_state = "trenchcoat_brown"

/obj/item/clothing/suit/blacktrenchcoat
	name = "black trench coat"
	desc = "That shade of black just makes you look a bit more evil. Good for those mafia types."
	icon = 'tauceti/items/clothing/suits/mafia.dmi'
	tc_custom = 'tauceti/items/clothing/suits/mafia.dmi'
	icon_state = "trenchcoat_black"
	item_state = "trenchcoat_black"

/obj/item/clothing/suit/storage/det_suit/max_payne
	desc = "An 20th-century multi-purpose trenchcoat. Someone who wears this means serious business."
	icon = 'tauceti/items/clothing/suits/suits.dmi'
	tc_custom = 'tauceti/items/clothing/suits/suits.dmi'
	icon_state = "maxcoat"

/obj/item/clothing/suit/necromancer_hoodie
	name = "necromancer hoodie"
	desc = "This suit says to you 'hush'!"
	icon = 'tauceti/items/clothing/suits/suits.dmi'
	tc_custom = 'tauceti/items/clothing/suits/suits.dmi'
	icon_state = "necromancer"
	item_state = "necromancer"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS

/obj/item/clothing/suit/chaplain_hoodie/brown
	name = "brown robe"
	icon = 'tauceti/items/clothing/suits/suits.dmi'
	tc_custom = 'tauceti/items/clothing/suits/suits.dmi'
	icon_state = "brown_robe"
	item_state = "brown_robe"

/obj/item/clothing/suit/chaplain_hoodie/green
	name = "green robe"
	icon = 'tauceti/items/clothing/suits/suits.dmi'
	tc_custom = 'tauceti/items/clothing/suits/suits.dmi'
	icon_state = "green_robe"
	item_state = "green_robe"

/obj/item/clothing/suit/chaplain_hoodie/black
	name = "black robe"
	icon = 'tauceti/items/clothing/suits/suits.dmi'
	tc_custom = 'tauceti/items/clothing/suits/suits.dmi'
	icon_state = "black_robe"

/obj/item/clothing/suit/armor/vest/cuirass
	name = "cuirass"
	desc = "A metal armor, which cover torso."
	icon = 'tauceti/items/clothing/suits/suits.dmi'
	tc_custom = 'tauceti/items/clothing/suits/suits.dmi'
	icon_state = "cuirass"
	item_state = "cuirass"
	blood_overlay_type = "armor"
	flags = FPRINT | TABLEPASS | THICKMATERIAL
	armor = list(melee = 50, bullet = 30, laser = 10, energy = 10, bomb = 25, bio = 0, rad = 0)

/obj/item/clothing/suit/goodman_jacket
	name = "Brown jacket"
	desc = "A good jacket for good men."
	icon = 'tauceti/items/clothing/suits/suits.dmi'
	tc_custom = 'tauceti/items/clothing/suits/suits.dmi'
	icon_state = "gmjacket"

/obj/item/clothing/suit/goodman_jacket/verb/toggle()
	set name = "Toggle Jacket Buttons"
	set category = "Object"
	set src in usr

	if(!usr.canmove || usr.stat || usr.restrained())
		return 0

	if(src.icon_state == "gmjacket_open")
		src.icon_state = "gmjacket"
		src.item_state = "gmjacket"
		usr << "You button up the suit jacket."
	else if(src.icon_state == "gmjacket")
		src.icon_state = "gmjacket_open"
		src.item_state = "gmjacket_open"
		usr << "You unbutton the suit jacket."
	else
		usr << "You button-up some imaginary buttons on your [src]."
		return
	usr.update_inv_wear_suit()

