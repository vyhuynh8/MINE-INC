
//{{BLOCK(INSTR1)

//======================================================================
//
//	INSTR1, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 269 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 8608 + 2048 = 11168
//
//	Time-stamp: 2017-12-05, 09:53:03
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_INSTR1_H
#define GRIT_INSTR1_H

#define INSTR1TilesLen 8608
extern const unsigned short INSTR1Tiles[4304];

#define INSTR1MapLen 2048
extern const unsigned short INSTR1Map[1024];

#define INSTR1PalLen 512
extern const unsigned short INSTR1Pal[256];

#endif // GRIT_INSTR1_H

//}}BLOCK(INSTR1)
