#include <stdlib.h>
#include "myLib.h"
#include "game.h"
#include "hit.h"


PLAYER player;
ENEMY enemies[ENEMYCOUNT];
BULLET bullets[BULLETCOUNT];
BULLET ebullets[BULLETCOUNT];
STRONG strongs[STRONGCOUNT];
LIVES livesc[LIVESCOUNT];
OBJ_ATTR shadowOAM[128];
enum { MINFRONT, MINLEFT,MINRIGHT, MINBACK, MINIDLE};
void playSoundB( const unsigned char* sound, int length, int frequency, int loops);

int enemiesRemaining;
int remainingLives;
int count;
int timer;
int ini;
int fell;
int enemyHit;
int remain;
int jump;
int cheatHit;
int dball;
int poffset;
int smiles;
int gameOverc;
int gameFrame;
int coinFlip;
void initGame(int x) {

	initPlayer();
    initEnemies();
    initBullets();
    // initStrong();
    // initLives();
	enemiesRemaining = ENEMYCOUNT;
	remain = 0;
	enemyHit = 0;
	count = 0;
	timer = x;
	fell = 0;
	cheatHit = 0;
	ini = player.row;
	dball = 0;
	smiles = 0;
	poffset =0;
	gameOverc = 0;
	gameFrame = 0;

	for (int i = 0; i < 8; i++){
		shadowOAM[90+i].attr0 = 23 | ATTR0_4BPP | ATTR0_SQUARE;
		shadowOAM[90+i].attr1 = (0+(32*i)) | ATTR1_MEDIUM;
		shadowOAM[90+i].attr2 = ATTR2_TILEID(11,0);
	}

}
void initEnemies() {
	int count = 0;
	for (int i = 0; i < 8; i++) {
		enemies[i].flip = rand() % 10 + 1;
		enemies[i].height = 32;
		enemies[i].width = 30;
		enemies[i].row = 31;
		enemies[i].col = count;
		enemies[i].rdel = 0;
		enemies[i].cdel = 1;
		enemies[i].active = 1;
		enemies[i].bulletTimer = rand() % 100 + 1;
		enemies[i].hit = 0;
		enemies[i].type = 0;
		count+=32;
	}
	count = 0;
	for (int i = 8; i < 16; i++) {
		enemies[i].flip = rand() % 10 + 1;
		enemies[i].height = 32;
		enemies[i].width = 30;
		enemies[i].row = 62;
		enemies[i].col = count;
		enemies[i].rdel = 0;
		enemies[i].cdel = 1;
		enemies[i].active = 1;
		enemies[i].bulletTimer = rand() % 100 + 1;
		enemies[i].hit = 0;
		enemies[i].type = 0;
		count+=32;
	}

	count = 0;
	for (int i = 16; i < 24; i++) {
		enemies[i].flip = rand() % 10 + 1;
		enemies[i].height = 32;
		enemies[i].width = 30;
		enemies[i].row = 93;
		enemies[i].col = count;
		enemies[i].rdel = 0;
		enemies[i].cdel = 1;
		enemies[i].active = 1;
		enemies[i].bulletTimer = rand() % 100 + 1;
		enemies[i].hit = 0;
		enemies[i].type = 0;
		count+=32;
	}
	count = 0;
	for (int i = 24; i < 32; i++) {
		enemies[i].flip = rand() % 10 + 1;
		enemies[i].height = 32;
		enemies[i].width = 30;
		enemies[i].row = 125;
		enemies[i].col = count;
		enemies[i].rdel = 0;
		enemies[i].cdel = 1;
		enemies[i].active = 1;
		enemies[i].bulletTimer = rand() % 100 + 1;
		enemies[i].hit = 0;
		enemies[i].type = 0;
		count+=32;
	}
	count = 0;
	for (int i = 32; i < 40; i++) {
		enemies[i].flip = rand() % 10 + 1;
		enemies[i].height = 25;
		enemies[i].width = 25;
		enemies[i].row = 155;
		enemies[i].col = count;
		enemies[i].rdel = 0;
		enemies[i].cdel = 1;
		enemies[i].active = 1;
		enemies[i].bulletTimer = -5;
		enemies[i].hit = 0;
		enemies[i].type = 0;
		count+=32;
	}
	count = 0;
	// for (int i = 40; i < 48; i++) {
	// 	enemies[i].height = 20;
	// 	enemies[i].width = 20;
	// 	enemies[i].row = 1;
	// 	enemies[i].col = count;
	// 	enemies[i].rdel = 0;
	// 	enemies[i].cdel = 1;
	// 	enemies[i].active = 1;
	// 	enemies[i].bulletTimer = 5;
	// 	count+=32;
	// }
}

void drawEnemies(ENEMY* b, int count) {
	if(b->active) {
		shadowOAM[1+count].attr0 = b->row | ATTR0_4BPP | ATTR0_SQUARE;
    	shadowOAM[1+count].attr1 = b->col | ATTR1_MEDIUM;
    	// if (player.curFrame<=8) {
    	// 	shadowOAM[21+count].attr2 = ATTR2_TILEID(7,4);
    	// 	increment = 0;
    	// } else if (player.curFrame<=16) {
    	// 	shadowOAM[21+count].attr2 = ATTR2_TILEID(7,8);
    	// 	increment = 2;
    	// } else {
    	// 	shadowOAM[21+count].attr2 = ATTR2_TILEID(7,0);
    	// 	increment = 4;
    	// }
		if (b->bulletTimer == -5) {
    			shadowOAM[1+count].attr2 = ATTR2_TILEID(6,0);
    			// shadowOAM[121+count].attr0 = b->row | ATTR0_4BPP | ATTR0_SQUARE;
    			// shadowOAM[121+count].attr1 = b->col | ATTR1_MEDIUM;
    			// shadowOAM[121+count].attr2 = ATTR2_TILEID(11,0);
    			b->type = 0;
    	}
    	else if (b->bulletTimer == -1) {
    			shadowOAM[1+count].attr2 = ATTR2_TILEID(10,4);
    			b->type = 7;
    	}
    	else if (b->bulletTimer == -2) {
    			shadowOAM[1+count].attr2 = ATTR2_TILEID(6,28);
    			b->type = 8;
    	}
    	else if (b->bulletTimer%2 && b->flip <=5) {
    			//shadowOAM[1+count].attr2 = ATTR2_TILEID(6,20);
    			shadowOAM[1+count].attr2 = ATTR2_TILEID(6,0);
    			b->type = 0;
    	}
    	else if (b->bulletTimer%2 && b->flip >5) {
    		    shadowOAM[1+count].attr2 = ATTR2_TILEID(6,20);
    			//shadowOAM[1+count].attr2 = ATTR2_TILEID(6,0);
    			b->type = 1;
    	}
    	else if (b->bulletTimer%5 && (b->flip <=5 )) {
    			shadowOAM[1+count].attr2 = ATTR2_TILEID(6,12);
    			b->type = 5;
    	}
    	else if (b->bulletTimer%5 && (b->flip > 5)) {
    			shadowOAM[1+count].attr2 = ATTR2_TILEID(6,4);
    			b->type = 2;
    	}
    	else if (b->bulletTimer%7 && (b->flip <= 4)) {
    			shadowOAM[1+count].attr2 = ATTR2_TILEID(6,8);
    			b->type = 4;
    	}
    	else if (b->bulletTimer%7 && (b->flip > 4)) {
    			shadowOAM[1+count].attr2 = ATTR2_TILEID(6,16);
    			b->type = 3;
    	}
    	else if (b->bulletTimer%11) {
    			shadowOAM[1+count].attr2 = ATTR2_TILEID(6,24);
    			b->type = 6;
    	}
    	else {
    		shadowOAM[1+count].attr2 = ATTR2_TILEID(6,0);
    		b->type = 0;
    	}
	} else {
		shadowOAM[1+count].attr0 = ATTR0_HIDE;
	}
}

void updateEnemies(ENEMY* enemy) {
	if (timer >= 0 && poffset == 0) {
		timer--;

	} else if (timer < 0 && poffset == 0) {
		gameOverc = 1;
	}
	if (enemy->active && enemy->bulletTimer != -5) {
		for (int i = 0; i < BULLETCOUNT; i++) {
			if (bullets[i].active && collision(enemy->row, enemy->col, enemy->height, enemy->width,
				bullets[i].row, bullets[i].col, bullets[i].height, bullets[i].width)) {
					if (poffset == 0){
						bullets[i].active = 0;
						//enemy->active = 0;
						//player.score++;
						enemy->hit++;
					} else if (poffset == 1 && enemy->row == 155) {
						bullets[i].active = 0;
					} else {
						enemy->hit++;
					}
			}
			if (enemy->row == 31 && enemy->hit == 1) {
					shadowOAM[90+(enemy->col/32)].attr0 = ATTR0_HIDE;
			}
			if (enemy->active && enemy->type == 0 && enemy->hit == 1) {
					enemy->active = 0;
					//player.score++;
					if (enemy->row >= player.row && enemy->col <= player.col && enemy->col+enemy->width >= player.col+player.width) {
					ini = player.row;
					fell = 1;
					}
			}
			if (enemy->active && enemy->type == 8 && enemy->hit == 1) {
					player.won = 1;

					if (enemy->row >= player.row && enemy->col <= player.col && enemy->col+enemy->width >= player.col+player.width) {
					ini = player.row;
					fell = 1;
					// && enemy->row >= player.row + 10 && enemy->row >= player.row - 10
				}
			}
			if (enemy->active && (enemy->type == 1 || enemy->type == 7 || enemy->type == 8) && ((poffset == 1 && enemy->hit == 1) || (poffset == 0 && enemy->hit == 1))) {
					enemy->active = 0;
					if (poffset == 0) {
						player.score++;
					} else {
						player.score+=5;
					}
					if (enemy->type == 7) {
						dball--;
					}
					if (enemy->type == 8) {
						player.won = 1;
					}

					if (enemy->row >= player.row && enemy->col <= player.col && enemy->col+enemy->width >= player.col+player.width) {
					ini = player.row;
					fell = 1;
					// && enemy->row >= player.row + 10 && enemy->row >= player.row - 10
				}
			}
			if (enemy->active && enemy->type == 2 && enemy->hit == 1) {
					enemy->active = 0;
					timer+=5000;
					if (enemy->row >= player.row && enemy->col <= player.col && enemy->col+enemy->width >= player.col+player.width) {
					ini = player.row;
					fell = 1;
					// && enemy->row >= player.row + 10 && enemy->row >= player.row - 10
				}
			}
			if (enemy->active && enemy->type == 3 && enemy->hit == 1) {
					enemy->active = 0;
					// player.gameOver = 1;
					gameOverc = 1;
					if (enemy->row >= player.row && enemy->col <= player.col && enemy->col+enemy->width >= player.col+player.width) {
					ini = player.row;
					fell = 1;
					// && enemy->row >= player.row + 10 && enemy->row >= player.row - 10
				}
			}
			if (enemy->active && enemy->type == 4 && enemy->hit == 1) {
					enemy->active = 0;
					timer-=5000;
					if (timer == 0) {
						gameOverc = 1;
					}
					if (enemy->row >= player.row && enemy->col <= player.col && enemy->col+enemy->width >= player.col+player.width) {
					ini = player.row;
					fell = 1;
					// && enemy->row >= player.row + 10 && enemy->row >= player.row - 10
				}
			}
			if (enemy->active && enemy->type == 5 && enemy->hit == 1) {
					enemy->active = 0;
					player.score+=10;
					if (enemy->row >= player.row && enemy->col <= player.col && enemy->col+enemy->width >= player.col+player.width) {
					ini = player.row;
					fell = 1;
					// && enemy->row >= player.row + 10 && enemy->row >= player.row - 10
				}
			}
			if (enemy->active && enemy->type == 6 && enemy->hit == 1) {
					enemy->active = 0;
					for (int i = 0; i < ENEMYCOUNT; i++){
						if (enemies[i].active && enemies[i].bulletTimer != -5) {
							enemies[i].bulletTimer = rand() % 100 + 1;
						}
					}
					if (enemy->row > player.row && enemy->col <= player.col + 10 && enemy->col+enemy->width >= player.col+player.width) {
					ini = player.row;
					fell = 1;
					// && enemy->row >= player.row + 10 && enemy->row >= player.row - 10
				}
			}
		}
		if (enemy->row + enemy->height-1 >= SCREENHEIGHT) {
			player.plives = 0;
		}
	}

}

void updateGame() {
	updateFell();
	updatePlayer();
	for (int i = 0; i < ENEMYCOUNT; i++){
		updateEnemies(&enemies[i]);
	}

	for (int i = 0; i < BULLETCOUNT; i++)
		updateBullet(&bullets[i]);

}

void drawGame() {

    for (int i = 0; i < ENEMYCOUNT; i++){
		drawEnemies(&enemies[i], i);
	}

	shadowOAM[0].attr0 = 0 | ATTR0_4BPP | ATTR0_SQUARE;
    shadowOAM[0].attr1 = 195 | ATTR1_SMALL;
    shadowOAM[0].attr2 = ATTR2_TILEID(2,0);

    int score1 = player.score%10;
	int score2 = (player.score / 10) % 10;

	int timer1 = (timer/1000)%10;
	int timer2 = ((timer/1000) / 10) % 10;

	shadowOAM[61].attr0 = 0 | ATTR0_4BPP | ATTR0_SQUARE;
	shadowOAM[61].attr1 = 220 | ATTR1_SMALL;
	shadowOAM[61].attr2 = ATTR2_TILEID(4,4+(2*score1));

	shadowOAM[62].attr0 = 0 | ATTR0_4BPP | ATTR0_SQUARE;
	shadowOAM[62].attr1 = 210 | ATTR1_SMALL;
	shadowOAM[62].attr2 = ATTR2_TILEID(4,4+(2*score2));

	shadowOAM[63].attr0 = 0 | ATTR0_4BPP | ATTR0_SQUARE;
	shadowOAM[63].attr1 = 20 | ATTR1_SMALL;
	shadowOAM[63].attr2 = ATTR2_TILEID(4,4+(2*timer1));

	shadowOAM[64].attr0 = 0 | ATTR0_4BPP | ATTR0_SQUARE;
	shadowOAM[64].attr1 = 10 | ATTR1_SMALL;
	shadowOAM[64].attr2 = ATTR2_TILEID(4,4+(2*timer2));

	if (gameFrame <= 10){
    	drawPlayer();
	}
	if (gameOverc && gameFrame < 100) {
		if (gameFrame>10 && gameFrame%20 && coinFlip == 1) {
			shadowOAM[108].attr0 = ATTR0_HIDE;
			shadowOAM[122].attr0 = player.row | ATTR0_4BPP | ATTR0_SQUARE;
    		shadowOAM[122].attr1 = player.col | ATTR1_MEDIUM;
    		shadowOAM[122].attr2 = ATTR2_TILEID(10,12+(4*(rand() % 2)));
    		DMANow(3, shadowOAM, OAM, 128*4);
		}
		gameFrame++;
		coinFlip =rand() % 6;
	}
	else if (gameOverc && gameFrame >= 100){
		player.gameOver = 1;
	}


	for (int i = 0; i < BULLETCOUNT; i++)
		drawBullet(&bullets[i], i);

	// for (int i = 0; i < LIVESCOUNT; i++)
	// 	drawLives(&livesc[i], i);

	DMANow(3, shadowOAM, OAM, 128*4);
    for (int i = 0; i < ENEMYCOUNT; i++){
		if (enemies[i].active && enemies[i].type == 1) {
			break;
		}
		else if (i >= ENEMYCOUNT-1 && dball == 0 && smiles == 0) {
			player.won = 1;
		}
	}
}

// void drawLives(LIVES* b, int count) {
// 	if (b->active) {
// 		shadowOAM[55+count].attr0 = b->row | ATTR0_4BPP | ATTR0_SQUARE;
// 	    shadowOAM[55+count].attr1 = b->col | ATTR1_SMALL;
// 	    shadowOAM[55+count].attr2 = ATTR2_TILEID(4,2);
// 	} else {
// 		shadowOAM[55+count].attr0 = ATTR0_HIDE;
// 	}
// }

// void initLives() {
// 	int count = 0;
// 	for (int i = 0; i < 5; i++) {
// 		livesc[i].row = 145;
// 		livesc[i].col = 2+count;
// 		livesc[i].active = 1;
// 		count+=13;
// 	}
// }

void initBullets() {

	for (int i = 0; i < BULLETCOUNT; i++) {

		bullets[i].height = 5;
		bullets[i].width = 5;   
		bullets[i].row = bullets[i].height;
		bullets[i].col = 0;
		bullets[i].rdel = 3;
        bullets[i].cdel = 0;
		bullets[i].color = WHITEID;
		bullets[i].active = 0;
		bullets[i].side = 0;
	}
}


void fireBullet(int x) {
	if (x == 0) {
	for (int i = 0; i < BULLETCOUNT; i++) {
		if (!bullets[i].active) {
			bullets[i].cdel = 1;
			bullets[i].rdel = 0;

			bullets[i].row = player.row+15;
			bullets[i].col = player.col + player.width/2
				- bullets[i].width/2;


            //bullets[i].cdel = player.cDirection;

			bullets[i].active = 1;
			bullets[i].side = 0;

			break;
		}
	}
	}
	if (x == -1) {
		for (int i = 0; i < BULLETCOUNT; i++) {
			if (!bullets[i].active) {
				bullets[i].rdel = 3;

				bullets[i].row = player.row;
				bullets[i].col = player.col + player.width/2
					- bullets[i].width/2;


	            bullets[i].cdel = player.cDirection;

				bullets[i].active = 1;
				bullets[i].side = -1;

				break;
			}
		}
	}
	if (x == 1) {
	for (int i = 0; i < BULLETCOUNT; i++) {
		if (!bullets[i].active) {
			bullets[i].cdel = -1;
			bullets[i].rdel = 0;

			bullets[i].row = player.row+15;
			bullets[i].col = player.col + player.width/2
				- bullets[i].width/2;


            //bullets[i].cdel = player.cDirection;

			bullets[i].active = 1;
			bullets[i].side = 1;

			break;
		}
	}
	}

		if (x == 2) {
	for (int i = 0; i < BULLETCOUNT; i++) {
		if (!bullets[i].active) {
			bullets[i].cdel = 0;
			bullets[i].rdel = -1;

			bullets[i].row = player.row;
			bullets[i].col = player.col + player.width/2
				- bullets[i].width/2;


            //bullets[i].cdel = player.cDirection;

			bullets[i].active = 1;
			bullets[i].side = 2;

			break;
		}
	}
}
}

void updateBullet(BULLET* b) {

	if (b->active) {
		if (b->row + b->rdel < SCREENHEIGHT-1 
			&& b->row + b->height-1 >= 0
            && b->col + b->cdel > 0
            && b->col + b->cdel < SCREENWIDTH-1) {

			b->row += b->rdel;
            b->col += b->cdel;
		} else {
			b->active = 0;
		}

	}

}

void drawBullet(BULLET* b, int x) {

	if(b->active) {
		if (b->side == 0) {
			//right
			shadowOAM[42+x].attr0 = b->row | ATTR0_4BPP | ATTR0_SQUARE;
    		shadowOAM[42+x].attr1 = b->col | ATTR1_SMALL;
    		shadowOAM[42+x].attr2 = ATTR2_TILEID(0+(2*poffset),10);
		}
		if (b->side == -1) {
			//down
			shadowOAM[42+x].attr0 = b->row | ATTR0_4BPP | ATTR0_SQUARE;
    		shadowOAM[42+x].attr1 = b->col | ATTR1_SMALL | ATTR1_VFLIP ;
    		shadowOAM[42+x].attr2 = ATTR2_TILEID(0+(2*poffset),12);
		}
		if (b->side == 1) {
			//left
			shadowOAM[42+x].attr0 = b->row | ATTR0_4BPP | ATTR0_SQUARE;
    		shadowOAM[42+x].attr1 = b->col | ATTR1_SMALL | ATTR1_HFLIP;
    		shadowOAM[42+x].attr2 = ATTR2_TILEID(0+(2*poffset),10);
		}
		if (b->side == 2) {
			//up
			shadowOAM[42+x].attr0 = b->row | ATTR0_4BPP | ATTR0_SQUARE;
    		shadowOAM[42+x].attr1 = b->col | ATTR1_SMALL;
    		shadowOAM[42+x].attr2 = ATTR2_TILEID(0+(2*poffset),12);
		}

	} else {
		shadowOAM[42+x].attr0 = ATTR0_HIDE;
	}
}


void initPlayer() {

	player.row = 0;
	player.col = 118;
	player.cdel = 4;
	player.height = 30;
	player.rdel = 3;
	player.width = 24;
	player.color = GREENID;
	player.bulletTimer = 20;
	player.score=0;
	player.plives=5;
	player.gameOver = 0;
	player.ecount = 0;
	player.won= 0;
	player.aniCounter = 0;
    player.curFrame = 0;
    player.numFrames = 3;
    player.aniState = MINFRONT; 
}

void updateFell(){
	if ((fell && !(player.row >= ini + 30))) {
		player.row+=player.rdel;
	}
	else {
		fell = 0;
	}
}

void updatePlayer() {
	player.prevAniState = player.aniState;
	player.aniState = MINIDLE;

	if (player.bulletTimer > 40) {
		player.bulletTimer = 0;
	}

        // Change the animation frame every 20 frames of gameplay
		if(player.aniCounter % 8 == 0) {
			// TODO 4.2: Change the frame here
			//           Remember that there are only numFrames number of frames
			player.curFrame++;
			if (player.curFrame == 2) {
				player.curFrame = 0;
			}
		}
	//enemies[i].active && 

	// Move the player
	// if (BUTTON_HELD(BUTTON_DOWN)) {
	// 	vOff++;
	// }

	if (BUTTON_HELD(BUTTON_A) && BUTTON_HELD(BUTTON_DOWN) && !BUTTON_HELD(BUTTON_B) && player.bulletTimer >= 20) {
		playSoundB(hit, HITLEN, HITFREQ, 0);
		player.aniState = MINFRONT;
		fireBullet(-1);
		player.bulletTimer = 0;
	}
	if (BUTTON_HELD(BUTTON_A) && BUTTON_HELD(BUTTON_RIGHT) && !BUTTON_HELD(BUTTON_B) && player.bulletTimer >= 20) {
		playSoundB(hit, HITLEN, HITFREQ, 0);
		player.aniState = MINRIGHT;
		fireBullet(0);
		player.bulletTimer = 0;
	}
	if (BUTTON_HELD(BUTTON_A) && BUTTON_HELD(BUTTON_LEFT) && !BUTTON_HELD(BUTTON_B) && player.bulletTimer >= 20) {
		playSoundB(hit, HITLEN, HITFREQ, 0);
		player.aniState = MINLEFT;
		fireBullet(1);
		player.bulletTimer = 0;
	}
	if (BUTTON_HELD(BUTTON_A) && BUTTON_HELD(BUTTON_UP) && !BUTTON_HELD(BUTTON_B) && player.bulletTimer >= 30) {
		playSoundB(hit, HITLEN, HITFREQ, 0);
		player.aniState = MINBACK;
		fireBullet(2);
		player.bulletTimer = 0;
	}

	if (BUTTON_HELD(BUTTON_LEFT) && !BUTTON_HELD(BUTTON_A) && !BUTTON_PRESSED(BUTTON_A)
		&& player.col >= player.cdel) {
		player.aniState = MINLEFT;
		int move = 1;
		for (int i = 0; i < ENEMYCOUNT; i++) {
			if (enemies[i].active) {
			if (collision(enemies[i].row, enemies[i].col, enemies[i].height, enemies[i].width,
				player.row, player.col-player.cdel, player.height, player.width)) {
					move = 0;
				}
			}
			// if (!enemies[i].active && enemies[i].row > player.row+player.height-2 && enemies[i].row < player.row+player.height+2 && enemies[i].col <= player.col && enemies[i].col+enemies[i].width > player.col+player.width-2) {
			// 	fell = 1;
			// 	ini = player.row;
			// }
		}
		if (move == 1) {
			player.col -= player.cdel;
		}
		// for (int i = 0; i < ENEMYCOUNT; i++) {
		// 	if (enemies[i].row >= player.row && enemies[i].row < player.row + player.height-2 && enemies[i].col <= player.col && enemies[i].col > player.col+player.width && !enemies[i].active) {
		// 		fell=1;
		// 		player.gameOver = 1;
		// 	}
		// }

		// player.col -= player.cdel;
        player.cDirection = -1;

	} else if (BUTTON_HELD(BUTTON_RIGHT) && !BUTTON_HELD(BUTTON_A) &&  !BUTTON_PRESSED(BUTTON_A)
		&& player.col + player.width - 1 < SCREENWIDTH - player.cdel) {
		player.aniState = MINRIGHT;
		int move = 1;
		for (int i = 0; i < ENEMYCOUNT; i++) {
			if (enemies[i].active) {
				if (collision(enemies[i].row, enemies[i].col, enemies[i].height, enemies[i].width,
				player.row, player.col+player.cdel, player.height, player.width)) {
					move = 0;
				}
			}
			// if (!enemies[i].active && enemies[i].row > player.row+player.height-2 && enemies[i].row < player.row+player.height+2 && enemies[i].col <= player.col && enemies[i].col+enemies[i].width > player.col+player.width-2) {
			// 	fell = 1;
			// 	ini = player.row;
			// }
		}
		if (move == 1) {
			player.col += player.cdel;
		}

		//player.col += player.cdel;
        player.cDirection = 1;

	}  else if (BUTTON_HELD(BUTTON_DOWN) && !BUTTON_HELD(BUTTON_A) &&  !BUTTON_PRESSED(BUTTON_A)
		&& player.col + player.width - 1 < SCREENWIDTH - player.cdel) {
		player.aniState = MINFRONT;
		int move = 1;
		for (int i = 0; i < ENEMYCOUNT; i++) {
			if (enemies[i].active) {
			if (collision(enemies[i].row, enemies[i].col, enemies[i].height, enemies[i].width,
				player.row+player.rdel, player.col, player.height, player.width)) {
					move = 0;
				}
			}
			// if (!enemies[i].active && enemies[i].row > player.row+player.height-2 && enemies[i].row < player.row+player.height+2 && enemies[i].col <= player.col && enemies[i].col+enemies[i].width > player.col+player.width-2) {
			// 	fell = 1;
			// 	ini = player.row;
			// }
		}
		if (move == 1) {
			player.row += player.rdel;
		}

		//player.row += player.rdel;
        player.cDirection = 0;

	} else {
        player.cDirection = 0;
    }

    if (BUTTON_HELD(BUTTON_B) && BUTTON_HELD(BUTTON_A)) {
    	timer = 71000;
    }
    if (BUTTON_HELD(BUTTON_UP) && BUTTON_HELD(BUTTON_A) && BUTTON_HELD(BUTTON_B)) {
		poffset = 1;
		for (int i = 0; i < ENEMYCOUNT; i++) {
			if ((enemies[i].active && enemies[i].type == 1) ||  enemies[i].type == 7) {
				enemies[i].bulletTimer = -1;
				if (enemies[i].type == 1 ) {
					dball++;
				}
			}
			else {
				enemies[i].bulletTimer = 0;
			}
		}
		// initEnemies();
		// for (int i = 0; i < ENEMYCOUNT; i++) {
		// 	if (enemies[i].active) {
		// 		enemies[i].bulletTimer = 1;
		// 	}
		// }

		// for (int i = 9; i < 15; i++) {
		// 	enemies[i].bulletTimer = -1;
		// 	dball++;
			
		// }


    }
    if (BUTTON_HELD(BUTTON_DOWN) && BUTTON_HELD(BUTTON_A) && BUTTON_HELD(BUTTON_B)) {
		for (int i = 0; i < ENEMYCOUNT; i++) {
			if (enemies[i].active) {
				enemies[i].bulletTimer = -2;
				if (enemies[i].type == 1) {
					smiles++;
				}
			}
		}
    }
 //    else if (BUTTON_HELD(BUTTON_UP) && !BUTTON_HELD(BUTTON_A) &&  !BUTTON_PRESSED(BUTTON_A)
	// 	&& player.col + player.width - 1 < SCREENWIDTH - player.cdel) {
	// 	int move = 1;
	// 	for (int i = 0; i < ENEMYCOUNT; i++) {
	// 		if (enemies[i].active) {
	// 			if (collision(enemies[i].row, enemies[i].col, enemies[i].height, enemies[i].width,
	// 				player.row-player.rdel, player.col, player.height, player.width)) {
	// 					move = 0;
	// 				}
	// 			}
	// 		}
	// 	if (move == 1) {
	// 		player.row -= player.rdel;
	// 	}

	// 	//player.row -= player.rdel;
 //        player.cDirection = 1;

	// }

		for (int i = 0; i < ENEMYCOUNT; i++) {
			if (!enemies[i].active && enemies[i].row > player.row+player.height-4 && enemies[i].col <= player.col && enemies[i].col+enemies[i].width > player.col+player.width-6) {
				fell = 1;
				ini = player.row;
			}
		}

		if (player.aniState == MINIDLE) {
			player.curFrame = 0;
			player.aniState = player.prevAniState;
		}
		else {
			player.aniCounter++;
		}

	player.bulletTimer++;
}

void drawPlayer() {
	if (poffset) {
		shadowOAM[108].attr0 = player.row | ATTR0_4BPP | ATTR0_SQUARE;
    	shadowOAM[108].attr1 = player.col | ATTR1_MEDIUM;
    	shadowOAM[108].attr2 = ATTR2_TILEID(15+(player.aniState*4),(player.curFrame*4));
	} else {
		shadowOAM[108].attr0 = player.row | ATTR0_4BPP | ATTR0_SQUARE;
    	shadowOAM[108].attr1 = player.col | ATTR1_MEDIUM;
    	shadowOAM[108].attr2 = ATTR2_TILEID(15+(player.aniState*4),14+(player.curFrame*4));
	}


    // shadowOAM[108].attr0 = player.row | ATTR0_4BPP | ATTR0_SQUARE;
    // shadowOAM[108].attr1 = player.col | ATTR1_MEDIUM;
    // shadowOAM[108].attr2 = ATTR2_TILEID(15+(player.aniState*4),22+((player.curFrame-1)*4));

	//drawRect4(player.row, player.col, player.height, player.width, player.color);

}

