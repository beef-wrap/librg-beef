using System;
using System.Interop;

namespace librg;

extension librg
{
    // file: header/entity.h

    // =======================================================================//
    // !
    // ! Basic entity manipulation
    // !
    // =======================================================================//

    [CLink] public static extern int8_t  librg_entity_track(librg_world *world, int64_t entity_id);

    [CLink] public static extern int8_t  librg_entity_untrack(librg_world *world, int64_t entity_id);

    [CLink] public static extern int8_t  librg_entity_tracked(librg_world *world, int64_t entity_id);

    [CLink] public static extern int8_t  librg_entity_foreign(librg_world *world, int64_t entity_id);

    [CLink] public static extern int8_t  librg_entity_owned(librg_world *world, int64_t entity_id);

    [CLink] public static extern int32_t librg_entity_count(librg_world *world);
    
    // =======================================================================//
    // !
    // ! Entity data methods
    // !
    // =======================================================================//

    [CLink] public static extern int8_t        librg_entity_userdata_set(librg_world *world, int64_t entity_id, void *data);

    [CLink] public static extern void *        librg_entity_userdata_get(librg_world *world, int64_t entity_id);

    [CLink] public static extern int8_t        librg_entity_chunk_set(librg_world *world, int64_t entity_id, librg_chunk);

    [CLink] public static extern librg_chunk   librg_entity_chunk_get(librg_world *world, int64_t entity_id);

    [CLink] public static extern int8_t        librg_entity_chunkarray_set(librg_world *world, int64_t entity_id, librg_chunk *chunks, size_t chunk_amount);

    [CLink] public static extern int8_t        librg_entity_chunkarray_get(librg_world *world, int64_t entity_id, librg_chunk *chunks, size_t *chunk_amount);

    [CLink] public static extern int8_t        librg_entity_dimension_set(librg_world *world, int64_t entity_id, int32_t dimension);

    [CLink] public static extern int32_t       librg_entity_dimension_get(librg_world *world, int64_t entity_id);

    [CLink] public static extern int8_t        librg_entity_owner_set(librg_world *world, int64_t entity_id, int64_t owner_id);

    [CLink] public static extern int64_t       librg_entity_owner_get(librg_world *world, int64_t entity_id);

    [CLink] public static extern int8_t        librg_entity_visibility_global_set(librg_world *world, int64_t entity_id, librg_visibility value);

    [CLink] public static extern int8_t        librg_entity_visibility_global_get(librg_world *world, int64_t entity_id);

    [CLink] public static extern int8_t        librg_entity_visibility_owner_set(librg_world *world, int64_t entity_id, int64_t owner_id, librg_visibility value);

    [CLink] public static extern int8_t        librg_entity_visibility_owner_get(librg_world *world, int64_t entity_id, int64_t owner_id);


    /* deprecated since 7.0 */
    [CLink] public static extern int8_t        librg_entity_radius_set(librg_world *world, int64_t entity_id, int8_t observed_chunk_radius);

    [CLink] public static extern int8_t        librg_entity_radius_get(librg_world *world, int64_t entity_id);

#if false 
    /* for future releases */
    [CLink] public static extern int8_t        librg_entity_behavior_set(librg_world *world, int64_t entity_id, librg_behavior key, int32_t value);

    [CLink] public static extern int32_t       librg_entity_behavior_get(librg_world *world, int64_t entity_id, librg_behavior key);
#endif
}