
//{{BLOCK(INSTR2)

//======================================================================
//
//	INSTR2, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 263 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 8416 + 2048 = 10976
//
//	Time-stamp: 2017-12-05, 09:54:09
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_INSTR2_H
#define GRIT_INSTR2_H

#define INSTR2TilesLen 8416
extern const unsigned short INSTR2Tiles[4208];

#define INSTR2MapLen 2048
extern const unsigned short INSTR2Map[1024];

#define INSTR2PalLen 512
extern const unsigned short INSTR2Pal[256];

#endif // GRIT_INSTR2_H

//}}BLOCK(INSTR2)
