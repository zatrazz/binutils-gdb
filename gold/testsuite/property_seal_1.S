#define GNU_PROPERTY_MEMORY_SEAL 3

#define NT_GNU_PROPERTY_TYPE_0 5

#if __SIZEOF_PTRDIFF_T__  == 8
# define ALIGN 3
#elif __SIZEOF_PTRDIFF_T__  == 4
# define ALIGN 2
#endif

	.section ".note.gnu.property", "a"
	.p2align ALIGN

	.long 1f - 0f			/* name length */
	.long 3f - 2f			/* data length */
	.long NT_GNU_PROPERTY_TYPE_0	/* note type */
0:	.asciz "GNU"			/* vendor name */
1:
	.p2align ALIGN
2:	.long GNU_PROPERTY_MEMORY_SEAL	/* pr_type.  */
	.long 0				/* pr_datasz.  */
3:
