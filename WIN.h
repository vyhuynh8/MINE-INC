
//{{BLOCK(WIN)

//======================================================================
//
//	WIN, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 348 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 11136 + 2048 = 13696
//
//	Time-stamp: 2017-12-05, 11:32:47
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_WIN_H
#define GRIT_WIN_H

#define WINTilesLen 11136
extern const unsigned short WINTiles[5568];

#define WINMapLen 2048
extern const unsigned short WINMap[1024];

#define WINPalLen 512
extern const unsigned short WINPal[256];

#endif // GRIT_WIN_H

//}}BLOCK(WIN)
