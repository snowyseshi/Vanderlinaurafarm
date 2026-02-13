
/obj/item/clothing/wrists/wrappings
	name = "solar wrappings"
	desc = "Common Astratan vestments for the forearms."
	slot_flags = ITEM_SLOT_WRISTS
	icon_state = "wrappings"
	item_state = "wrappings"

/obj/item/clothing/wrists/nocwrappings
	name = "moon wrappings"
	slot_flags = ITEM_SLOT_WRISTS
	icon_state = "nocwrappings"
	item_state = "nocwrappings"

/obj/item/clothing/wrists/silverbracelet
	name = "silver bracelets"
	slot_flags = ITEM_SLOT_WRISTS
	icon_state = "bracelets"
	sellprice = VALUE_SILVER_ITEM

/obj/item/clothing/wrists/silverbracelet/Initialize()
	. = ..()
	enchant(/datum/enchantment/silver)

/obj/item/clothing/wrists/gem
	name = "gem bracelet base"
	desc = "timbers trunk, this isnt supposed to show up! report this immediately, TOODLES!"
	slot_flags = ITEM_SLOT_WRISTS
	nodismemsleeves = TRUE
	icon = 'icons/roguetown/clothing/wrists.dmi'
	mob_overlay_icon = 'icons/roguetown/clothing/onmob/gembracelet.dmi'
	sleeved = 'icons/roguetown/clothing/onmob/helpers/sleeves_gembracelet.dmi'
	abstract_type = /obj/item/clothing/wrists/gem

/obj/item/clothing/wrists/gem/jadebracelet
	name = "joapstone bracelets"
	desc = "A set of bracelets carved out of joapstone."
	slot_flags = ITEM_SLOT_WRISTS
	icon_state = "br_jade"
	sellprice = VALUE_JADE_ITEM

/obj/item/clothing/wrists/gem/turqbracelet
	name = "ceruleabaster bracelets"
	desc = "A set of bracelets carved out of ceruleabaster."
	slot_flags = ITEM_SLOT_WRISTS
	icon_state = "br_turq"
	sellprice = VALUE_TURQ_ITEM

/obj/item/clothing/wrists/gem/onyxabracelet
	name = "onyxa bracelets"
	desc = "A set of bracelets carved out of onyxa."
	slot_flags = ITEM_SLOT_WRISTS
	icon_state = "br_onyxa"
	sellprice = VALUE_ONYX_ITEM

/obj/item/clothing/wrists/gem/coralbracelet
	name = "aoetal bracelets"
	desc = "A set of bracelets carved out of aoetal."
	slot_flags = ITEM_SLOT_WRISTS
	icon_state = "br_coral"
	sellprice = VALUE_CORAL_ITEM

/obj/item/clothing/wrists/gem/amberbracelet
	name = "petriamber bracelets"
	desc = "A set of bracelets carved out of petriamber."
	slot_flags = ITEM_SLOT_WRISTS
	icon_state = "br_amber"
	sellprice = VALUE_AMBER_ITEM

/obj/item/clothing/wrists/gem/shellbracelet
	name = "shell bracelets"
	desc = "A set of bracelets carved out of shell."
	slot_flags = ITEM_SLOT_WRISTS
	icon_state = "br_shell"
	sellprice = VALUE_SHELL_ITEM

/obj/item/clothing/wrists/gem/rosebracelet
	name = "rosellusk bracelets"
	desc = "A set of bracelets carved out of rosellusk."
	slot_flags = ITEM_SLOT_WRISTS
	icon_state = "br_rose"
	sellprice = VALUE_ROSE_ITEM

/obj/item/clothing/wrists/gem/opalbracelet
	name = "opaloise bracelets"
	desc = "A set of bracelets carved out of opaloise."
	slot_flags = ITEM_SLOT_WRISTS
	icon_state = "br_opal"
	sellprice = VALUE_OPAL_ITEM

/obj/item/clothing/wrists/goldbracelet
	name = "gold bracelets"
	slot_flags = ITEM_SLOT_WRISTS
	icon_state = "braceletg"
	sellprice = VALUE_GOLD_ITEM

/obj/item/clothing/wrists/bracers/rare
	abstract_type = /obj/item/clothing/wrists/bracers/rare

/obj/item/clothing/wrists/bracers/rare/hoplite
	name = "ancient bracers"
	desc = "Stalwart bronze bracers, from an age long past."
	icon_state = "aasimarwrist"
	item_state = "aasimarwrist"
	armor = list("blunt" = 70, "slash" = 70, "stab" = 70,  "piercing" = 50, "fire" = 0, "acid" = 0) // Less protection than steel
	smeltresult = /obj/item/ingot/bronze

//copper bracers

/obj/item/clothing/wrists/bracers/copper
	name = "copper bracers"
	desc = "Copper forearm guards that offer some protection while looking rather stylish."
	body_parts_covered = ARMS
	icon_state = "copperarm"
	item_state = "copperarm"
	armor = list("blunt" = 50, "slash" = 50, "stab" = 50,  "piercing" = 60, "fire" = 0, "acid" = 0)
	prevent_crits = list(BCLASS_LASHING, BCLASS_BITE, BCLASS_CUT, BCLASS_CHOP, BCLASS_BLUNT, BCLASS_TWIST)
	smeltresult = /obj/item/ingot/copper
	blocksound = PLATEHIT
	resistance_flags = FIRE_PROOF
	anvilrepair = /datum/skill/craft/armorsmithing
	sewrepair = FALSE

//Queensleeves
/obj/item/clothing/wrists/royalsleeves
	name = "royal sleeves"
	desc = "Sleeves befitting an elaborate gown."
	slot_flags = ITEM_SLOT_WRISTS
	icon_state = "royalsleeves"
	item_state = "royalsleeves"
	detail_tag = "_detail"
	detail_color = CLOTHING_SOOT_BLACK
	uses_lord_coloring = LORD_PRIMARY
