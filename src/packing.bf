using System;

namespace librg_Beef;

extension librg
{
    // file: header/packing.h

    // =======================================================================//
    // !
    // ! World data (de)packing methods
    // !
    // =======================================================================//

    [CLink] public static extern int32_t librg_world_read(librg_world* world, int64_t owner_id, char* buffer, size_t size, void* userdata);
    
    [CLink] public static extern int32_t librg_world_write(librg_world* world, int64_t owner_id, uint8_t chunk_radius, char* buffer, size_t* size, void* userdata);
}