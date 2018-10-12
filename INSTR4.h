
//{{BLOCK(INSTR4)

//======================================================================
//
//	INSTR4, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 237 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 7584 + 2048 = 10144
//
//	Time-stamp: 2017-12-05, 12:15:38
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_INSTR4_H
#define GRIT_INSTR4_H

#define INSTR4TilesLen 7584
extern const unsigned short INSTR4Tiles[3792];

#define INSTR4MapLen 2048
extern const unsigned short INSTR4Map[1024];

#define INSTR4PalLen 512
extern const unsigned short INSTR4Pal[256];

#endif // GRIT_INSTR4_H

//}}BLOCK(INSTR4)
