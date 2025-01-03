package game

import rl "vendor:raylib"

Vec3 :: rl.Vector3
Vec2 :: rl.Vector2

Game_State :: struct {
    textures: Textures,

    level: Level,
    level_runtime: Level_Runtime,

    message: cstring,
    message_time: f32,

    camera: rl.Camera,

    player: Player,
    weapons: Weapons,
    cur_weapon: Weapon_Type,
    ammo: int,

    editor: Editor,
    dbg: Debug_Data,
}

gs: Game_State // TODO
gss: ^Game_State // NOTE: gs is shadowed by the gs register in radbg, we need a different name
