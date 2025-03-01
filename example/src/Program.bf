using System;
using System.Collections;
using System.Diagnostics;
using System.IO;
using static librg_Beef.librg;

namespace example;

static class Program
{
	static int Main(params String[] args)
	{
		librg_world* world = librg_world_create();

		/* create our world configuration */
		librg_config_chunksize_set(world, 16, 16, 16);
		librg_config_chunkamount_set(world, 9, 9, 9);
		librg_config_chunkoffset_set(world, LIBRG_OFFSET_MID, LIBRG_OFFSET_MID, LIBRG_OFFSET_MID);

		/* track an existing game entity and set it's params */
		librg_entity_track(world, 1);
		librg_entity_owner_set(world, 1, 1);
		librg_entity_chunk_set(world, 1, 1);

		/* fetch entities via query */
		int64[64] entities = .();
		uint entity_amount = 64;
		librg_world_query(world, 1, 0, &entities, &entity_amount);

		/* write owner's point of view to a buffer */
		char8[256] buffer = .();
		uint buffer_len = 256;
		librg_world_write(world, 1, 0, &buffer, &buffer_len, null);

		Debug.WriteLine($"written a buffer of length {(int)buffer_len}");

		librg_world_destroy(world);

		return 0;
	}
}