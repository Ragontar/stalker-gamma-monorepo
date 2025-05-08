class game_object {
    const action_type_count = 6
    const alifeMovementTypeMask = 0
    const alifeMovementTypeRandom = 1
    const animation = 2
    const dialog_pda_msg = 0
    const dummy = -1
    const enemy = 2
    const friend = 0
    const game_path = 0
    const info_pda_msg = 1
    const level_path = 1
    const movement = 0
    const neutral = 1
    const no_path = 3
    const no_pda_msg = 2
    const object = 5
    const particle = 4
    const patrol_path = 2
    const relation_attack = 1
    const relation_fight_help_human = 2
    const relation_fight_help_monster = 4
    const relation_kill = 0
    const sound = 3
    const watch = 1

    property bleeding
    property health
    property morale
    property power
    property psy_health
    property radiation

-- All types
	function id() const
    function position() const
    function level_vertex_id() const
    function game_vertex_id() const
    function section() const
    function name() const
    function clsid() const
	function parent() const
    function has_info(string)
    function dont_has_info(string)
    function give_info_portion(string)
    function disable_info_portion(string)

-- Testing
	function is_entity_alive()
	function is_inventory_item()
	function is_inventory_owner()
	function is_actor()
	function is_custom_monster()
	function is_weapon()
	function is_outfit()
	function is_scope()
	function is_silencer()
	function is_grenade_launcher()
	function is_weapon_magazined()
	function is_space_restrictor()
	function is_stalker()
	function is_anomaly()
	function is_monster()
	function is_trader()
	function is_hud_item()
	function is_artefact()
	function is_ammo()
	function is_weapon_gl()
	function is_inventory_box()

-- Player
	function get_actor_max_weight()
	function set_actor_max_weight(number)
	function get_actor_max_walk_weight()
	function set_actor_max_walk_weight(number)
	function get_actor_jump_speed()
	function set_actor_jump_speed(number)
	function get_actor_sprint_koef()
	function set_actor_sprint_koef(number)
	function get_actor_run_coef()
	function set_actor_run_coef(number)
	function get_actor_runback_coef()
	function set_actor_runback_coef(number)

-- NPCs
    function rank()
    function relation(game_object*)
	function goodwill(game_object*)
    function sympathy()
    function set_relation(enum ALife::ERelationType, game_object*)
    function set_community_goodwill(string, number)
    function set_sympathy(number)
	function general_goodwill(game_object*)
    function change_goodwill(number, game_object*)
    function force_set_goodwill(number, game_object*)
    function set_goodwill(number, game_object*)
    function see(const game_object*)
    function see(string)
    function max_health() const
    function alive() const
    function wounded() const
    function wounded(boolean)
    function critically_wounded()
    function kill(game_object*)
    function best_danger()
    function best_enemy()
    function get_enemy() const
    function set_enemy(game_object*)
    function mental_state() const
    function set_enemy_callback()
    function set_enemy_callback(const function<boolean>&)
    function set_enemy_callback(const function<boolean>&, object)
	function can_be_harmed() -- returns bool
	function set_can_be_harmed(boolean)
-- Human objects
    function character_name() -- some of these can be used for server objects as well
    function character_icon()
    function character_rank()
    function character_reputation()
    function character_community()
    function set_character_rank(number)
    function set_character_community(string, number, number)
	function set_character_icon(string)
    function change_character_reputation(number)
    function set_active_task(CGameTask*)
    function give_task(CGameTask*, number, boolean, number)
    function get_task_state(string)
    function get_task(string, boolean)
    function change_bleeding(number)
    function change_health(number)
    function change_morale(number)
    function change_power(number)
    function change_psy_health(number)
    function change_radiation(number)
	function get_total_weight()
    function memory_time(const game_object&)
    function max_ignore_monster_distance(const number&)
    function max_ignore_monster_distance() const
    function money()
    function give_money(number)
    function transfer_money(number, game_object*)
    function enable_talk()
    function is_talk_enabled()
    function disable_talk()
    function switch_to_talk()
    function stop_talk()
    function allow_break_talk_dialog(boolean)
    function is_talking()
    function can_throw_grenades() const
    function can_throw_grenades(boolean)
	-- items
    function active_slot()
    function active_item()
    function active_detector() const
	function show_detector()
	function hide_detector()
	function force_hide_detector() --  useful for item animations and grenade quickthrow
    function activate_slot(number)
    function item_in_slot(number)
	function item_on_belt(number)
	function is_on_belt(game_object*)
	function belt_count() const
	function move_to_ruck(game_object*)
	function move_to_slot(game_object*, number)
	function move_to_belt(game_object*)
    function eat(game_object*)
    function best_item()
    function best_weapon()
    function get_artefact()
    function drop_item(game_object*)
    function drop_item_and_teleport(game_object*, vector)
    function make_item_active(game_object*) -- force to slot.
    function take_items_enabled(boolean)
    function take_items_enabled() const
    function is_there_items_to_pickup() const
    function mark_item_dropped(game_object*)
	function get_inv_weight() const
	function get_inv_max_weight() const
    function can_select_weapon() const
    function can_select_weapon(boolean)
    function weapon_strapped() const
    function weapon_unstrapped() const
	function reload_weapon() -- for db.actor only, must comes after unload magazine cause it doesn't work with full mag
    function hide_weapon()
	function get_current_outfit() const
	function get_current_outfit_protection(number)
	function set_item(enum MonsterSpace::EObjectAction)
    function set_item(enum MonsterSpace::EObjectAction, game_object*)
    function set_item(enum MonsterSpace::EObjectAction, game_object*, number)
    function set_item(enum MonsterSpace::EObjectAction, game_object*, number, number)
    function iterate_inventory(function<void>, object)
	function iterate_ruck(function<void>, object)
	function iterate_belt(function<void>, object)
    function inventory_for_each(const function<void>&)
    function transfer_item(game_object*, game_object*)
    function is_trade_enabled()
    function switch_to_trade()
    function enable_trade()
    function disable_trade()
    function buy_condition(number, number)
    function sell_condition(number, number)
    function item_allow_trade(game_object*)
    function item_deny_trade(game_object*)
    function set_trader_global_anim(string)
	-- Trade profiles
    function buy_supplies(ini_file*, string)
    function buy_item_condition_factor(number)
	function buy_condition(ini_file*, string)
	function sell_condition(ini_file*, string)
	function buy_item_exponent(number)
	function sell_item_exponent(number)
    function add_animation(string, boolean, boolean)
    function add_animation(string, boolean, vector, vector, boolean)
    function get_script() const
    function enable_night_vision(boolean)
    function sound_voice_prefix() const
    function use_smart_covers_only() const
    function use_smart_covers_only(boolean)
    function external_sound_start(string)
    function get_dest_smart_cover_name()
    function memory_visible_objects() const
    function who_hit_name()
    function lookout_max_time(number)
    function lookout_max_time() const
    function in_current_loophole_fov(vector) const
    function clear_animations()
    function set_smart_cover_target_default(boolean)
    function get_physics_object()
    function idle_max_time(number)
    function idle_max_time() const
    function base_out_restrictions()
    function iterate_inventory_box(function<void>, object)
    function set_smart_cover_target_selector(function<void>)
    function set_smart_cover_target_selector(function<void>, object)
    function set_smart_cover_target_selector()
    function debug_planner(const action_planner*)
    function who_hit_section_name()
    function set_previous_point(number)
    function set_smart_cover_target_fire()
    function team() const
    function get_smart_cover_description() const
    function active_zone_contact(number)
    function set_smart_cover_target_lookout()
    function action_count() const
    function set_dest_smart_cover(string)
    function set_dest_smart_cover()
    function get_dest_smart_cover()
    function restore_sound_threshold()
    function object_count() const
    function animation_slot() const
    function get_current_direction()
    function action() const
    function give_talk_message(string, string, string)
    function not_yet_visible_objects() const
    function set_mental_state(enum MonsterSpace::EMentalState)
    function squad() const
    function reset_action_queue()
    function burer_set_force_gravi_attack(boolean)
    function set_actor_direction(number)
    function add_restrictions(string, string)
    function get_monster_hit_info()
    function memory_hit_objects() const
    function bind_object(object_binder*)
    function get_bone_id(string) const
    function binded_object()
    function path_completed() const
    function release_stand_sleep_animation()
    function set_fastcall(const function<boolean>&, object)
    function set_smart_cover_target(vector)
    function set_smart_cover_target(game_object*)
    function set_smart_cover_target()
    function set_start_point(number)
    function set_fov(number)
    function set_path_type(enum MovementManager::EPathType)
    function restore_max_ignore_monster_distance()
    function set_collision_off(boolean)
    function enable_memory_object(game_object*, boolean)
    function lookout_min_time(number)
    function lookout_min_time() const
    function animation_count() const
    function disable_inv_upgrade()
    function memory_sound_objects() const
    function get_hanging_lamp()
    function get_force_anti_aim()
    function enable_inv_upgrade()
    function set_smart_cover_target_idle()
    function invulnerable() const
    function invulnerable(boolean)
    function movement_type() const
    function explode(number)
    function remove_home()
    function set_dest_level_vertex_id(number)
    function deadbody_closed(boolean)
    function register_door_for_npc()
    function get_script_name() const
    function spawn_ini() const
    function get_campfire()
    function get_movement_speed() const
    function set_body_state(enum MonsterSpace::EBodyState)
    function in_loophole_fov(string, string, vector) const
    function set_invisible(boolean)
    function in_smart_cover() const
    function play_sound(number)
    function play_sound(number, number)
    function play_sound(number, number, number)
    function play_sound(number, number, number, number)
    function play_sound(number, number, number, number, number)
    function play_sound(number, number, number, number, number, number)
    function get_visual_name() const
    function set_movement_selection_type(enum ESelectionType)
    function disable_anomaly()
    function motivation_action_manager(game_object*)
    function bone_position(string) const
    function object(string)
    function object(number)
	function object_id(number) -- get game object of specified ID that belongs to an owner, return 0 if not found?
    function fov() const
    function set_default_panic_threshold()
    function set_actor_relation_flags(flags32)
    function lock_door_for_npc()
    function is_body_turning() const
    function set_dest_game_vertex_id(number)
    function marked_dropped(game_object*)
    function patrol_path_make_inactual()
    function fake_death_stand_up()
    function remove_sound(number)
    function set_detail_path_type(enum DetailPathManager::EDetailPathType)
    function extrapolate_length() const
    function extrapolate_length(number)
    function death_sound_enabled(boolean)
    function death_sound_enabled() const
    function play_cycle(string)
    function play_cycle(string, boolean)
    function set_capture_anim(game_object*, string, const vector&, number)
    function patrol()
    function story_id() const
    function in_restrictions()
    function unlock_door_for_npc()
    function visibility_threshold() const
    function sniper_update_rate(boolean)
    function sniper_update_rate() const
    function get_current_point_index()
    function stop_particles(string, string)
    function set_alien_control(boolean)
    function inv_box_can_take(boolean)
    function set_patrol_path(string, enum PatrolPathManager::EPatrolStartType, enum PatrolPathManager::EPatrolRouteType, boolean)
    function allow_sprint(boolean)
    function special_danger_move(boolean)
    function special_danger_move()
    function is_level_changer_enabled()
    function enable_level_changer(boolean)
    function actor_look_at_point(vector)
    function set_const_force(const vector&, number, number)
    function aim_bone_id(string)
    function aim_bone_id() const
    function restore_default_start_dialog()
    function change_team(number, number, number)
    function set_trader_sound(string, string)
    function aim_time(game_object*, number)
    function aim_time(game_object*)
    function direction() const
    function body_state() const
    function skip_transfer_enemy(boolean)
    function idle_min_time(number)
    function idle_min_time() const
    function info_add(string)
    function sight_params()
    function set_sight(enum SightManager::ESightType, vector*, number)
    function set_sight(enum SightManager::ESightType, boolean, boolean)
    function set_sight(enum SightManager::ESightType, vector&, boolean)
    function set_sight(enum SightManager::ESightType, vector*)
    function set_sight(game_object*)
    function set_sight(game_object*, boolean)
    function set_sight(game_object*, boolean, boolean)
    function set_sight(game_object*, boolean, boolean, boolean)
    function set_visual_memory_enabled(boolean)
    function remove_restrictions(string, string)
    function get_holder_class()
    function disable_hit_marks(boolean)
    function disable_hit_marks() const
    function location_on_path(number, vector*)
    function sound_prefix() const
    function sound_prefix(string)
    function set_task_state(enum ETaskState, string)
    function show_condition(ini_file*, string)
    function add_sound(string, number, enum ESoundTypes, number, number, number)
    function add_sound(string, number, enum ESoundTypes, number, number, number, string)
    function restore_ignore_monster_threshold()
    function set_queue_size(number)
    function make_object_visible_somewhen(game_object*)
    function jump(const vector&, number)
    function restore_weapon()
    function inv_box_can_take_status()
    function force_visibility_state(number)
    function night_vision_enabled() const
    function start_particles(string, string)
    function enable_vision(boolean)
    function vertex_in_direction(number, vector, number) const
    function set_dest_loophole(string)
    function set_dest_loophole()
    function detail_path_type() const
    function group_throw_time_interval() const
    function group_throw_time_interval(number)
    function is_inv_box_empty()
    function target_body_state() const
    function info_clear()
    function head_orientation() const
    function inside(const vector&, number) const
    function inside(const vector&) const
    function set_nonscript_usable(boolean)
    function set_tip_text_default()
    function set_tip_text(string)
    function get_current_holder()
    function get_physics_shell() const
    function set_actor_position(vector)
    function unregister_in_combat()
    function remove_all_restrictions()
    function get_car()
    function in_current_loophole_range(vector) const
    function mass() const
    function active_sound_count()
    function active_sound_count(boolean)
    function get_anomaly_power()
    function enable_anomaly()
    function get_actor_relation_flags() const
    function set_sound_mask(number)
    function community_goodwill(string)
    function vision_enabled() const
    function is_door_locked_for_npc() const
    function fake_death_fall_down()
    function ignore_monster_threshold(number)
    function ignore_monster_threshold() const
    function target_movement_type() const
    function attachable_item_enabled() const
    function sniper_fire_mode(boolean)
    function sniper_fire_mode() const
    function set_smart_cover_target_fire_no_lookout()
    function on_door_is_open()
    function profile_name()
    function get_start_dialog()
    function set_start_dialog(string)
    function set_level_changer_invitation(string)
    function run_talk_dialog(game_object*, boolean)
    function set_custom_panic_threshold(number)
    function deadbody_can_take_status()
    function switch_to_upgrade()
    function on_door_is_closed()
    function apply_loophole_direction_distance(number)
    function apply_loophole_direction_distance() const
    function out_restrictions()
    function enable_attachable_item(boolean)
    function disable_show_hide_sounds(boolean)
    function is_inv_upgrade_enabled()
    function set_home(string, number, number, boolean, number)
    function set_home(number, number, number, boolean, number)
    function poltergeist_get_actor_ignore()
    function burer_get_force_gravi_attack()
    function inv_box_closed(boolean, string)
    function set_callback(enum GameObject::ECallbackType, const function<void>&)
    function set_callback(enum GameObject::ECallbackType, const function<void>&, object)
    function set_callback(enum GameObject::ECallbackType)
    function get_corpse() const
    function get_enemy_strength() const
    function path_type() const
    function range() const
    function set_anomaly_power(number)
    function deadbody_can_take(boolean)
    function give_talk_message2(string, string, string, string)
    function set_vis_state(number)
    function give_game_news(string, string, string, number, number)
    function give_game_news(string, string, string, number, number, number)
    function death_time() const
    function get_visibility_state()
    function center()
    function best_cover(const vector&, const vector&, number, number, number)
    function accuracy() const
    function set_desired_position()
    function set_desired_position(const vector*)
    function poltergeist_set_actor_ignore(boolean)
    function accessible(const vector&)
    function accessible(number)
    function suitable_smart_cover(game_object*)
    function deadbody_closed_status()
    function set_patrol_extrapolate_callback()
    function set_patrol_extrapolate_callback(const function<boolean>&)
    function set_patrol_extrapolate_callback(const function<boolean>&, object)
    function set_range(number)
    function attachable_item_load_attach(string)
    function in_loophole_range(string, string, vector) const
    function set_force_anti_aim(boolean)
    function force_stand_sleep_animation(number)
    function add_combat_sound(string, number, enum ESoundTypes, number, number, number, string)
    function command(const entity_action*, boolean)
    function hit(hit*)
    function movement_enabled(boolean)
    function movement_enabled()
    function berserk()
    function accessible_nearest(const vector&, vector&)
    function set_movement_type(enum MonsterSpace::EMovementType)
    function group() const
    function script(boolean, string)
    function safe_cover(const vector&, number, number)
    function can_script_capture() const
    function base_in_restrictions()
    function set_trader_head_anim(string)
    function unregister_door_for_npc()
    function set_npc_position(vector)
    function movement_target_reached()
    function set_desired_direction()
    function set_desired_direction(const vector*)
    function get_helicopter()
    function get_sound_info()
    function find_best_cover(vector)
    function register_in_combat()
    function set_sound_threshold(number)
    function memory_position(const game_object&)
    function set_visual_name(string)
    function external_sound_stop()
    function inv_box_closed_status()
    function target_mental_state() const
    function set_manual_invisibility(boolean)
    function action_by_index(number)

-- Anomalies objects
	function get_anomaly_radius()
	function set_anomaly_radius(number)
	function set_anomaly_position(number, number, number) -- x,y,z

-- Item objects
    function condition() const
    function set_condition(number)
	function weight() const
	function set_weight(number)
    function cost() const
	-- Weapons/Outfits
	function install_upgrade(string)
	function has_upgrade(string)
	function iterate_installed_upgrades(function<void>) -- function (string, game_object*) - return true to stop iterating
	-- Outfits
	function get_additional_max_weight()
	function set_additional_max_weight(number)
	function get_additional_max_walk_weight()
	function set_additional_max_walk_weight(number)
	-- Weapons
	function get_main_weapon_type() const
	function set_main_weapon_type(number)
	function get_weapon_type() const
	function set_weapon_type(number)
	function get_ammo_total() const
	function get_ammo_in_magazine() const
	function set_ammo_elapsed(number)
	function unload_magazine(boolean) -- (true) to retrieve ammo, otherwise ammo vanish
	function force_unload_magazine(boolean) -- (true) to retrieve ammo, otherwise ammo vanish (also works when weapon is jammed)
	function get_ammo_type()
	function set_ammo_type(number)
	function has_ammo_type(number)
	function get_state() const
	function weapon_in_grenade_mode()
	function get_weapon_substate() const
	function switch_state(number)
    function weapon_is_scope()
    function weapon_scope_status()
    function weapon_silencer_status()
    function weapon_grenadelauncher_status()
    function weapon_is_silencer()
    function weapon_is_grenadelauncher()
	function weapon_addon_attach(game_object*)
	function weapon_addon_detach(string)
	function set_queue_size(number)
	-- Ammo
	function ammo_get_count() const
	function ammo_set_count(number)
	function ammo_box_size() const
	-- Multiuse items
	function get_max_uses() const
	function get_remaining_uses() const
	function set_remaining_uses(number)
	-- Devices
	function power_critical() const
	-- PDA
	function set_psy_factor(number)-- [0-1]
	function psy_factor() const
	-- Torch
	function enable_torch(boolean)
    function torch_enabled() const

-- Class casting. obj:cast_CustomOutfit() allows you to access CCustomOutfit class methods if the object is an outfit
	-- All classes and their methods are listed in this file
	function cast_Actor()
	function cast_Car()
	function cast_Heli()
	function cast_InventoryOwner()
	function cast_InventoryBox()
	function cast_CustomZone()
	function cast_TorridZone()
	function cast_MosquitoBald()
	function cast_ZoneCampfire()
	function cast_InventoryItem()
	function cast_CustomOutfit()
	function cast_Helmet()
	function cast_Artefact()
	function cast_Ammo()
	function cast_Weapon()
	function cast_WeaponMagazined()
	function cast_WeaponMagazinedWGrenade()
	function cast_EatableItem()
	function cast_Medkit()
	function cast_Antirad()
	function cast_FoodItem()
	function cast_BottleItem()
}