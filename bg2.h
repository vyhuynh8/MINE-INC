
//{{BLOCK(bg2)

//======================================================================
//
//	bg2, 512x256@4, 
//	+ palette 256 entries, not compressed
//	+ 181 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 64x32 
//	Total size: 512 + 5792 + 4096 = 10400
//
//	Time-stamp: 2017-11-28, 07:54:40
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_BG2_H
#define GRIT_BG2_H

#define bg2TilesLen 5792
extern const unsigned short bg2Tiles[2896];

#define bg2MapLen 4096
extern const unsigned short bg2Map[2048];

#define bg2PalLen 512
extern const unsigned short bg2Pal[256];

#endif // GRIT_BG2_H

//}}BLOCK(bg2)
