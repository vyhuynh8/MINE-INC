
//{{BLOCK(win3)

//======================================================================
//
//	win3, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 321 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 10272 + 2048 = 12832
//
//	Time-stamp: 2017-11-28, 16:46:11
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_WIN3_H
#define GRIT_WIN3_H

#define win3TilesLen 10272
extern const unsigned short win3Tiles[5136];

#define win3MapLen 2048
extern const unsigned short win3Map[1024];

#define win3PalLen 512
extern const unsigned short win3Pal[256];

#endif // GRIT_WIN3_H

//}}BLOCK(win3)
