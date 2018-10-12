// Player Struct
typedef struct {
	int row;
	int col;
	int cdel;
	int curFrame;
	int height;
	int width;
	unsigned char color;
	int bulletTimer;
	int aniCounter;
	int cDirection; // So the bullet knows which cdel to take
	int score;
	int plives;
	int rdel;
	int gameOver;
	int ecount;
	int won;
    int aniState;
    int prevAniState;
    int numFrames;

} PLAYER;

typedef struct {
	int active;
	int row;
	int col;
} LIVES;



// Bullet Struct
typedef struct {
	int side;
	int row;
	int col;
	int rdel;
	int cdel;
	int height;
	int width;
	unsigned char color;
	int active;
} BULLET;

typedef struct {
	int row;
	int col;
	int rdel;
	int cdel;
	int height;
	int width;
	unsigned char color;
	int active;
} EBULLET;

typedef struct {
	int row;
	int col;
	int rdel;
	int cdel;
	int height;
	int aniCounter;
	int curFrame;
	int width;
	int active;
	int bulletTimer;
	int cDirection;
	int type;
	int hit;
	int flip;
} ENEMY;

typedef struct {
	int row;
	int col;
	int rdel;
	int cdel;
	int height;
	int aniCounter;
	int curFrame;
	int width;
	int active;
	int bulletTimer;
	int cDirection;
} STRONG;

// Constants
#define BULLETCOUNT 5
#define EBULLETCOUNT 5
#define ENEMYCOUNT 40
#define STRONGCOUNT 5
#define LIVESCOUNT 5
// Variables
extern PLAYER player;
extern LIVES lives[LIVESCOUNT];
extern BULLET bullets[BULLETCOUNT];
extern BULLET ebullets[BULLETCOUNT];
extern ENEMY enemy[ENEMYCOUNT];
extern int enemiesRemaining;
extern int count;
// Custom Game Colors
#define NUMCOLORS 6
// This does an enum trick to make them the last indeces of the palette
enum {BLACKID=(256-NUMCOLORS), BLUEID, GREENID, REDID, WHITEID, GRAYID};
extern unsigned short colors[NUMCOLORS];

// Prototypes
void initBullets();
void drawLives(LIVES* b, int count);
void drawStrong(STRONG* b, int count);
void updateStrong(STRONG* s);
void initStrong();
void initLives();
void fireBullet(int x);
void updateBullet(BULLET *);
void drawBullet(BULLET *, int x);
void goToLose();
void updateEnemies(ENEMY* enemy);
void initGame(int x);
void updateGame();
void drawGame();
void initPlayer();
void updatePlayer();
void drawPlayer();
void initEnemies();
void drawEnemies(ENEMY* b, int count);
void updateFell();