#include "myLib.h"
#include "bg1.h"
#include "back22.h"
#include "sprites.h"
#include "game.h"
#include "stateScreen.h"
#include "INSTR2.h"
#include "sound.c"
#include "pon.h"
#include "starting.h"
#include "win3.h"
#include "lost3.h"
#include "pause3.h"
#include "INSTR2.h"
#include "LEVEL1.h"
#include "LEVEL2.h"
#include "LEVEL3.h"
#include "INSTR3.h"
#include "INSTR1.h"
#include "INSTR4.h"
#include "TRACK1.h"
#include "TRACK2.h"
#include "TRACK3.h"
#include "TRACK4.h"
#include "TITLE.h"
#include "WIN.h"
#include "LOST.h"




/*****************************************
I made a game where the user must mine
all of the ore within a set time. If he isn't
able to do so within the allocated time, the game
will be over. There are bonuses in order to make the
gameplay more fun - a green timer for more time,
a red timer to decrease time, a large x that automatically
means game over, a smiley face that makes you automatically win the
level, a green shuffle button that shuffles the board, etc. 
The user can move left and right and down, but
he cannot move up so he has to figure out a way to win the game
working his way down the mine. In order to shoot, the user
must HOLD DOWN A AND THE DIRECTION ARROW. To move, the user
just uses the direction arrow. 

PS. the code is written in a way so that
the user cannot mine the bottom-most floor.
This is because this floor serves as the foundation
so that the user doesn't fall through.  

In terms of bugs, there's one bug that I tried to fix where
the user is supposed to fall down when the tile below him
is gone and the user doesn't fall. THIS SHOULD BE FIXED THOUGH.
All you have to do is try to move your character left or right after 
the tile is gone and the user will fall. I believe that I already fixed 
already because it now doesn't happen anymore. This should work.
However, this bug might still be there - I replayed
my game numerous times and it hasn't came up again but it might still
be there.

In terms of extra credit, I made my own music for the game (there's
a soundtrack folder with all the tracks). I drew all of the sprites
with the exception of the base main character sprite and the backgrounds. 
I drew everything else though including the background clouds and the super saiyan 
sprites though. I also made a super saiyan god mode where the user is basically goku and 
he is able to win the game pretty easily. I also made another cheat mode where if 
you hit any tile, you will win. I made the losing animation and I also added numerous bonus
tiles other than the main required ores tiles, each with its own mechanism. I didn't type the 
numbers - I handdrew each of the numbers for the score and the timer. I made
the tiles randomly generate at each level so that its not the same repetitive 
gameplay.
******************************************/


// Prototypes
void initialize();
void game();

// State Prototypes
void goToStart();
void start();
void goToGame();
void game();
void goToPause();
void pause();
void goToWin();
void win();
void goToLose();
void lose();
void goToInstr();
void instr();
void srand();
void goToNextLevel();
void level();

// Button Variables
unsigned short buttons;
unsigned short oldButtons;
enum {START, GAME, PAUSE, WIN, LOSE, INSTR, LEVEL};
int state;
int seed;
int startTime = 30000;
int lvl = 1;
int scount = 0;
int instrcount = 1;
int prevState = 0;

// Horizontal Offset
unsigned short hOff;

OBJ_ATTR shadowOAM[128];

int main() {

    initialize();
    setupSounds();
    setupInterrupts();
    

    while(1) {
        oldButtons = buttons;
        buttons = BUTTONS;
                

        switch(state) {

            case START:
                start();
                break;
            case GAME:
                game();
                break;
            case PAUSE:
                pause();
                break;
            case WIN:
                win();
                break;
            case LOSE:
                lose();
                break;
            case INSTR:
                instr();
                break;
            case LEVEL:
                level();
                break;
        }
    }
}

// Initialize the game on first launch
void initialize() {


    goToStart();

}
void goToInstr() {
    hideSprites();
    waitForVBlank();
    loadPalette(INSTR2Pal);
    DMANow(3, INSTR2Tiles, &CHARBLOCK[0],INSTR2TilesLen/2);
    DMANow(3, INSTR2Map, &SCREENBLOCK[31], INSTR2MapLen/2);
    REG_BG3CNT = BG_SIZE_LARGE | BG_CHARBLOCK(0) | BG_SCREENBLOCK(31);

    REG_DISPCTL = MODE0 | BG3_ENABLE;
    REG_BG0HOFF = 0;
    REG_BG0VOFF = 0;


    
    hideSprites();
    seed = 0;

    state = INSTR;
}

void instr() {
    hideSprites();
    waitForVBlank();

    // if (BUTTON_PRESSED(BUTTON_START) ||BUTTON_PRESSED(BUTTON_A) || BUTTON_PRESSED(BUTTON_B)  ) {


    //     srand(seed);

    //     goToStart();
    // }

    if (BUTTON_PRESSED(BUTTON_RIGHT)) {
        instrcount++;
    }
    if (BUTTON_PRESSED(BUTTON_LEFT)) {
        if (instrcount!= 1) {
            instrcount--;
        }
    }
    hideSprites();
    waitForVBlank();

    if (instrcount == 1) {
    loadPalette(INSTR1Pal);
    DMANow(3, INSTR1Tiles, &CHARBLOCK[0],INSTR1TilesLen/2);
    DMANow(3, INSTR1Map, &SCREENBLOCK[31], INSTR1MapLen/2);
    }
    if (instrcount == 2) {
    loadPalette(INSTR2Pal);
    DMANow(3, INSTR2Tiles, &CHARBLOCK[0],INSTR2TilesLen/2);
    DMANow(3, INSTR2Map, &SCREENBLOCK[31], INSTR2MapLen/2);
    }
    if (instrcount == 3) {
    loadPalette(INSTR3Pal);
    DMANow(3, INSTR3Tiles, &CHARBLOCK[0],INSTR3TilesLen/2);
    DMANow(3, INSTR3Map, &SCREENBLOCK[31], INSTR3MapLen/2);
    }
    if (instrcount == 4) {
    loadPalette(INSTR4Pal);
    DMANow(3, INSTR4Tiles, &CHARBLOCK[0],INSTR4TilesLen/2);
    DMANow(3, INSTR4Map, &SCREENBLOCK[31], INSTR4MapLen/2);
    }

    REG_BG3CNT = BG_SIZE_LARGE | BG_CHARBLOCK(0) | BG_SCREENBLOCK(31);
    REG_DISPCTL = MODE0 | BG3_ENABLE;

    if (BUTTON_PRESSED(BUTTON_START) && prevState == 0) {
        waitForVBlank();
        goToStart();
    }
    else if (BUTTON_PRESSED(BUTTON_START) && prevState == 1) {
        waitForVBlank();
        goToPause();
    }

}

// Update game each frame
void game() {

    updateGame();
    waitForVBlank();
    drawGame();
    // Scroll the background
    if (BUTTON_PRESSED(BUTTON_START)) {
        pauseSound();
        goToPause();
    }

    if (scount == 10) {
        hOff++;
        scount = 0;
    }

    waitForVBlank();



    // Update the offset registers with the actual offsets
    REG_BG0HOFF = hOff;
    REG_BG1HOFF += hOff;
    // if (BUTTON_PRESSED(BUTTON_UP)) {
    //     player.won = 1;
    // }



    // if(BUTTON_HELD(BUTTON_START)) {
    //     goToPause();
    // }
    if(player.gameOver) {

        stopSound();
        goToLose();
    }
    if (player.won) {
        stopSound();
        // goToWin();
        lvl++;
        goToNextLevel();
    }
    scount++;


}


void goToStart() {
    playSoundA(TRACK3, TRACK3LEN, TRACK3FREQ, 1);
    lvl = 1;
    startTime = 30000;
    hideSprites();
    waitForVBlank();

    loadPalette(TITLEPal);
    DMANow(3, TITLETiles, &CHARBLOCK[2],TITLETilesLen/2);
    DMANow(3, TITLEMap, &SCREENBLOCK[27], TITLEMapLen/2);
    REG_BG3CNT = BG_SIZE_LARGE | BG_CHARBLOCK(2) | BG_SCREENBLOCK(27);

    REG_DISPCTL = MODE0 | BG3_ENABLE;
    REG_BG2CNT = BG_SIZE_LARGE | BG_CHARBLOCK(2) | BG_SCREENBLOCK(27);
    REG_BG0HOFF = 0;
    REG_BG0VOFF = 0;


    
    hideSprites();
    seed = 0;

    state = START;

}


void start() {
    prevState = 0;
    hideSprites();
    seed++;


    waitForVBlank();

    if (BUTTON_PRESSED(BUTTON_B) && state == START) {

        hideSprites();
        srand(seed);

        goToInstr();
    }

    if (BUTTON_PRESSED(BUTTON_START) && state == START) {
        stopSound();

        srand(seed);

        goToNextLevel();
    }

}


void goToGame() {
    playSoundA(TRACK1, TRACK1LEN, TRACK1FREQ, 1);
    loadPalette(back22Pal);
    DMANow(3, bg1Tiles, &CHARBLOCK[0], bg1TilesLen/2);
    DMANow(3, bg1Map, &SCREENBLOCK[31], bg1MapLen/2);
    
    DMANow(3, back22Tiles, &CHARBLOCK[1], back22TilesLen/2);
    DMANow(3, back22Map, &SCREENBLOCK[29], back22MapLen/2);

    DMANow(3, stateScreenTiles, &CHARBLOCK[2], stateScreenTilesLen/2);
    DMANow(3, stateScreenMap, &SCREENBLOCK[27], stateScreenMapLen/2);

    DMANow(3, spritesTiles, &CHARBLOCK[4], spritesTilesLen/2);
    DMANow(3, spritesPal, SPRITEPALETTE, 256);


    REG_DISPCTL = MODE0 | BG1_ENABLE | BG0_ENABLE | SPRITE_ENABLE;

    REG_BG1CNT = BG_SIZE_SMALL | BG_CHARBLOCK(0) | BG_SCREENBLOCK(31);
    REG_BG0CNT = BG_SIZE_WIDE | BG_CHARBLOCK(1) | BG_SCREENBLOCK(29);
    REG_BG2CNT = BG_SIZE_LARGE | BG_CHARBLOCK(2) | BG_SCREENBLOCK(27);
    REG_BG0HOFF = 0;
    REG_BG0VOFF = 0;

    state = GAME;

}

void goToPause() {
    hideSprites();
    waitForVBlank();

    loadPalette(pause3Pal);
    DMANow(3, pause3Tiles, &CHARBLOCK[2],pause3TilesLen/2);
    DMANow(3, pause3Map, &SCREENBLOCK[27], pause3MapLen/2);
    REG_BG3CNT = BG_SIZE_LARGE | BG_CHARBLOCK(2) | BG_SCREENBLOCK(27);

    REG_DISPCTL = MODE0 | BG3_ENABLE;
    REG_BG2CNT = BG_SIZE_LARGE | BG_CHARBLOCK(2) | BG_SCREENBLOCK(27);

    hideSprites();
    

    state = PAUSE;
}


void pause() {

    waitForVBlank();
    prevState = 1;

    if (BUTTON_PRESSED(BUTTON_START)) {
        unpauseSound();
        goToGame();
    }
    else if (BUTTON_PRESSED(BUTTON_B))
        goToStart();
    else if (BUTTON_PRESSED(BUTTON_A))
        goToInstr();

}

void goToNextLevel() {
    hideSprites();
    waitForVBlank();
    loadPalette(LEVEL1Pal);

    if (lvl == 1) {
        DMANow(3, LEVEL1Tiles, &CHARBLOCK[2],LEVEL1TilesLen/2);
        DMANow(3, LEVEL1Map, &SCREENBLOCK[27], LEVEL1MapLen/2);
    }
    else if (lvl == 2) {
        DMANow(3, LEVEL2Tiles, &CHARBLOCK[2],LEVEL2TilesLen/2);
        DMANow(3, LEVEL2Map, &SCREENBLOCK[27], LEVEL2MapLen/2);
    }
    else if (lvl == 3){
        DMANow(3, LEVEL3Tiles, &CHARBLOCK[2],LEVEL1TilesLen/2);
        DMANow(3, LEVEL3Map, &SCREENBLOCK[27], LEVEL1MapLen/2);
    }

    if (lvl <= 3) {
        REG_BG3CNT = BG_SIZE_LARGE | BG_CHARBLOCK(2) | BG_SCREENBLOCK(27);

        REG_DISPCTL = MODE0 | BG3_ENABLE;

        hideSprites();
    }

    state = LEVEL;

}

void level() {

    if (lvl > 3) {
        
        goToWin();
    }
    if (state == LEVEL && BUTTON_PRESSED(BUTTON_START)) {
        startTime-=5000;
        goToGame();
        initGame(startTime);
    }

}

void goToWin() {
    playSoundA(TRACK4, TRACK4LEN, TRACK4FREQ, 1);
    hideSprites();
    waitForVBlank();

    loadPalette(WINPal);
    DMANow(3, WINTiles, &CHARBLOCK[2],WINTilesLen/2);
    DMANow(3, WINMap, &SCREENBLOCK[27], WINMapLen/2);
    REG_BG3CNT = BG_SIZE_LARGE | BG_CHARBLOCK(2) | BG_SCREENBLOCK(27);

    REG_DISPCTL = MODE0 | BG3_ENABLE;
    REG_BG2CNT = BG_SIZE_LARGE | BG_CHARBLOCK(2) | BG_SCREENBLOCK(27);
    lvl = 1;
    startTime = 30000;
    instrcount = 1;


    
    hideSprites();

    state = WIN;
}

void win() {

    waitForVBlank();

    if (BUTTON_PRESSED(BUTTON_START) && state == WIN) {
        goToStart();
    }
}

void goToLose() {
    playSoundA(TRACK2, TRACK2LEN, TRACK2FREQ, 1);
    hideSprites();
    waitForVBlank();

    loadPalette(LOSTPal);
    DMANow(3, LOSTTiles, &CHARBLOCK[2],LOSTTilesLen/2);
    DMANow(3, LOSTMap, &SCREENBLOCK[27], LOSTMapLen/2);
    REG_BG3CNT = BG_SIZE_LARGE | BG_CHARBLOCK(2) | BG_SCREENBLOCK(27);

    REG_DISPCTL = MODE0 | BG3_ENABLE;
    REG_BG2CNT = BG_SIZE_LARGE | BG_CHARBLOCK(2) | BG_SCREENBLOCK(27);
    
    hideSprites();

    state = LOSE;
}

void lose() {

    waitForVBlank();

    if (BUTTON_PRESSED(BUTTON_START) && state == LOSE) {
        goToStart();
    }
}
