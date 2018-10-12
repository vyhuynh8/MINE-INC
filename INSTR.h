
//{{BLOCK(INSTR)

//======================================================================
//
//	INSTR, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 164 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 5248 + 2048 = 7808
//
//	Time-stamp: 2017-11-21, 22:03:20
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_INSTR_H
#define GRIT_INSTR_H

#define INSTRTilesLen 5248
extern const unsigned short INSTRTiles[2624];

#define INSTRMapLen 2048
extern const unsigned short INSTRMap[1024];

#define INSTRPalLen 512
extern const unsigned short INSTRPal[256];

#endif // GRIT_INSTR_H

//}}BLOCK(INSTR)
