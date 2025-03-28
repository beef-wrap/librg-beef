using System;
using System.Interop;

namespace librg;

extension librg
{
    // file: header/general.h

    // =======================================================================//
    // !
    // ! Context methods
    // !
    // =======================================================================//

    [CLink] public static extern uint32_t      librg_version();

    [CLink] public static extern librg_world*  librg_world_create();

    [CLink] public static extern int8_t        librg_world_destroy(librg_world *world);

    [CLink] public static extern int8_t        librg_world_valid(librg_world *world);

    [CLink] public static extern int8_t        librg_world_userdata_set(librg_world *world, void *data);

    [CLink] public static extern void*         librg_world_userdata_get(librg_world *world);

    [CLink] public static extern int64_t       librg_world_entities_tracked(librg_world *world);


    // =======================================================================//
    // !
    // ! Configuration methods
    // !
    // =======================================================================//

    [CLink] public static extern int8_t librg_config_chunkamount_set(librg_world *world, uint16_t x, uint16_t y, uint16_t z);

    [CLink] public static extern int8_t librg_config_chunkamount_get(librg_world *world, uint16_t *x, uint16_t *y, uint16_t *z);

    [CLink] public static extern int8_t librg_config_chunksize_set(librg_world *world, uint16_t x, uint16_t y, uint16_t z);

    [CLink] public static extern int8_t librg_config_chunksize_get(librg_world *world, uint16_t *x, uint16_t *y, uint16_t *z);

    [CLink] public static extern int8_t librg_config_chunkoffset_set(librg_world *world, int16_t x, int16_t y, int16_t z);

    [CLink] public static extern int8_t librg_config_chunkoffset_get(librg_world *world, int16_t *x, int16_t *y, int16_t *z);


    // =======================================================================//
    // !
    // ! Events
    // !
    // =======================================================================//

    [CLink] public static extern int8_t  librg_event_set(librg_world *world, librg_event_type, librg_event_fn);

    [CLink] public static extern int8_t  librg_event_remove(librg_world *world, librg_event_type);
    
    [CLink] public static extern int8_t  librg_event_type_get(librg_world *world, librg_event *event);

    [CLink] public static extern int64_t librg_event_owner_get(librg_world *world, librg_event *event);

    [CLink] public static extern int64_t librg_event_entity_get(librg_world *world, librg_event *event);

    [CLink] public static extern char*   librg_event_buffer_get(librg_world *world, librg_event *event);

    [CLink] public static extern int32_t librg_event_size_get(librg_world *world, librg_event *event);

    [CLink] public static extern void*   librg_event_userdata_get(librg_world *world, librg_event *event);


    // =======================================================================//
    // !
    // ! Utility methods
    // !
    // =======================================================================//

    [CLink] public static extern librg_chunk librg_chunk_from_realpos(librg_world *world, double x, double y, double z);
    
    [CLink] public static extern librg_chunk librg_chunk_from_chunkpos(librg_world *world, int16_t chunk_x, int16_t chunk_y, int16_t chunk_z);

    [CLink] public static extern int8_t      librg_chunk_to_chunkpos(librg_world *world, librg_chunk id, int16_t *chunk_x, int16_t *chunk_y, int16_t *chunk_z);
}