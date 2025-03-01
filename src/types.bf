using System;

namespace librg_Beef;

extension librg
{
	// =======================================================================//
	// !
	// ! Main type definitions
	// !
	// =======================================================================//

	public typealias librg_world = void;
	public typealias librg_event = void;
	public typealias librg_chunk = int64_t;

	public const int16_t LIBRG_OFFSET_BEG = (.)0x8000;
	public const int16_t LIBRG_OFFSET_MID = (.)0x0000;
	public const int16_t LIBRG_OFFSET_END = (.)0x7fff;

	enum librg_event_type
	{
		LIBRG_WRITE_CREATE,
		LIBRG_WRITE_UPDATE,
		LIBRG_WRITE_REMOVE,

		LIBRG_READ_CREATE,
		LIBRG_READ_UPDATE,
		LIBRG_READ_REMOVE,

		LIBRG_ERROR_CREATE,
		LIBRG_ERROR_UPDATE,
		LIBRG_ERROR_REMOVE,
	};

	function int32_t librg_event_fn(librg_world* world, librg_event* event);

	enum librg_visibility
	{
		LIBRG_VISIBLITY_DEFAULT,
		LIBRG_VISIBLITY_NEVER,
		LIBRG_VISIBLITY_ALWAYS,
	};


	// =======================================================================//
	// !
	// ! Errors, statuses, warnings and information message codes
	// !
	// =======================================================================//

	const int LIBRG_OK                        = (+0x0000);
	// const int LIBRG_FAIL(code)                (code < 0);
	const int LIBRG_TRUE                      = (+0x0001);
	const int LIBRG_FALSE                     = (+0x0000);

	const int LIBRG_WORLD_INVALID             = (-0x0001);
	const int LIBRG_OWNER_INVALID             = (-0x0002);
	const int LIBRG_CHUNK_INVALID             = (-0x0003);
	const int LIBRG_ENTITY_INVALID            = (-0x0004);
	const int LIBRG_ENTITY_FOREIGN            = (-0x0005);
	const int LIBRG_EVENT_INVALID             = (-0x0006);
	const int LIBRG_HANDLER_REPLACED          = (-0x0002);
	const int LIBRG_HANDLER_EMPTY             = (-0x0002);
	const int LIBRG_ENTITY_UNTRACKED          = (-0x0002);
	const int LIBRG_ENTITY_ALREADY_TRACKED    = (-0x0002);
	const int LIBRG_ENTITY_VISIBILITY_IGNORED = (-0x0003);
	const int LIBRG_WRITE_REJECT              = (-0x0001);
	const int LIBRG_READ_INVALID              = (-0x0003);
	const int LIBRG_NULL_REFERENCE            = (-0x0007);
}