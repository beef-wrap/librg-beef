using System;

namespace librg_Beef;

extension librg
{
    // file: header/query.h

    // =======================================================================//
    // !
    // ! World data/query methods
    // !
    // =======================================================================//

    [CLink] public static extern int32_t librg_world_fetch_all(librg_world* world, int64_t* entity_ids, size_t* entity_amount);

    [CLink] public static extern int32_t librg_world_fetch_chunk(librg_world* world, librg_chunk chunk, int64_t* entity_ids, size_t* entity_amount);

    [CLink] public static extern int32_t librg_world_fetch_chunkarray(librg_world* world, librg_chunk* chunks, size_t chunk_amount, int64_t* entity_ids, size_t* entity_amount);

    [CLink] public static extern int32_t librg_world_fetch_owner(librg_world* world, int64_t owner_id, int64_t* entity_ids, size_t* entity_amount);

    [CLink] public static extern int32_t librg_world_fetch_ownerarray(librg_world* world, int64_t* owner_ids, size_t owner_amount, int64_t* entity_ids, size_t* entity_amount);

    [CLink] public static extern int32_t librg_world_query(librg_world* world, int64_t owner_id, uint8_t chunk_radius, int64_t* entity_ids, size_t* entity_amount);
}