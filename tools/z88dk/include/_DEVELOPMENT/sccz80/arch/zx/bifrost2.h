
// automatically generated by m4 from headers in proto subdir


#ifndef __BIFROST2_H__
#define __BIFROST2_H__

#include <arch.h>
#include <intrinsic.h>

/* ----------------------------------------------------------------
 * Z88DK INTERFACE LIBRARY FOR THE BIFROST*2 ENGINE - by Einar Saukas
 *
 * If you use this interface library, you must load afterwards the
 * BIFROST*2 ENGINE and a multicolor tile set. For a detailed sample
 * see file "bifrost2dem.c".
 * ----------------------------------------------------------------
 */

// ----------------------------------------------------------------
// Constants
// ----------------------------------------------------------------

extern unsigned char BIFROST2_tilemap[81];

#define BIFROST2_STATIC    128
#define BIFROST2_DISABLED  255

// ----------------------------------------------------------------
// Install BIFROST*2 ENGINE
// ----------------------------------------------------------------

extern void __LIB__ BIFROST2_install(void) __smallc;



// ----------------------------------------------------------------
// Location of BIFROST*2 ISR hook
// ----------------------------------------------------------------

extern unsigned char BIFROST2_ISR_HOOK[3];

// ----------------------------------------------------------------
// Location of BIFROST*2 hole
// ----------------------------------------------------------------

#define BIFROST2_HOLE_SIZE __BIFROST2_HOLE_SIZE

#if BIFROST2_HOLE_SIZE > 0
extern unsigned char BIFROST2_HOLE[BIFROST2_HOLE_SIZE];
#endif

// ----------------------------------------------------------------
// Activate multicolor rendering with BIFROST*2 ENGINE
// ----------------------------------------------------------------

extern void __LIB__ BIFROST2_start(void) __smallc;



// ----------------------------------------------------------------
// Deactivate multicolor rendering with BIFROST*2 ENGINE
// ----------------------------------------------------------------

extern void __LIB__ BIFROST2_stop(void) __smallc;



// ----------------------------------------------------------------
// Execute HALT (wait for next frame).
//
// If an interrupt occurs while certain routines (BIFROST2_drawTileH,
// BIFROST2_showTilePosH, BIFROST2_showNextTile, BIFROST2_fillTileAttrH) 
// are under execution, the program may crash.
//
// Routine BIFROST2_halt can be used to avoid these problems.
// Immediately after calling it, your program will have some time
// to execute a few other routines without any interruption.
// ----------------------------------------------------------------

#define BIFROST2_halt()  intrinsic_halt()

// ----------------------------------------------------------------
// Place a multicolor tile index into the tile map. Add value
// BIFROST2_STATIC for static tile, otherwise it will be animated
//
// Parameters:
//     px: tile vertical position (0-10)
//     py: tile horizontal position (0-9)
//     tile: tile index (0-255)
//
// Obs: Also available as inline macro (for constant parameters)
// ----------------------------------------------------------------

extern void __LIB__ BIFROST2_setTile(unsigned char px,unsigned char py,unsigned char tile) __smallc;
extern void __LIB__ BIFROST2_setTile_callee(unsigned char px,unsigned char py,unsigned char tile) __smallc __z88dk_callee;
#define BIFROST2_setTile(a,b,c) BIFROST2_setTile_callee(a,b,c)



#define M_BIFROST2_SETTILE(px, py, tile)  BIFROST2_tilemap[(px)*10+(py)] = (tile)

// ----------------------------------------------------------------
// Obtain a multicolor tile index from the tile map
//
// Parameters:
//     px: tile vertical position (0-10)
//     py: tile horizontal position (0-9)
//
// Returns:
//     Tile index currently stored in this position
//
// Obs: Also available as inline macro (for constant parameters)
// ----------------------------------------------------------------

extern unsigned char __LIB__ BIFROST2_getTile(unsigned char px,unsigned char py) __smallc;
extern unsigned char __LIB__ BIFROST2_getTile_callee(unsigned char px,unsigned char py) __smallc __z88dk_callee;
#define BIFROST2_getTile(a,b) BIFROST2_getTile_callee(a,b)



#define M_BIFROST2_GETTILE(px, py)   BIFROST2_tilemap[(px)*10+(py)]

// ----------------------------------------------------------------
// Convert multicolor tile index into the equivalent animation group
//
// Parameters:
//     tile: tile index (0-255)
//
// Returns:
//     Animation group for animated tile, otherwise the same tile index
// ----------------------------------------------------------------

extern unsigned char __LIB__ BIFROST2_getAnimGroup(unsigned char tile) __smallc __z88dk_fastcall;



// ----------------------------------------------------------------
// Locate memory address that stores the multicolor attribute of a
// certain screen position inside the multicolor area
//
// Parameters:
//     lin: pixel line (0-192)
//     col: char column (1-20)
//
// Returns:
//     Memory address of the multicolor attribute
// ----------------------------------------------------------------

extern unsigned char __LIB__ *BIFROST2_findAttrH(unsigned char lin,unsigned char col) __smallc;
extern unsigned char __LIB__ *BIFROST2_findAttrH_callee(unsigned char lin,unsigned char col) __smallc __z88dk_callee;
#define BIFROST2_findAttrH(a,b) BIFROST2_findAttrH_callee(a,b)



// ----------------------------------------------------------------
// Reconfigure BIFROST*2 ENGINE to read tile images from another address
//
// Parameters:
//     addr: New tile images address
// ----------------------------------------------------------------

extern unsigned char BIFROST2_TILE_IMAGES[];
#define BIFROST2_resetTileImages(addr)  intrinsic_store16(_BIFROST2_TILE_IMAGES,addr)

// ----------------------------------------------------------------
// Reconfigure BIFROST*2 ENGINE to use 2 frames per animation group
// ----------------------------------------------------------------

extern void __LIB__ BIFROST2_resetAnim2Frames(void) __smallc;



// ----------------------------------------------------------------
// Reconfigure BIFROST*2 ENGINE to use 4 frames per animation group
// ----------------------------------------------------------------

extern void __LIB__ BIFROST2_resetAnim4Frames(void) __smallc;



// ----------------------------------------------------------------
// Advanced conversions
// ----------------------------------------------------------------

#define PX2LIN(px)              (((px)+1)<<4)
#define PX2ROW(px)              (((px)<<1)+1)

#define ROW2LIN(row)            (((row)+1)<<3)
#define ROW2PX_UP(row)          ((row)>>1)
#define ROW2PX_DOWN(row)        (((row)-1)>>1)

#define LIN2ROW_UP(lin)         (((lin)>>3)-1)
#define LIN2ROW_DOWN(lin)       (((lin)-1)>>3)
#define LIN2PX_UP(lin)          (((lin)>>4)-1)
#define LIN2PX_DOWN(lin)        (((lin)-1)>>4)

#define PY2COL(py)              (((py)<<1)+1)
#define COL2PY_LEFT(col)        (((col)-1)>>1)
#define COL2PY_RIGHT(col)       ((col)>>1)

// ----------------------------------------------------------------
// Instantly draw a multicolor tile at the specified screen position
//
// Parameters:
//     lin: pixel line (0-192)
//     col: char column (0-20)
//     tile: tile index (0-255)
//
// WARNING: If this routine is under execution when interrupt
//          occurs, program may crash!!! (see BIFROST2_halt)
// ----------------------------------------------------------------

extern void __LIB__ BIFROST2_drawTileH(unsigned char lin,unsigned char col,unsigned char tile) __smallc;
extern void __LIB__ BIFROST2_drawTileH_callee(unsigned char lin,unsigned char col,unsigned char tile) __smallc __z88dk_callee;
#define BIFROST2_drawTileH(a,b,c) BIFROST2_drawTileH_callee(a,b,c)



// ----------------------------------------------------------------
// Instantly show/animate the multicolor tile currently stored in
// the specified tile map position
//
// Parameters:
//     lin: pixel line (16,32,48..176)
//     col: char column (1,3,5..19)
//
// WARNING: If this routine is under execution when interrupt
//          occurs, program may crash!!! (see BIFROST2_halt)
// ----------------------------------------------------------------

extern void __LIB__ BIFROST2_showTilePosH(unsigned char lin,unsigned char col) __smallc;
extern void __LIB__ BIFROST2_showTilePosH_callee(unsigned char lin,unsigned char col) __smallc __z88dk_callee;
#define BIFROST2_showTilePosH(a,b) BIFROST2_showTilePosH_callee(a,b)



// ----------------------------------------------------------------
// Instantly show/animate the next multicolor tile currently stored
// in the tile map position, according to a pre-established drawing
// order
//
// WARNING: If this routine is under execution when interrupt
//          occurs, program may crash!!! (see BIFROST2_halt)
// ----------------------------------------------------------------

extern void __LIB__ BIFROST2_showNextTile(void) __smallc;



// ----------------------------------------------------------------
// Instantly show/animate the next two multicolor tiles currently
// stored in the tile map position, according to a pre-established
// drawing order
//
// WARNING: If this routine is under execution when interrupt
//          occurs, program may crash!!! (see BIFROST2_halt)
// ----------------------------------------------------------------

extern void __LIB__ BIFROST2_showNext2Tiles(void) __smallc;



// ----------------------------------------------------------------
// Instantly change the attributes in a tile area (16x16 pixels) to
// the specified value (use the same INK and PAPER values to "erase"
// a tile)
//
// Parameters:
//     lin: pixel line (0-192)
//     col: char column (0-20)
//     attr: attribute value (0-255), INK+8*PAPER+64*BRIGHT+128*FLASH
//
// WARNING: If this routine is under execution when interrupt
//          occurs, program may crash!!! (see BIFROST2_halt)
// ----------------------------------------------------------------

extern void __LIB__ BIFROST2_fillTileAttrH(unsigned char lin,unsigned char col,unsigned char attr) __smallc;
extern void __LIB__ BIFROST2_fillTileAttrH_callee(unsigned char lin,unsigned char col,unsigned char attr) __smallc __z88dk_callee;
#define BIFROST2_fillTileAttrH(a,b,c) BIFROST2_fillTileAttrH_callee(a,b,c)



#endif
