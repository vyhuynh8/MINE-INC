
//{{BLOCK(starting)

//======================================================================
//
//	starting, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 513 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 16416 + 2048 = 18976
//
//	Time-stamp: 2017-11-28, 15:44:45
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_STARTING_H
#define GRIT_STARTING_H

#define startingTilesLen 16416
extern const unsigned short startingTiles[8208];

#define startingMapLen 2048
extern const unsigned short startingMap[1024];

#define startingPalLen 512
extern const unsigned short startingPal[256];

#endif // GRIT_STARTING_H

//}}BLOCK(starting)
