// .............. SELLPRICE/VALUE DEFINES ..................... //
// Basicallly material cost + work cost will be the value from now on. Needs work to value these things in comparison but its a simple way to get some consistency to it
// The material cost, work cost and bonus value should mostly be a under the hood thing so its easy to parse. Adjusting them will obviously affect end user costs.
// Keep values divisible by 2 and 3 and 4 without fractions, lets avoid money fractions guys.

// Material costs.
// theres two parts of what a material is worth, how hard is it to find it and how painful is it to collect, and how useful is it.
#define VALUE_OF_A_SIMPLE_MEAL 6	// some sort of base value, usually whats charged for a basic meal in the inn. Good measure to work from. Its comically low valued when looking at the actual invested material + effort vs smithing or crafting though
#define VALUE_OF_A_MUG_OF_ALE 2
#define VALUE_MONSTER_HEAD 	2
#define M_MISC		1	// random stuff like stones or fibres I guess
#define M_WOOD		2	// one small log.
#define M_CLOTH		2	// one cloth piece
#define M_GRAIN		1	// one threshed wheat grain
#define M_FUR		M_CLOTH * 2
#define M_SILK		M_CLOTH * 2	// one silk thread
#define M_SALT		4	// one salt, or raw ore, or coal
#define M_LEATHER	M_CLOTH * 2 // one hide
#define M_CLEATHER	M_LEATHER+W_MINOR // one cured hide
#define M_COPPER	10	// one copper bar
#define M_TIN		15	// one tin bar
#define M_IRON		12	// one iron bar  Twelve is a good number for it can be halved, cut in three and four without fractions. Multiples of 6
#define M_BRONZE	M_COPPER+W_MODERATE // bronze bar
#define M_STEELSLAG M_IRON+W_MAJOR
#define M_STEEL		M_STEELSLAG+W_MODERATE	// one steel bar
#define M_BSTEEL 	M_STEEL+M_SILVER+W_MAJOR // one blacksteel bar
#define M_SILVER	M_IRON*3	// one silver bar
#define M_GOLD		M_IRON*5	// one gold bar

// raw materials cost.
#define M_RAWIRON	5
#define M_RAWTIN	4
#define M_RAWCOPPER	2
#define M_RAWSILVER	8
#define M_RAWGOLD	10
#define M_GEMERALD	44
#define M_BLORTZ	88
#define M_TOPER		25
#define M_SAFFIRA	56
#define M_DORPEL	121
#define M_RONTZ		100
#define M_AMYTHORTZ	18
#define M_SHELL		10
#define M_ROSE		15
#define M_JADE		55
#define M_ONYXA		35
#define M_TURQ		80
#define M_CORAL		65
#define M_AMBER		55
#define M_OPAL		85

// Skill costs - a rarity value add, items requiring a high skill to produce are rarer and has more intrinsic value. So craftsmen can make a profit.
#define SKILL_1		2
#define SKILL_2		4
#define SKILL_3		6
#define SKILL_4		8
#define SKILL_5		10

// Work costs - valued VERY low compared to raw materials, this is a problem but at least its systemic and visible now and can be adjusted. Very rough, time to gather stuff, refine it etc etc as well as crafting time itself.
#define W_MINOR		2				// Less than 10 seconds of work
#define W_MODERATE	W_MINOR * 3		// Less than 1 minute of work, high skill required
#define W_MAJOR		W_MINOR * 6		// Less than 3 minutes of work

// Bonus value - totally arbitrary bonus slapped on. For magic items, unique stuff you want people to steal/plunder etc
#define BONUS_VALUE_TINY		6
#define BONUS_VALUE_SMALL		12
#define BONUS_VALUE_MODEST		BONUS_VALUE_SMALL * 2
#define BONUS_VALUE_BIG			BONUS_VALUE_SMALL * 4

#define GREED_SMALL_POTATO		BONUS_VALUE_TINY	// to get some profit margin to the offmap trading company and make economy make sense
#define GREEDY_TRADER			BONUS_VALUE_SMALL	// slap this on most stuff the trader imports (its the markup they pay their supplier, or just double value for stuff you want to keep rare)

/*--------------\
| VALUE DEFINES |	- If you find this confusing focus on this bit. Just use the value define below you think seems reasonable, done.
\--------------*/
// TINY is 1/3 of a bar, SMALL is 1/2
#define NO_MARKET_VALUE			null
#define VALUE_CHEAP_CLOTHING	M_CLOTH+W_MINOR
#define VALUE_FINE_CLOTHING		M_CLOTH+M_SILK+W_MODERATE
#define VALUE_ROYAL_CLOTHING	M_CLOTH+M_SILK+W_MAJOR+BONUS_VALUE_BIG
#define VALUE_WOOD_ITEM			M_WOOD+W_MINOR
#define VALUE_FANCY_HAT			M_SILK+W_MINOR+BONUS_VALUE_SMALL
#define VALUE_COPPER_SMALL_ITEM	VALUE_COPPER_ITEM/2
#define VALUE_COPPER_TINY_ITEM	M_COPPER/3+W_MODERATE/3
#define VALUE_COPPER_ITEM		M_COPPER+W_MINOR
#define VALUE_IRON_SMALL_ITEM	VALUE_IRON_ITEM/2
#define VALUE_IRON_TINY_ITEM	M_IRON/3+W_MODERATE/3
#define VALUE_IRON_ITEM			M_IRON+W_MINOR
#define VALUE_BRONZE_SMALL_ITEM	VALUE_BRONZE_ITEM/2
#define VALUE_BRONZE_TINY_ITEM	M_BRONZE/3+W_MODERATE/3
#define VALUE_BRONZE_ITEM		M_BRONZE+W_MINOR
#define VALUE_STEEL_SMALL_ITEM	VALUE_STEEL_ITEM/2
#define VALUE_STEEL_TINY_ITEM	M_STEEL/3+W_MODERATE/3
#define VALUE_STEEL_ITEM		M_STEEL+W_MODERATE
#define VALUE_SILVER_TINY_ITEM	M_SILVER/3+W_MODERATE/3
#define VALUE_SILVER_ITEM		M_SILVER+W_MODERATE
#define VALUE_GOLD_TINY_ITEM	M_GOLD/3+W_MODERATE/3
#define VALUE_GOLD_ITEM			M_GOLD+W_MODERATE
#define VALUE_GOLD_RARE_ITEM	VALUE_GOLD_ITEM+BONUS_VALUE_MODEST

#define VALUE_DOUBLE_COPPER_ITEM	VALUE_COPPER_ITEM+VALUE_COPPER_ITEM
#define VALUE_DOUBLE_STEEL_ITEM		VALUE_STEEL_ITEM+VALUE_STEEL_ITEM
#define VALUE_DOUBLE_IRON_ITEM		VALUE_IRON_ITEM+VALUE_IRON_ITEM
#define VALUE_DOUBLE_BRONZE_ITEM	VALUE_BRONZE_ITEM+VALUE_BRONZE_ITEM
#define VALUE_DOUBLE_SILVER_ITEM	VALUE_SILVER_ITEM+VALUE_SILVER_ITEM
#define VALUE_DOUBLE_GOLD_ITEM		VALUE_GOLD_ITEM+VALUE_GOLD_ITEM

#define VALUE_GEMERALD_ITEM		M_GEMERALD+W_MODERATE
#define VALUE_BLORTZ_ITEM		M_BLORTZ+W_MODERATE
#define VALUE_TOPER_ITEM		M_TOPER+W_MODERATE
#define VALUE_SAFFIRA_ITEM		M_SAFFIRA+W_MODERATE
#define VALUE_DORPEL_ITEM		M_DORPEL+W_MODERATE
#define VALUE_RONTZ_ITEM		M_RONTZ+W_MODERATE
#define VALUE_AMYTHORTZ_ITEM	M_JADE+W_MODERATE
#define VALUE_SHELL_ITEM		M_SHELL+W_MINOR
#define VALUE_SHELL_ITEM_FINE	M_SHELL+W_MODERATE // FINE = for the items that require more work and skill to make
#define VALUE_ROSE_ITEM			M_ROSE+W_MINOR
#define VALUE_ROSE_ITEM_FINE	M_ROSE+W_MODERATE
#define VALUE_JADE_ITEM			M_JADE+W_MINOR
#define VALUE_JADE_ITEM_FINE	M_JADE+W_MODERATE
#define VALUE_ONYX_ITEM			M_ONYXA+W_MINOR
#define VALUE_ONYX_ITEM_FINE	M_ONYXA+W_MODERATE
#define VALUE_TURQ_ITEM			M_TURQ+W_MINOR
#define VALUE_TURQ_ITEM_FINE	M_TURQ+W_MODERATE
#define VALUE_CORAL_ITEM		M_CORAL+W_MINOR
#define VALUE_CORAL_ITEM_FINE	M_CORAL+W_MODERATE
#define VALUE_AMBER_ITEM		M_AMBER+W_MINOR
#define VALUE_AMBER_ITEM_FINE	M_AMBER+W_MODERATE
#define VALUE_OPAL_ITEM			M_OPAL+W_MINOR
#define VALUE_OPAL_ITEM_FINE	M_OPAL+W_MODERATE

#define VALUE_PADDED_DRESS			M_SILK*5+W_MODERATE+BONUS_VALUE_TINY
#define VALUE_SMALL_LEATHER			M_LEATHER+W_MINOR
#define VALUE_MEDIUM_LEATHER		M_LEATHER*2+W_MINOR
#define VALUE_BIG_LEATHER			M_LEATHER*3+W_MINOR
#define VALUE_SMALL_FUR				M_FUR+M_MISC*2+W_MINOR

#define VALUE_LIGHT_GAMBESSON		M_CLOTH*2+M_MISC+W_MINOR
#define VALUE_GAMBESSON				M_CLOTH*4+M_MISC+W_MINOR
#define VALUE_HEAVY_GAMBESSON		M_CLOTH*6+M_MISC*4+W_MODERATE
#define VALUE_FUR_ARMOR				M_LEATHER*2+M_FUR+W_MINOR
#define VALUE_LEATHER_ARMOR			M_LEATHER*2+W_MINOR
#define VALUE_LEATHER_ARMOR_FUR		VALUE_LEATHER_ARMOR+M_SALT
#define VALUE_LEATHER_ARMOR_PLUS	VALUE_STEEL_SMALL_ITEM+M_LEATHER
#define VALUE_LEATHER_ARMOR_LORD	VALUE_LEATHER_ARMOR+BONUS_VALUE_MODEST
#define VALUE_IRON_ARMOR			VALUE_IRON_ITEM
#define VALUE_IRON_ARMOR_UNUSUAL	VALUE_IRON_ITEM+BONUS_VALUE_TINY
#define VALUE_STEEL_ARMOR			VALUE_STEEL_ITEM
#define VALUE_STEEL_ARMOR_FINE		VALUE_STEEL_ITEM+BONUS_VALUE_TINY
#define VALUE_SILVER_ARMOR			VALUE_SILVER_ITEM
#define VALUE_BRIGANDINE			VALUE_STEEL_ITEM*2+M_CLOTH+BONUS_VALUE_TINY
#define VALUE_FULL_PLATE			VALUE_STEEL_ITEM*3
#define VALUE_SNOWFLAKE_STEEL		VALUE_STEEL_ARMOR+BONUS_VALUE_MODEST

#define VALUE_LEATHER_HELMET		M_LEATHER*2+W_MINOR
#define VALUE_CHEAP_IRON_HELMET		VALUE_IRON_SMALL_ITEM
#define VALUE_IRON_HELMET			VALUE_IRON_ITEM
#define VALUE_CHEAP_STEEL_HELMET 	VALUE_STEEL_SMALL_ITEM
#define VALUE_STEEL_HELMET			VALUE_STEEL_ITEM
#define VALUE_SILVER_RING			VALUE_SILVER_TINY_ITEM
#define VALUE_GOLD_RING				VALUE_GOLD_TINY_ITEM
#define VALUE_MUSC_INSTRUMENT		VALUE_COMMON_GOODS
#define VALUE_RARE_MUSIC_INSTRUMENT	VALUE_COSTLY_THING


// Generic values - a lot of items lack materials for the above calculations so this is a super basic template to assign value to misc items
#define VALUE_WORTHLESS		1
#define VALUE_DIRT_CHEAP	6
#define VALUE_COMMON_GOODS	VALUE_DIRT_CHEAP * 2		// so 12
#define VALUE_COSTLY_THING	VALUE_COMMON_GOODS * 3		// 36
#define VALUE_LUXURY_THING	VALUE_COSTLY_THING * 2		// and 72
#define VALUE_EXTREME		VALUE_LUXURY_THING * 4		// and 288

#define VALUE_DRUGS			16

#define VALUE_MAGIC_MATERIAL	10
#define VALUE_MAGIC_ITEM_WEAK	VALUE_COSTLY_THING+BONUS_VALUE_MODEST
#define VALUE_MAGIC_ITEM_STRONG	VALUE_MAGIC_ITEM_WEAK+BONUS_VALUE_BIG
