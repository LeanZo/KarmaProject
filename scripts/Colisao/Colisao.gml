//Codigo complexo, cuiado ao se aventurar por aqui

/// ProcessCollision(_inst, _collision, _dx,_dy, _left,_right, _top,_bottom)
#macro TILE_SIZE	16		// size of debug tilemap
#macro TILE_SHIFT   4		// 1<<5 = 32

var _inst = argument0;
var _dx = argument1;
var _dy = argument2;
var _right = argument3;
var _left = argument4;
var _top = argument5;
var _bottom = argument6;

with( _inst )
{
	// Now move and do collision checks.
	x += _dx;
	y += _dy; 
	if( dir = DIR_RIGHT ){
		var tx = (x+_right)>>TILE_SHIFT;		// check right edge
		var ty1 = ((y+_bottom)>>TILE_SHIFT);
		var ty2 = ((y-_top)>>TILE_SHIFT);

		// collision data never has flips etc...
		var tile1 = tilemap_get(WallMap, tx,ty1 )& tile_index_mask;
		var tile2 = tilemap_get(WallMap, tx,ty2 )& tile_index_mask;
		
		if(( tile1!=0 ) || (tile2!=0)) {
			x = (tx<<TILE_SHIFT)-TILE_SIZE+(TILE_SIZE-_right);
		}
	}
	
	
	if( dir = DIR_LEFT ){
		var tx = (x-_left)>>TILE_SHIFT;		// check right edge
		var ty1 = ((y+_bottom)>>TILE_SHIFT);
		var ty2 = ((y-_top)>>TILE_SHIFT);

		// collision data never has flips etc...
		var tile1 = tilemap_get(WallMap, tx,ty1 )& tile_index_mask;
		var tile2 = tilemap_get(WallMap, tx,ty2 )& tile_index_mask;
		
		if(( tile1!=0 ) || (tile2!=0)) {
		x = (x&~(TILE_SIZE-1))+_left;
		}
	}
	
	if( dir = DIR_DOWN ){
		var tx1 = (x+(_right-4))>>TILE_SHIFT;		// check right edge
		var tx2 = (x-(_left-4))>>TILE_SHIFT;		// check right edge
		var ty = ((y+_bottom)>>TILE_SHIFT);
		
		// collision data never has flips etc...
		var tile1 = tilemap_get(WallMap, tx1,ty )& tile_index_mask;
		var tile2 = tilemap_get(WallMap, tx2,ty )& tile_index_mask;
		 
		if(( tile1!=0 ) || (tile2!=0)) {
		y = (ty<<TILE_SHIFT)-(_bottom+1);
		}
	}
	
	if( dir = DIR_UP ){
		var tx1 = (x+(_right-4))>>TILE_SHIFT;		// check right edge
		var tx2 = (x-(_left-4))>>TILE_SHIFT;		// check right edge
		var ty = ((y-_top)>>TILE_SHIFT);

		// collision data never has flips etc...
		var tile1 = tilemap_get(WallMap, tx1,ty )& tile_index_mask;
		var tile2 = tilemap_get(WallMap, tx2,ty )& tile_index_mask;
		
		if(( tile1!=0 ) || (tile2!=0)) {
		y = (ty<<TILE_SHIFT)+TILE_SIZE+_top+1;
		}
	}
	
}





























