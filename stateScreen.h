
//{{BLOCK(stateScreen)

//======================================================================
//
//	stateScreen, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 3 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 96 + 2048 = 2656
//
//	Time-stamp: 2017-11-14, 10:08:09
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_STATESCREEN_H
#define GRIT_STATESCREEN_H

#define stateScreenTilesLen 96
extern const unsigned short stateScreenTiles[48];

#define stateScreenMapLen 2048
extern const unsigned short stateScreenMap[1024];

#define stateScreenPalLen 512
extern const unsigned short stateScreenPal[256];

#endif // GRIT_STATESCREEN_H

//}}BLOCK(stateScreen)
