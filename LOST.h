
//{{BLOCK(LOST)

//======================================================================
//
//	LOST, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 375 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 12000 + 2048 = 14560
//
//	Time-stamp: 2017-12-05, 11:31:05
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_LOST_H
#define GRIT_LOST_H

#define LOSTTilesLen 12000
extern const unsigned short LOSTTiles[6000];

#define LOSTMapLen 2048
extern const unsigned short LOSTMap[1024];

#define LOSTPalLen 512
extern const unsigned short LOSTPal[256];

#endif // GRIT_LOST_H

//}}BLOCK(LOST)
