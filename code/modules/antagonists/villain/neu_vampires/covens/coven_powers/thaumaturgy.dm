/datum/coven/thaumaturgy
	name = "thaumaturgy"
	desc = "Use a language once thought forgotten, carve their words and extract their powers."
	icon_state = "watcher"
	power_type = /datum/coven_power/thaumaturgy
	max_level = 2

/datum/coven_power/thaumaturgy/bloodvision
	name = "Exert Vitae"
	desc = "Launch a bolt which leeches the blood of those hit."
	level = 1
	check_flags = COVEN_CHECK_TORPORED
	vitae_cost = 10
	cooldown_length = 30 SECONDS

/datum/coven_power/thaumaturgy/bloodvision/activate()
	. = ..()

	ADD_TRAIT(owner, TRAIT_THERMAL_VISION, VAMPIRE_TRAIT)

	owner.update_sight()

/datum/coven_power/thaumaturgy/bloodvision/deactivate()
	. = ..()

	REMOVE_TRAIT(owner, TRAIT_THERMAL_VISION, VAMPIRE_TRAIT)

	owner.update_sight()


	grouped_powers = list(
	/datum/coven_power/thaumaturgy/bloodvision,
	/datum/coven_power/thaumaturgy/blood_rites
	)

/datum/coven_power/thaumaturgy/bloodsteal/post_gain()
	. = ..()
	var/datum/action/cooldown/spell/projectile/blood_steal/bsteal = new(owner)
	bsteal.Grant(owner)

/datum/action/cooldown/spell/projectile/blood_steal
	name = "Blood Steal"
	desc = "Launch a bolt which leeches the blood of those hit."
	button_icon_state = "bloodsteal"
	sound = 'sound/magic/vlightning.ogg'

	associated_skill = /datum/skill/magic/blood
	attunements = list(
		/datum/attunement/blood = 0.7,
	)

	charge_time = 3 SECONDS
	charge_drain = 1
	charge_slowdown = 0.7
	cooldown_time = 20 SECONDS
	spell_cost = 30
	spell_flags = SPELL_RITUOS
	projectile_type = /obj/projectile/magic/bloodsteal

/datum/action/cooldown/spell/projectile/blood_steal/on_cast_hit(atom/source, mob/living/carbon/human/firer, atom/hit, angle)
	. = ..()

	if(!firer || !ishuman(hit))
		return

	if(!firer.clan)
		return

	var/mob/living/carbon/human/H = hit
	if(H.bloodpool >= 500) // You'll only get vitae IF they have vitae.
		H.bloodpool -= 500
		firer.adjust_bloodpool(500)

/obj/projectile/magic/bloodsteal
	name = "blood steal"
	tracer_type = /obj/effect/projectile/tracer/bloodsteal
	muzzle_type = null
	impact_type = null
	hitscan = TRUE
	movement_type = FLYING
	projectile_piercing = PROJECTILE_PIERCE_HIT
	damage = 25
	damage_type = BRUTE
	nodamage = FALSE
	speed = 0.3
	light_color = "#e74141"
	light_outer_range =  7

/obj/projectile/magic/bloodsteal/on_hit(target)
	. = ..()
	if(ishuman(target))
		var/mob/living/carbon/human/H = target

		H.blood_volume = max(H.blood_volume - 45, 0)

		H.visible_message(
			span_danger("[H] has their blood ripped from their body!"),
			span_userdanger("Blood erupts from my body!"),
			span_hear("I hear a fluid spill..."),
		)
		new /obj/effect/decal/cleanable/blood/puddle(get_turf(H))

/datum/coven_power/thaumaturgy/blood_rites
	name = "Runic Writings"
	desc = "Remember the forgotten language, learn how to carve words of blood and summon their powers."
	level = 2
	check_flags = COVEN_CHECK_TORPORED
	vitae_cost = 10
	cooldown_length = 30 SECONDS
	grouped_powers = list(
	/datum/coven_power/thaumaturgy/bloo,
	/datum/coven_power/thaumaturgy/blood_rites
	)

/datum/coven_power/thaumaturgy/blood_rites/post_gain()
	owner.display_ui("Cultist")
