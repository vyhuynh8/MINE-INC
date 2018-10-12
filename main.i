# 1 "main.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "main.c"
# 1 "myLib.h" 1




typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
# 64 "myLib.h"
extern unsigned short *videoBuffer;
# 85 "myLib.h"
typedef struct {
 u16 tileimg[8192];
} charblock;


typedef struct {
 u16 tilemap[1024];
} screenblock;



void setPixel3(int row, int col, unsigned short color);
void drawRect3(int row, int col, int height, int width, volatile unsigned short color);
void fillScreen3(volatile unsigned short color);
void drawImage3(int row, int col, int height, int width, const unsigned short *image);
void drawFullscreenImage3(const unsigned short *image);


void setPixel4(int row, int col, unsigned char colorIndex);
void drawRect4(int row, int col, int height, int width, volatile unsigned char colorIndex);
void fillScreen4(volatile unsigned char colorIndex);
void drawImage4(int row, int col, int height, int width, const unsigned short *image);
void drawFullscreenImage4(const unsigned short *image);


void waitForVBlank();
void flipPage();
void loadPalette(const unsigned short * palette);





typedef struct {
    unsigned short attr0;
    unsigned short attr1;
    unsigned short attr2;
    unsigned short fill;
} OBJ_ATTR;
# 175 "myLib.h"
extern unsigned short oldButtons;
extern unsigned short buttons;
# 186 "myLib.h"
typedef volatile struct {
    volatile const void *src;
    volatile void *dst;
    volatile unsigned int cnt;
} DMA;


extern DMA *dma;
# 226 "myLib.h"
void DMANow(int channel, volatile const void *src, volatile void *dst, unsigned int cnt);




int collision(int rowA, int colA, int heightA, int widthA, int rowB, int colB, int heightB, int widthB);

void hideSprites();
# 349 "myLib.h"
typedef struct
{
    int row;
    int col;
    int rdel;
    int cdel;
    int size;
    u16 color;
    int AI_STATE;
} MOVOBJ;
# 2 "main.c" 2
# 1 "bg1.h" 1
# 22 "bg1.h"
extern const unsigned short bg1Tiles[1376];


extern const unsigned short bg1Map[1024];


extern const unsigned short bg1Pal[256];
# 3 "main.c" 2
# 1 "back22.h" 1
# 22 "back22.h"
extern const unsigned short back22Tiles[1712];


extern const unsigned short back22Map[2048];


extern const unsigned short back22Pal[256];
# 4 "main.c" 2
# 1 "sprites.h" 1
# 21 "sprites.h"
extern const unsigned short spritesTiles[16384];


extern const unsigned short spritesPal[256];
# 5 "main.c" 2
# 1 "game.h" 1

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
 int cDirection;
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
# 95 "game.h"
extern PLAYER player;
extern LIVES lives[5];
extern BULLET bullets[5];
extern BULLET ebullets[5];
extern ENEMY enemy[40];
extern int enemiesRemaining;
extern int count;



enum {BLACKID=(256-6), BLUEID, GREENID, REDID, WHITEID, GRAYID};
extern unsigned short colors[6];


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
# 6 "main.c" 2
# 1 "stateScreen.h" 1
# 22 "stateScreen.h"
extern const unsigned short stateScreenTiles[48];


extern const unsigned short stateScreenMap[1024];


extern const unsigned short stateScreenPal[256];
# 7 "main.c" 2
# 1 "INSTR2.h" 1
# 22 "INSTR2.h"
extern const unsigned short INSTR2Tiles[4208];


extern const unsigned short INSTR2Map[1024];


extern const unsigned short INSTR2Pal[256];
# 8 "main.c" 2
# 1 "sound.c" 1
# 1 "/Users/vy/Documents/devkitARM/arm-none-eabi/include/stdlib.h" 1 3
# 10 "/Users/vy/Documents/devkitARM/arm-none-eabi/include/stdlib.h" 3
# 1 "/Users/vy/Documents/devkitARM/arm-none-eabi/include/machine/ieeefp.h" 1 3
# 11 "/Users/vy/Documents/devkitARM/arm-none-eabi/include/stdlib.h" 2 3
# 1 "/Users/vy/Documents/devkitARM/arm-none-eabi/include/_ansi.h" 1 3
# 15 "/Users/vy/Documents/devkitARM/arm-none-eabi/include/_ansi.h" 3
# 1 "/Users/vy/Documents/devkitARM/arm-none-eabi/include/newlib.h" 1 3
# 14 "/Users/vy/Documents/devkitARM/arm-none-eabi/include/newlib.h" 3
# 1 "/Users/vy/Documents/devkitARM/arm-none-eabi/include/_newlib_version.h" 1 3
# 15 "/Users/vy/Documents/devkitARM/arm-none-eabi/include/newlib.h" 2 3
# 16 "/Users/vy/Documents/devkitARM/arm-none-eabi/include/_ansi.h" 2 3
# 1 "/Users/vy/Documents/devkitARM/arm-none-eabi/include/sys/config.h" 1 3



# 1 "/Users/vy/Documents/devkitARM/arm-none-eabi/include/machine/ieeefp.h" 1 3
# 5 "/Users/vy/Documents/devkitARM/arm-none-eabi/include/sys/config.h" 2 3
# 1 "/Users/vy/Documents/devkitARM/arm-none-eabi/include/sys/features.h" 1 3
# 6 "/Users/vy/Documents/devkitARM/arm-none-eabi/include/sys/config.h" 2 3
# 17 "/Users/vy/Documents/devkitARM/arm-none-eabi/include/_ansi.h" 2 3
# 12 "/Users/vy/Documents/devkitARM/arm-none-eabi/include/stdlib.h" 2 3




# 1 "/Users/vy/Documents/devkitARM/lib/gcc/arm-none-eabi/7.1.0/include/stddef.h" 1 3 4
# 216 "/Users/vy/Documents/devkitARM/lib/gcc/arm-none-eabi/7.1.0/include/stddef.h" 3 4

# 216 "/Users/vy/Documents/devkitARM/lib/gcc/arm-none-eabi/7.1.0/include/stddef.h" 3 4
typedef unsigned int size_t;
# 328 "/Users/vy/Documents/devkitARM/lib/gcc/arm-none-eabi/7.1.0/include/stddef.h" 3 4
typedef unsigned int wchar_t;
# 17 "/Users/vy/Documents/devkitARM/arm-none-eabi/include/stdlib.h" 2 3

# 1 "/Users/vy/Documents/devkitARM/arm-none-eabi/include/sys/reent.h" 1 3
# 13 "/Users/vy/Documents/devkitARM/arm-none-eabi/include/sys/reent.h" 3
# 1 "/Users/vy/Documents/devkitARM/arm-none-eabi/include/_ansi.h" 1 3
# 14 "/Users/vy/Documents/devkitARM/arm-none-eabi/include/sys/reent.h" 2 3
# 1 "/Users/vy/Documents/devkitARM/lib/gcc/arm-none-eabi/7.1.0/include/stddef.h" 1 3 4
# 149 "/Users/vy/Documents/devkitARM/lib/gcc/arm-none-eabi/7.1.0/include/stddef.h" 3 4
typedef int ptrdiff_t;
# 15 "/Users/vy/Documents/devkitARM/arm-none-eabi/include/sys/reent.h" 2 3
# 1 "/Users/vy/Documents/devkitARM/arm-none-eabi/include/sys/_types.h" 1 3
# 24 "/Users/vy/Documents/devkitARM/arm-none-eabi/include/sys/_types.h" 3
# 1 "/Users/vy/Documents/devkitARM/arm-none-eabi/include/machine/_types.h" 1 3



# 1 "/Users/vy/Documents/devkitARM/arm-none-eabi/include/machine/_default_types.h" 1 3
# 41 "/Users/vy/Documents/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3
typedef signed char __int8_t;

typedef unsigned char __uint8_t;
# 55 "/Users/vy/Documents/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3
typedef short int __int16_t;

typedef short unsigned int __uint16_t;
# 77 "/Users/vy/Documents/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3
typedef long int __int32_t;

typedef long unsigned int __uint32_t;
# 103 "/Users/vy/Documents/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3
typedef long long int __int64_t;

typedef long long unsigned int __uint64_t;
# 134 "/Users/vy/Documents/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3
typedef signed char __int_least8_t;

typedef unsigned char __uint_least8_t;
# 160 "/Users/vy/Documents/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3
typedef short int __int_least16_t;

typedef short unsigned int __uint_least16_t;
# 182 "/Users/vy/Documents/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3
typedef long int __int_least32_t;

typedef long unsigned int __uint_least32_t;
# 200 "/Users/vy/Documents/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3
typedef long long int __int_least64_t;

typedef long long unsigned int __uint_least64_t;
# 214 "/Users/vy/Documents/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3
typedef long long int __intmax_t;







typedef long long unsigned int __uintmax_t;







typedef int __intptr_t;

typedef unsigned int __uintptr_t;
# 5 "/Users/vy/Documents/devkitARM/arm-none-eabi/include/machine/_types.h" 2 3


typedef __int64_t _off_t;


typedef __int64_t _fpos_t;


typedef __uint32_t __ino_t;


typedef __uint32_t __dev_t;
# 25 "/Users/vy/Documents/devkitARM/arm-none-eabi/include/sys/_types.h" 2 3
# 1 "/Users/vy/Documents/devkitARM/arm-none-eabi/include/sys/lock.h" 1 3




# 1 "/Users/vy/Documents/devkitARM/lib/gcc/arm-none-eabi/7.1.0/include/stdint.h" 1 3 4
# 9 "/Users/vy/Documents/devkitARM/lib/gcc/arm-none-eabi/7.1.0/include/stdint.h" 3 4
# 1 "/Users/vy/Documents/devkitARM/arm-none-eabi/include/stdint.h" 1 3 4
# 13 "/Users/vy/Documents/devkitARM/arm-none-eabi/include/stdint.h" 3 4
# 1 "/Users/vy/Documents/devkitARM/arm-none-eabi/include/sys/_intsup.h" 1 3 4
# 35 "/Users/vy/Documents/devkitARM/arm-none-eabi/include/sys/_intsup.h" 3 4
       
       
       
       
       
       
       
# 187 "/Users/vy/Documents/devkitARM/arm-none-eabi/include/sys/_intsup.h" 3 4
       
       
       
       
       
       
       
# 14 "/Users/vy/Documents/devkitARM/arm-none-eabi/include/stdint.h" 2 3 4
# 1 "/Users/vy/Documents/devkitARM/arm-none-eabi/include/sys/_stdint.h" 1 3 4
# 20 "/Users/vy/Documents/devkitARM/arm-none-eabi/include/sys/_stdint.h" 3 4
typedef __int8_t int8_t ;



typedef __uint8_t uint8_t ;







typedef __int16_t int16_t ;



typedef __uint16_t uint16_t ;







typedef __int32_t int32_t ;



typedef __uint32_t uint32_t ;







typedef __int64_t int64_t ;



typedef __uint64_t uint64_t ;






typedef __intmax_t intmax_t;




typedef __uintmax_t uintmax_t;




typedef __intptr_t intptr_t;




typedef __uintptr_t uintptr_t;
# 15 "/Users/vy/Documents/devkitARM/arm-none-eabi/include/stdint.h" 2 3 4






typedef __int_least8_t int_least8_t;
typedef __uint_least8_t uint_least8_t;




typedef __int_least16_t int_least16_t;
typedef __uint_least16_t uint_least16_t;




typedef __int_least32_t int_least32_t;
typedef __uint_least32_t uint_least32_t;




typedef __int_least64_t int_least64_t;
typedef __uint_least64_t uint_least64_t;
# 51 "/Users/vy/Documents/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef int int_fast8_t;
  typedef unsigned int uint_fast8_t;
# 61 "/Users/vy/Documents/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef int int_fast16_t;
  typedef unsigned int uint_fast16_t;
# 71 "/Users/vy/Documents/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef int int_fast32_t;
  typedef unsigned int uint_fast32_t;
# 81 "/Users/vy/Documents/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef long long int int_fast64_t;
  typedef long long unsigned int uint_fast64_t;
# 10 "/Users/vy/Documents/devkitARM/lib/gcc/arm-none-eabi/7.1.0/include/stdint.h" 2 3 4
# 6 "/Users/vy/Documents/devkitARM/arm-none-eabi/include/sys/lock.h" 2 3

typedef int32_t _LOCK_T;

struct __lock_t {
 _LOCK_T lock;
 uint32_t thread_tag;
 uint32_t counter;
};

typedef struct __lock_t _LOCK_RECURSIVE_T;

extern void __libc_lock_init(_LOCK_T *lock);
extern void __libc_lock_init_recursive(_LOCK_RECURSIVE_T *lock);
extern void __libc_lock_close(_LOCK_T *lock);
extern void __libc_lock_close_recursive(_LOCK_RECURSIVE_T *lock);
extern void __libc_lock_acquire(_LOCK_T *lock);
extern void __libc_lock_acquire_recursive(_LOCK_RECURSIVE_T *lock);
extern void __libc_lock_release(_LOCK_T *lock);
extern void __libc_lock_release_recursive(_LOCK_RECURSIVE_T *lock);


extern int __libc_lock_try_acquire(_LOCK_T *lock);
extern int __libc_lock_try_acquire_recursive(_LOCK_RECURSIVE_T *lock);
# 26 "/Users/vy/Documents/devkitARM/arm-none-eabi/include/sys/_types.h" 2 3


typedef long __blkcnt_t;



typedef long __blksize_t;



typedef __uint64_t __fsblkcnt_t;



typedef __uint32_t __fsfilcnt_t;
# 50 "/Users/vy/Documents/devkitARM/arm-none-eabi/include/sys/_types.h" 3
typedef int __pid_t;







typedef unsigned short __uid_t;


typedef unsigned short __gid_t;



typedef __uint32_t __id_t;
# 88 "/Users/vy/Documents/devkitARM/arm-none-eabi/include/sys/_types.h" 3
typedef __uint32_t __mode_t;





__extension__ typedef long long _off64_t;





typedef _off_t __off_t;


typedef _off64_t __loff_t;


typedef long __key_t;
# 129 "/Users/vy/Documents/devkitARM/arm-none-eabi/include/sys/_types.h" 3
typedef unsigned int __size_t;
# 145 "/Users/vy/Documents/devkitARM/arm-none-eabi/include/sys/_types.h" 3
typedef signed int _ssize_t;
# 156 "/Users/vy/Documents/devkitARM/arm-none-eabi/include/sys/_types.h" 3
typedef _ssize_t __ssize_t;


# 1 "/Users/vy/Documents/devkitARM/lib/gcc/arm-none-eabi/7.1.0/include/stddef.h" 1 3 4
# 357 "/Users/vy/Documents/devkitARM/lib/gcc/arm-none-eabi/7.1.0/include/stddef.h" 3 4
typedef unsigned int wint_t;
# 160 "/Users/vy/Documents/devkitARM/arm-none-eabi/include/sys/_types.h" 2 3



typedef struct
{
  int __count;
  union
  {
    wint_t __wch;
    unsigned char __wchb[4];
  } __value;
} _mbstate_t;



typedef _LOCK_RECURSIVE_T _flock_t;




typedef void *_iconv_t;



typedef unsigned long __clock_t;


typedef long __time_t;


typedef unsigned long __clockid_t;


typedef unsigned long __timer_t;


typedef __uint8_t __sa_family_t;



typedef __uint32_t __socklen_t;


typedef unsigned short __nlink_t;
typedef long __suseconds_t;
typedef unsigned long __useconds_t;




typedef char * __va_list;
# 16 "/Users/vy/Documents/devkitARM/arm-none-eabi/include/sys/reent.h" 2 3






typedef unsigned long __ULong;
# 38 "/Users/vy/Documents/devkitARM/arm-none-eabi/include/sys/reent.h" 3
struct _reent;

struct __locale_t;






struct _Bigint
{
  struct _Bigint *_next;
  int _k, _maxwds, _sign, _wds;
  __ULong _x[1];
};


struct __tm
{
  int __tm_sec;
  int __tm_min;
  int __tm_hour;
  int __tm_mday;
  int __tm_mon;
  int __tm_year;
  int __tm_wday;
  int __tm_yday;
  int __tm_isdst;
};







struct _on_exit_args {
 void * _fnargs[32];
 void * _dso_handle[32];

 __ULong _fntypes;


 __ULong _is_cxa;
};
# 93 "/Users/vy/Documents/devkitARM/arm-none-eabi/include/sys/reent.h" 3
struct _atexit {
 struct _atexit *_next;
 int _ind;

 void (*_fns[32])(void);
        struct _on_exit_args _on_exit_args;
};
# 117 "/Users/vy/Documents/devkitARM/arm-none-eabi/include/sys/reent.h" 3
struct __sbuf {
 unsigned char *_base;
 int _size;
};
# 181 "/Users/vy/Documents/devkitARM/arm-none-eabi/include/sys/reent.h" 3
struct __sFILE {
  unsigned char *_p;
  int _r;
  int _w;
  short _flags;
  short _file;
  struct __sbuf _bf;
  int _lbfsize;






  void * _cookie;

  int (* _read) (struct _reent *, void *, char *, int)
                                          ;
  int (* _write) (struct _reent *, void *, const char *, int)

                                   ;
  _fpos_t (* _seek) (struct _reent *, void *, _fpos_t, int);
  int (* _close) (struct _reent *, void *);


  struct __sbuf _ub;
  unsigned char *_up;
  int _ur;


  unsigned char _ubuf[3];
  unsigned char _nbuf[1];


  struct __sbuf _lb;


  int _blksize;
  _off_t _offset;


  struct _reent *_data;



  _flock_t _lock;

  _mbstate_t _mbstate;
  int _flags2;
};
# 287 "/Users/vy/Documents/devkitARM/arm-none-eabi/include/sys/reent.h" 3
typedef struct __sFILE __FILE;



struct _glue
{
  struct _glue *_next;
  int _niobs;
  __FILE *_iobs;
};
# 319 "/Users/vy/Documents/devkitARM/arm-none-eabi/include/sys/reent.h" 3
struct _rand48 {
  unsigned short _seed[3];
  unsigned short _mult[3];
  unsigned short _add;




};
# 571 "/Users/vy/Documents/devkitARM/arm-none-eabi/include/sys/reent.h" 3
struct _reent
{
  int _errno;




  __FILE *_stdin, *_stdout, *_stderr;

  int _inc;
  char _emergency[25];


  int _unspecified_locale_info;
  struct __locale_t *_locale;

  int __sdidinit;

  void (* __cleanup) (struct _reent *);


  struct _Bigint *_result;
  int _result_k;
  struct _Bigint *_p5s;
  struct _Bigint **_freelist;


  int _cvtlen;
  char *_cvtbuf;

  union
    {
      struct
        {
          unsigned int _unused_rand;
          char * _strtok_last;
          char _asctime_buf[26];
          struct __tm _localtime_buf;
          int _gamma_signgam;
          __extension__ unsigned long long _rand_next;
          struct _rand48 _r48;
          _mbstate_t _mblen_state;
          _mbstate_t _mbtowc_state;
          _mbstate_t _wctomb_state;
          char _l64a_buf[8];
          char _signal_buf[24];
          int _getdate_err;
          _mbstate_t _mbrlen_state;
          _mbstate_t _mbrtowc_state;
          _mbstate_t _mbsrtowcs_state;
          _mbstate_t _wcrtomb_state;
          _mbstate_t _wcsrtombs_state;
   int _h_errno;
        } _reent;



      struct
        {

          unsigned char * _nextf[30];
          unsigned int _nmalloc[30];
        } _unused;
    } _new;



  struct _atexit *_atexit;
  struct _atexit _atexit0;



  void (**(_sig_func))(int);




  struct _glue __sglue;
  __FILE __sf[3];
  void *deviceData;
};
# 769 "/Users/vy/Documents/devkitARM/arm-none-eabi/include/sys/reent.h" 3
extern struct _reent *_impure_ptr ;
extern struct _reent *const _global_impure_ptr ;

void _reclaim_reent (struct _reent *);





  struct _reent * __getreent (void);
# 19 "/Users/vy/Documents/devkitARM/arm-none-eabi/include/stdlib.h" 2 3
# 1 "/Users/vy/Documents/devkitARM/arm-none-eabi/include/sys/cdefs.h" 1 3
# 45 "/Users/vy/Documents/devkitARM/arm-none-eabi/include/sys/cdefs.h" 3
# 1 "/Users/vy/Documents/devkitARM/lib/gcc/arm-none-eabi/7.1.0/include/stddef.h" 1 3 4
# 46 "/Users/vy/Documents/devkitARM/arm-none-eabi/include/sys/cdefs.h" 2 3
# 20 "/Users/vy/Documents/devkitARM/arm-none-eabi/include/stdlib.h" 2 3
# 1 "/Users/vy/Documents/devkitARM/arm-none-eabi/include/machine/stdlib.h" 1 3
# 21 "/Users/vy/Documents/devkitARM/arm-none-eabi/include/stdlib.h" 2 3
# 33 "/Users/vy/Documents/devkitARM/arm-none-eabi/include/stdlib.h" 3


typedef struct
{
  int quot;
  int rem;
} div_t;

typedef struct
{
  long quot;
  long rem;
} ldiv_t;


typedef struct
{
  long long int quot;
  long long int rem;
} lldiv_t;




typedef int (*__compar_fn_t) (const void *, const void *);







int __locale_mb_cur_max (void);



void abort (void) __attribute__ ((__noreturn__));
int abs (int);





int atexit (void (*__func)(void));
double atof (const char *__nptr);



int atoi (const char *__nptr);
int _atoi_r (struct _reent *, const char *__nptr);
long atol (const char *__nptr);
long _atol_r (struct _reent *, const char *__nptr);
void * bsearch (const void * __key, const void * __base, size_t __nmemb, size_t __size, __compar_fn_t _compar)



                                ;
void * calloc (size_t __nmemb, size_t __size) ;
div_t div (int __numer, int __denom);
void exit (int __status) __attribute__ ((__noreturn__));
void free (void *) ;
char * getenv (const char *__string);
char * _getenv_r (struct _reent *, const char *__string);
char * _findenv (const char *, int *);
char * _findenv_r (struct _reent *, const char *, int *);




long labs (long);
ldiv_t ldiv (long __numer, long __denom);
void * malloc (size_t __size) ;
int mblen (const char *, size_t);
int _mblen_r (struct _reent *, const char *, size_t, _mbstate_t *);
int mbtowc (wchar_t *restrict, const char *restrict, size_t);
int _mbtowc_r (struct _reent *, wchar_t *restrict, const char *restrict, size_t, _mbstate_t *);
int wctomb (char *, wchar_t);
int _wctomb_r (struct _reent *, char *, wchar_t, _mbstate_t *);
size_t mbstowcs (wchar_t *restrict, const char *restrict, size_t);
size_t _mbstowcs_r (struct _reent *, wchar_t *restrict, const char *restrict, size_t, _mbstate_t *);
size_t wcstombs (char *restrict, const wchar_t *restrict, size_t);
size_t _wcstombs_r (struct _reent *, char *restrict, const wchar_t *restrict, size_t, _mbstate_t *);
# 133 "/Users/vy/Documents/devkitARM/arm-none-eabi/include/stdlib.h" 3
char * _mkdtemp_r (struct _reent *, char *);
int _mkostemp_r (struct _reent *, char *, int);
int _mkostemps_r (struct _reent *, char *, int, int);
int _mkstemp_r (struct _reent *, char *);
int _mkstemps_r (struct _reent *, char *, int);
char * _mktemp_r (struct _reent *, char *) __attribute__ ((__deprecated__("the use of `mktemp' is dangerous; use `mkstemp' instead")));
void qsort (void * __base, size_t __nmemb, size_t __size, __compar_fn_t _compar);
int rand (void);
void * realloc (void * __r, size_t __size) ;
# 154 "/Users/vy/Documents/devkitARM/arm-none-eabi/include/stdlib.h" 3
void srand (unsigned __seed);
double strtod (const char *restrict __n, char **restrict __end_PTR);
double _strtod_r (struct _reent *,const char *restrict __n, char **restrict __end_PTR);

float strtof (const char *restrict __n, char **restrict __end_PTR);







long strtol (const char *restrict __n, char **restrict __end_PTR, int __base);
long _strtol_r (struct _reent *,const char *restrict __n, char **restrict __end_PTR, int __base);
unsigned long strtoul (const char *restrict __n, char **restrict __end_PTR, int __base);
unsigned long _strtoul_r (struct _reent *,const char *restrict __n, char **restrict __end_PTR, int __base);
# 186 "/Users/vy/Documents/devkitARM/arm-none-eabi/include/stdlib.h" 3
int system (const char *__string);
# 197 "/Users/vy/Documents/devkitARM/arm-none-eabi/include/stdlib.h" 3
void _Exit (int __status) __attribute__ ((__noreturn__));




int _putenv_r (struct _reent *, char *__string);
void * _reallocf_r (struct _reent *, void *, size_t);



int _setenv_r (struct _reent *, const char *__string, const char *__value, int __overwrite);
# 219 "/Users/vy/Documents/devkitARM/arm-none-eabi/include/stdlib.h" 3
char * __itoa (int, char *, int);
char * __utoa (unsigned, char *, int);
# 258 "/Users/vy/Documents/devkitARM/arm-none-eabi/include/stdlib.h" 3
long long atoll (const char *__nptr);

long long _atoll_r (struct _reent *, const char *__nptr);

long long llabs (long long);
lldiv_t lldiv (long long __numer, long long __denom);
long long strtoll (const char *restrict __n, char **restrict __end_PTR, int __base);

long long _strtoll_r (struct _reent *, const char *restrict __n, char **restrict __end_PTR, int __base);

unsigned long long strtoull (const char *restrict __n, char **restrict __end_PTR, int __base);

unsigned long long _strtoull_r (struct _reent *, const char *restrict __n, char **restrict __end_PTR, int __base);
# 279 "/Users/vy/Documents/devkitARM/arm-none-eabi/include/stdlib.h" 3
int _unsetenv_r (struct _reent *, const char *__string);






char * _dtoa_r (struct _reent *, double, int, int, int *, int*, char**);

void * _malloc_r (struct _reent *, size_t) ;
void * _calloc_r (struct _reent *, size_t, size_t) ;
void _free_r (struct _reent *, void *) ;
void * _realloc_r (struct _reent *, void *, size_t) ;
void _mstats_r (struct _reent *, char *);

int _system_r (struct _reent *, const char *);

void __eprintf (const char *, const char *, unsigned int, const char *);
# 316 "/Users/vy/Documents/devkitARM/arm-none-eabi/include/stdlib.h" 3
extern long double _strtold_r (struct _reent *, const char *restrict, char **restrict);

extern long double strtold (const char *restrict, char **restrict);
# 333 "/Users/vy/Documents/devkitARM/arm-none-eabi/include/stdlib.h" 3

# 2 "sound.c" 2
# 1 "/Users/vy/Documents/devkitARM/arm-none-eabi/include/string.h" 1 3
# 17 "/Users/vy/Documents/devkitARM/arm-none-eabi/include/string.h" 3
# 1 "/Users/vy/Documents/devkitARM/lib/gcc/arm-none-eabi/7.1.0/include/stddef.h" 1 3 4
# 18 "/Users/vy/Documents/devkitARM/arm-none-eabi/include/string.h" 2 3







void * memchr (const void *, int, size_t);
int memcmp (const void *, const void *, size_t);
void * memcpy (void * restrict, const void * restrict, size_t);
void * memmove (void *, const void *, size_t);
void * memset (void *, int, size_t);
char *strcat (char *restrict, const char *restrict);
char *strchr (const char *, int);
int strcmp (const char *, const char *);
int strcoll (const char *, const char *);
char *strcpy (char *restrict, const char *restrict);
size_t strcspn (const char *, const char *);
char *strerror (int);
size_t strlen (const char *);
char *strncat (char *restrict, const char *restrict, size_t);
int strncmp (const char *, const char *, size_t);
char *strncpy (char *restrict, const char *restrict, size_t);
char *strpbrk (const char *, const char *);
char *strrchr (const char *, int);
size_t strspn (const char *, const char *);
char *strstr (const char *, const char *);

char *strtok (char *restrict, const char *restrict);

size_t strxfrm (char *restrict, const char *restrict, size_t);
# 102 "/Users/vy/Documents/devkitARM/arm-none-eabi/include/string.h" 3
char *_strdup_r (struct _reent *, const char *);



char *_strndup_r (struct _reent *, const char *, size_t);
# 133 "/Users/vy/Documents/devkitARM/arm-none-eabi/include/string.h" 3
char * _strerror_r (struct _reent *, int, int, int *);
# 155 "/Users/vy/Documents/devkitARM/arm-none-eabi/include/string.h" 3
char *strsignal (int __signo);
# 192 "/Users/vy/Documents/devkitARM/arm-none-eabi/include/string.h" 3
# 1 "/Users/vy/Documents/devkitARM/arm-none-eabi/include/sys/string.h" 1 3
# 193 "/Users/vy/Documents/devkitARM/arm-none-eabi/include/string.h" 2 3


# 3 "sound.c" 2
# 1 "/Users/vy/Documents/devkitARM/arm-none-eabi/include/stdio.h" 1 3
# 36 "/Users/vy/Documents/devkitARM/arm-none-eabi/include/stdio.h" 3
# 1 "/Users/vy/Documents/devkitARM/lib/gcc/arm-none-eabi/7.1.0/include/stddef.h" 1 3 4
# 37 "/Users/vy/Documents/devkitARM/arm-none-eabi/include/stdio.h" 2 3



# 1 "/Users/vy/Documents/devkitARM/lib/gcc/arm-none-eabi/7.1.0/include/stdarg.h" 1 3 4
# 40 "/Users/vy/Documents/devkitARM/lib/gcc/arm-none-eabi/7.1.0/include/stdarg.h" 3 4
typedef __builtin_va_list __gnuc_va_list;
# 41 "/Users/vy/Documents/devkitARM/arm-none-eabi/include/stdio.h" 2 3
# 61 "/Users/vy/Documents/devkitARM/arm-none-eabi/include/stdio.h" 3
# 1 "/Users/vy/Documents/devkitARM/arm-none-eabi/include/sys/types.h" 1 3
# 28 "/Users/vy/Documents/devkitARM/arm-none-eabi/include/sys/types.h" 3
typedef __uint8_t u_int8_t;


typedef __uint16_t u_int16_t;


typedef __uint32_t u_int32_t;


typedef __uint64_t u_int64_t;

typedef int register_t;
# 62 "/Users/vy/Documents/devkitARM/arm-none-eabi/include/sys/types.h" 3
# 1 "/Users/vy/Documents/devkitARM/lib/gcc/arm-none-eabi/7.1.0/include/stddef.h" 1 3 4
# 63 "/Users/vy/Documents/devkitARM/arm-none-eabi/include/sys/types.h" 2 3
# 113 "/Users/vy/Documents/devkitARM/arm-none-eabi/include/sys/types.h" 3
typedef __blkcnt_t blkcnt_t;




typedef __blksize_t blksize_t;




typedef unsigned long clock_t;





typedef long time_t;





typedef long daddr_t;



typedef char * caddr_t;




typedef __fsblkcnt_t fsblkcnt_t;
typedef __fsfilcnt_t fsfilcnt_t;




typedef __id_t id_t;




typedef __ino_t ino_t;
# 173 "/Users/vy/Documents/devkitARM/arm-none-eabi/include/sys/types.h" 3
typedef __off_t off_t;



typedef __dev_t dev_t;



typedef __uid_t uid_t;



typedef __gid_t gid_t;




typedef __pid_t pid_t;




typedef __key_t key_t;




typedef _ssize_t ssize_t;




typedef __mode_t mode_t;




typedef __nlink_t nlink_t;




typedef __clockid_t clockid_t;





typedef __timer_t timer_t;





typedef __useconds_t useconds_t;




typedef __suseconds_t suseconds_t;



typedef __int64_t sbintime_t;


# 1 "/Users/vy/Documents/devkitARM/arm-none-eabi/include/sys/_pthreadtypes.h" 1 3
# 240 "/Users/vy/Documents/devkitARM/arm-none-eabi/include/sys/types.h" 2 3
# 1 "/Users/vy/Documents/devkitARM/arm-none-eabi/include/machine/types.h" 1 3
# 241 "/Users/vy/Documents/devkitARM/arm-none-eabi/include/sys/types.h" 2 3
# 62 "/Users/vy/Documents/devkitARM/arm-none-eabi/include/stdio.h" 2 3




typedef __FILE FILE;






typedef _fpos_t fpos_t;





# 1 "/Users/vy/Documents/devkitARM/arm-none-eabi/include/sys/stdio.h" 1 3
# 80 "/Users/vy/Documents/devkitARM/arm-none-eabi/include/stdio.h" 2 3
# 186 "/Users/vy/Documents/devkitARM/arm-none-eabi/include/stdio.h" 3
FILE * tmpfile (void);
char * tmpnam (char *);



int fclose (FILE *);
int fflush (FILE *);
FILE * freopen (const char *restrict, const char *restrict, FILE *restrict);
void setbuf (FILE *restrict, char *restrict);
int setvbuf (FILE *restrict, char *restrict, int, size_t);
int fprintf (FILE *restrict, const char *restrict, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;
int fscanf (FILE *restrict, const char *restrict, ...) __attribute__ ((__format__ (__scanf__, 2, 3)))
                                                           ;
int printf (const char *restrict, ...) __attribute__ ((__format__ (__printf__, 1, 2)))
                                                            ;
int scanf (const char *restrict, ...) __attribute__ ((__format__ (__scanf__, 1, 2)))
                                                           ;
int sscanf (const char *restrict, const char *restrict, ...) __attribute__ ((__format__ (__scanf__, 2, 3)))
                                                           ;
int vfprintf (FILE *restrict, const char *restrict, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
int vprintf (const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 1, 0)))
                                                            ;
int vsprintf (char *restrict, const char *restrict, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
int fgetc (FILE *);
char * fgets (char *restrict, int, FILE *restrict);
int fputc (int, FILE *);
int fputs (const char *restrict, FILE *restrict);
int getc (FILE *);
int getchar (void);
char * gets (char *);
int putc (int, FILE *);
int putchar (int);
int puts (const char *);
int ungetc (int, FILE *);
size_t fread (void * restrict, size_t _size, size_t _n, FILE *restrict);
size_t fwrite (const void * restrict , size_t _size, size_t _n, FILE *);



int fgetpos (FILE *restrict, fpos_t *restrict);

int fseek (FILE *, off_t, int);



int fsetpos (FILE *, const fpos_t *);

long ftell ( FILE *);
void rewind (FILE *);
void clearerr (FILE *);
int feof (FILE *);
int ferror (FILE *);
void perror (const char *);

FILE * fopen (const char *restrict _name, const char *restrict _type);
int sprintf (char *restrict, const char *restrict, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;
int remove (const char *);
int rename (const char *, const char *);
# 266 "/Users/vy/Documents/devkitARM/arm-none-eabi/include/stdio.h" 3
int snprintf (char *restrict, size_t, const char *restrict, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int vsnprintf (char *restrict, size_t, const char *restrict, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int vfscanf (FILE *restrict, const char *restrict, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 2, 0)))
                                                           ;
int vscanf (const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 1, 0)))
                                                           ;
int vsscanf (const char *restrict, const char *restrict, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 2, 0)))
                                                           ;
# 393 "/Users/vy/Documents/devkitARM/arm-none-eabi/include/stdio.h" 3
int _asiprintf_r (struct _reent *, char **, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
char * _asniprintf_r (struct _reent *, char *, size_t *, const char *, ...) __attribute__ ((__format__ (__printf__, 4, 5)))
                                                            ;
char * _asnprintf_r (struct _reent *, char *restrict, size_t *restrict, const char *restrict, ...) __attribute__ ((__format__ (__printf__, 4, 5)))
                                                            ;
int _asprintf_r (struct _reent *, char **restrict, const char *restrict, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int _diprintf_r (struct _reent *, int, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int _dprintf_r (struct _reent *, int, const char *restrict, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int _fclose_r (struct _reent *, FILE *);
int _fcloseall_r (struct _reent *);
FILE * _fdopen_r (struct _reent *, int, const char *);
int _fflush_r (struct _reent *, FILE *);
int _fgetc_r (struct _reent *, FILE *);
int _fgetc_unlocked_r (struct _reent *, FILE *);
char * _fgets_r (struct _reent *, char *restrict, int, FILE *restrict);
char * _fgets_unlocked_r (struct _reent *, char *restrict, int, FILE *restrict);




int _fgetpos_r (struct _reent *, FILE *, fpos_t *);
int _fsetpos_r (struct _reent *, FILE *, const fpos_t *);

int _fiprintf_r (struct _reent *, FILE *, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int _fiscanf_r (struct _reent *, FILE *, const char *, ...) __attribute__ ((__format__ (__scanf__, 3, 4)))
                                                           ;
FILE * _fmemopen_r (struct _reent *, void *restrict, size_t, const char *restrict);
FILE * _fopen_r (struct _reent *, const char *restrict, const char *restrict);
FILE * _freopen_r (struct _reent *, const char *restrict, const char *restrict, FILE *restrict);
int _fprintf_r (struct _reent *, FILE *restrict, const char *restrict, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int _fpurge_r (struct _reent *, FILE *);
int _fputc_r (struct _reent *, int, FILE *);
int _fputc_unlocked_r (struct _reent *, int, FILE *);
int _fputs_r (struct _reent *, const char *restrict, FILE *restrict);
int _fputs_unlocked_r (struct _reent *, const char *restrict, FILE *restrict);
size_t _fread_r (struct _reent *, void * restrict, size_t _size, size_t _n, FILE *restrict);
size_t _fread_unlocked_r (struct _reent *, void * restrict, size_t _size, size_t _n, FILE *restrict);
int _fscanf_r (struct _reent *, FILE *restrict, const char *restrict, ...) __attribute__ ((__format__ (__scanf__, 3, 4)))
                                                           ;
int _fseek_r (struct _reent *, FILE *, off_t, int);
int _fseeko_r (struct _reent *, FILE *, _off_t, int);
long _ftell_r (struct _reent *, FILE *);
_off_t _ftello_r (struct _reent *, FILE *);
void _rewind_r (struct _reent *, FILE *);
size_t _fwrite_r (struct _reent *, const void * restrict, size_t _size, size_t _n, FILE *restrict);
size_t _fwrite_unlocked_r (struct _reent *, const void * restrict, size_t _size, size_t _n, FILE *restrict);
int _getc_r (struct _reent *, FILE *);
int _getc_unlocked_r (struct _reent *, FILE *);
int _getchar_r (struct _reent *);
int _getchar_unlocked_r (struct _reent *);
char * _gets_r (struct _reent *, char *);
int _iprintf_r (struct _reent *, const char *, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;
int _iscanf_r (struct _reent *, const char *, ...) __attribute__ ((__format__ (__scanf__, 2, 3)))
                                                           ;
FILE * _open_memstream_r (struct _reent *, char **, size_t *);
void _perror_r (struct _reent *, const char *);
int _printf_r (struct _reent *, const char *restrict, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;
int _putc_r (struct _reent *, int, FILE *);
int _putc_unlocked_r (struct _reent *, int, FILE *);
int _putchar_unlocked_r (struct _reent *, int);
int _putchar_r (struct _reent *, int);
int _puts_r (struct _reent *, const char *);
int _remove_r (struct _reent *, const char *);
int _rename_r (struct _reent *, const char *_old, const char *_new)
                                          ;
int _scanf_r (struct _reent *, const char *restrict, ...) __attribute__ ((__format__ (__scanf__, 2, 3)))
                                                           ;
int _siprintf_r (struct _reent *, char *, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int _siscanf_r (struct _reent *, const char *, const char *, ...) __attribute__ ((__format__ (__scanf__, 3, 4)))
                                                           ;
int _sniprintf_r (struct _reent *, char *, size_t, const char *, ...) __attribute__ ((__format__ (__printf__, 4, 5)))
                                                            ;
int _snprintf_r (struct _reent *, char *restrict, size_t, const char *restrict, ...) __attribute__ ((__format__ (__printf__, 4, 5)))
                                                            ;
int _sprintf_r (struct _reent *, char *restrict, const char *restrict, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int _sscanf_r (struct _reent *, const char *restrict, const char *restrict, ...) __attribute__ ((__format__ (__scanf__, 3, 4)))
                                                           ;
char * _tempnam_r (struct _reent *, const char *, const char *);
FILE * _tmpfile_r (struct _reent *);
char * _tmpnam_r (struct _reent *, char *);
int _ungetc_r (struct _reent *, int, FILE *);
int _vasiprintf_r (struct _reent *, char **, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
char * _vasniprintf_r (struct _reent*, char *, size_t *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 4, 0)))
                                                            ;
char * _vasnprintf_r (struct _reent*, char *, size_t *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 4, 0)))
                                                            ;
int _vasprintf_r (struct _reent *, char **, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int _vdiprintf_r (struct _reent *, int, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int _vdprintf_r (struct _reent *, int, const char *restrict, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int _vfiprintf_r (struct _reent *, FILE *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int _vfiscanf_r (struct _reent *, FILE *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 3, 0)))
                                                           ;
int _vfprintf_r (struct _reent *, FILE *restrict, const char *restrict, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int _vfscanf_r (struct _reent *, FILE *restrict, const char *restrict, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 3, 0)))
                                                           ;
int _viprintf_r (struct _reent *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
int _viscanf_r (struct _reent *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 2, 0)))
                                                           ;
int _vprintf_r (struct _reent *, const char *restrict, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
int _vscanf_r (struct _reent *, const char *restrict, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 2, 0)))
                                                           ;
int _vsiprintf_r (struct _reent *, char *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int _vsiscanf_r (struct _reent *, const char *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 3, 0)))
                                                           ;
int _vsniprintf_r (struct _reent *, char *, size_t, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 4, 0)))
                                                            ;
int _vsnprintf_r (struct _reent *, char *restrict, size_t, const char *restrict, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 4, 0)))
                                                            ;
int _vsprintf_r (struct _reent *, char *restrict, const char *restrict, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int _vsscanf_r (struct _reent *, const char *restrict, const char *restrict, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 3, 0)))
                                                           ;



int fpurge (FILE *);
ssize_t __getdelim (char **, size_t *, int, FILE *);
ssize_t __getline (char **, size_t *, FILE *);
# 574 "/Users/vy/Documents/devkitARM/arm-none-eabi/include/stdio.h" 3
int __srget_r (struct _reent *, FILE *);
int __swbuf_r (struct _reent *, int, FILE *);
# 684 "/Users/vy/Documents/devkitARM/arm-none-eabi/include/stdio.h" 3
static __inline__ int __sputc_r(struct _reent *_ptr, int _c, FILE *_p) {




 if (--_p->_w >= 0 || (_p->_w >= _p->_lbfsize && (char)_c != '\n'))
  return (*_p->_p++ = _c);
 else
  return (__swbuf_r(_ptr, _c, _p));
}
# 767 "/Users/vy/Documents/devkitARM/arm-none-eabi/include/stdio.h" 3

# 4 "sound.c" 2





# 8 "sound.c"
MOVOBJ objs[5];
int size = 5;

typedef struct{
    const unsigned char* data;
    int length;
    int frequency;
    int isPlaying;
    int loops;
    int duration;
    int priority;
    int vbCount;
}SOUND;

SOUND soundA;
SOUND soundB;

void initialize();
void update();
void draw();







int state;

void setupSounds();
void playSoundA( const unsigned char* sound, int length, int frequency, int loops);
void playSoundB( const unsigned char* sound, int length, int frequency, int loops);
void muteSound();
void unmuteSound();
void stopSound();

void setupInterrupts();
void interruptHandler();

int randomSeed = 0;

const unsigned char* spaceSound;
int* spaceSoundLen;
int spaceSoundToPlay = 0;

unsigned short scanLineCounter;
char fpsbuffer[30];
# 63 "sound.c"
void setupSounds()
{
    *(volatile u16 *)0x04000084 = (1<<7);

 *(volatile u16*)0x04000082 = (1<<1) |
                     (1<<2) |
                     (3<<8) |
                     (0<<10) |
                     (1<<11) |
                     (1<<3) |
                     (3<<12) |
                     (1<<14) |
                     (1<<15);

 *(u16*)0x04000080 = 0;
}

void playSoundA( const unsigned char* sound, int length, int frequency, int loops) {
        dma[1].cnt = 0;

        int ticks = (16777216)/frequency;

        DMANow(1, sound, (u16*)0x040000A0, (2 << 21) | (3 << 28) | (1 << 25) | (1 << 26));

        *(volatile unsigned short*)0x4000102 = 0;

        *(volatile unsigned short*)0x4000100 = -ticks;
        *(volatile unsigned short*)0x4000102 = (1<<7);



        soundA.data = sound;
     soundA.length = length;
     soundA.frequency = frequency;
     soundA.isPlaying = 1;
     soundA.loops = loops;
     soundA.duration = ((59.727)*length)/frequency;
     soundA.vbCount = 0;

}


void playSoundB( const unsigned char* sound, int length, int frequency, int loops) {

        dma[2].cnt = 0;

        int ticks = (16777216)/frequency;

        DMANow(2, sound, (u16*)0x040000A4, (2 << 21) | (3 << 28) | (1 << 25) | (1 << 26));

        *(volatile unsigned short*)0x4000106 = 0;

        *(volatile unsigned short*)0x4000104 = -ticks;
        *(volatile unsigned short*)0x4000106 = (1<<7);



        soundB.data = sound;
     soundB.length = length;
     soundB.frequency = frequency;
     soundB.isPlaying = 1;
     soundB.loops = loops;
     soundB.duration = ((59.727)*length)/frequency;
     soundB.vbCount = 0;

}

void pauseSound()
{

 soundA.isPlaying = 0;
 soundB.isPlaying = 0;


 *(volatile unsigned short*)0x4000106 = 0;
 *(volatile unsigned short*)0x4000102 = 0;

}

void unpauseSound()
{

 soundA.isPlaying = 1;
 soundB.isPlaying = 1;


 *(volatile unsigned short*)0x4000106 = (1<<7);
 *(volatile unsigned short*)0x4000102 = (1<<7);

}

void stopSound()
{

    soundA.isPlaying = 0;
    soundB.isPlaying = 0;
 dma[1].cnt = 0;
 dma[2].cnt = 0;

 *(volatile unsigned short*)0x4000106 = 0;
 *(volatile unsigned short*)0x4000102 = 0;

}

void setupInterrupts()
{
 *(unsigned short*)0x4000208 = 0;
 *(unsigned int*)0x3007FFC = (unsigned int)interruptHandler;




 *(unsigned short*)0x4000200 |= 1 << 0;
 *(unsigned short*)0x4000004 |= 1 << 3;
 *(unsigned short*)0x4000208 = 1;
}

void interruptHandler()
{
 *(unsigned short*)0x4000208 = 0;
 if(*(volatile unsigned short*)0x4000202 & 1 << 0)
 {


  if (soundA.isPlaying) {
         soundA.vbCount++;
         if (soundA.vbCount >= soundA.duration) {
             if (soundA.loops)
                 playSoundA(soundA.data, soundA.length, soundA.frequency, soundA.loops);
             else {
              *(volatile unsigned short*)0x4000102 = 0;
              dma[1].cnt = 0;
              soundA.isPlaying = 0;
             }

         }
     }
        if (soundB.isPlaying) {
         soundB.vbCount++;
         if (soundB.vbCount >= soundB.duration) {
             if (soundB.loops)
                 playSoundB(soundB.data, soundB.length, soundB.frequency, soundB.loops);
             else {
              *(volatile unsigned short*)0x4000106 = 0;
              dma[2].cnt = 0;
              soundB.isPlaying = 0;
             }
         }
     }


  *(volatile unsigned short*)0x4000202 = 1 << 0;
 }

 *(unsigned short*)0x4000208 = 1;
}
# 9 "main.c" 2
# 1 "pon.h" 1
# 20 "pon.h"
extern const unsigned char pon[2588429];
# 10 "main.c" 2
# 1 "starting.h" 1
# 22 "starting.h"
extern const unsigned short startingTiles[8208];


extern const unsigned short startingMap[1024];


extern const unsigned short startingPal[256];
# 11 "main.c" 2
# 1 "win3.h" 1
# 22 "win3.h"
extern const unsigned short win3Tiles[5136];


extern const unsigned short win3Map[1024];


extern const unsigned short win3Pal[256];
# 12 "main.c" 2
# 1 "lost3.h" 1
# 22 "lost3.h"
extern const unsigned short lost3Tiles[5872];


extern const unsigned short lost3Map[1024];


extern const unsigned short lost3Pal[256];
# 13 "main.c" 2
# 1 "pause3.h" 1
# 22 "pause3.h"
extern const unsigned short pause3Tiles[4864];


extern const unsigned short pause3Map[1024];


extern const unsigned short pause3Pal[256];
# 14 "main.c" 2

# 1 "LEVEL1.h" 1
# 22 "LEVEL1.h"
extern const unsigned short LEVEL1Tiles[8496];


extern const unsigned short LEVEL1Map[1024];


extern const unsigned short LEVEL1Pal[256];
# 16 "main.c" 2
# 1 "LEVEL2.h" 1
# 22 "LEVEL2.h"
extern const unsigned short LEVEL2Tiles[8496];


extern const unsigned short LEVEL2Map[1024];


extern const unsigned short LEVEL2Pal[256];
# 17 "main.c" 2
# 1 "LEVEL3.h" 1
# 22 "LEVEL3.h"
extern const unsigned short LEVEL3Tiles[8496];


extern const unsigned short LEVEL3Map[1024];


extern const unsigned short LEVEL3Pal[256];
# 18 "main.c" 2
# 1 "INSTR3.h" 1
# 22 "INSTR3.h"
extern const unsigned short INSTR3Tiles[4656];


extern const unsigned short INSTR3Map[1024];


extern const unsigned short INSTR3Pal[256];
# 19 "main.c" 2
# 1 "INSTR1.h" 1
# 22 "INSTR1.h"
extern const unsigned short INSTR1Tiles[4304];


extern const unsigned short INSTR1Map[1024];


extern const unsigned short INSTR1Pal[256];
# 20 "main.c" 2
# 1 "INSTR4.h" 1
# 22 "INSTR4.h"
extern const unsigned short INSTR4Tiles[3792];


extern const unsigned short INSTR4Map[1024];


extern const unsigned short INSTR4Pal[256];
# 21 "main.c" 2
# 1 "TRACK1.h" 1
# 20 "TRACK1.h"
extern const unsigned char TRACK1[560640];
# 22 "main.c" 2
# 1 "TRACK2.h" 1
# 20 "TRACK2.h"
extern const unsigned char TRACK2[560640];
# 23 "main.c" 2
# 1 "TRACK3.h" 1
# 20 "TRACK3.h"
extern const unsigned char TRACK3[560640];
# 24 "main.c" 2
# 1 "TRACK4.h" 1
# 20 "TRACK4.h"
extern const unsigned char TRACK4[560640];
# 25 "main.c" 2
# 1 "TITLE.h" 1
# 22 "TITLE.h"
extern const unsigned short TITLETiles[7600];


extern const unsigned short TITLEMap[1024];


extern const unsigned short TITLEPal[256];
# 26 "main.c" 2
# 1 "WIN.h" 1
# 22 "WIN.h"
extern const unsigned short WINTiles[5568];


extern const unsigned short WINMap[1024];


extern const unsigned short WINPal[256];
# 27 "main.c" 2
# 1 "LOST.h" 1
# 22 "LOST.h"
extern const unsigned short LOSTTiles[6000];


extern const unsigned short LOSTMap[1024];


extern const unsigned short LOSTPal[256];
# 28 "main.c" 2
# 77 "main.c"
void initialize();
void game();


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


unsigned short hOff;

OBJ_ATTR shadowOAM[128];

int main() {

    initialize();
    setupSounds();
    setupInterrupts();


    while(1) {
        oldButtons = buttons;
        buttons = (*(volatile unsigned short *)0x04000130);


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


void initialize() {


    goToStart();

}
void goToInstr() {
    hideSprites();
    waitForVBlank();
    loadPalette(INSTR2Pal);
    DMANow(3, INSTR2Tiles, &((charblock *)0x6000000)[0],8416/2);
    DMANow(3, INSTR2Map, &((screenblock *)0x6000000)[31], 2048/2);
    (*(volatile unsigned short*)0x400000E) = (3<<14) | ((0)<<2) | ((31)<<8);

    (*(unsigned short *)0x4000000) = 0 | (1<<11);
    (*(volatile unsigned short *)0x04000010) = 0;
    (*(volatile unsigned short *)0x04000012) = 0;



    hideSprites();
    seed = 0;

    state = INSTR;
}

void instr() {
    hideSprites();
    waitForVBlank();
# 192 "main.c"
    if ((!(~(oldButtons)&((1<<4))) && (~buttons & ((1<<4))))) {
        instrcount++;
    }
    if ((!(~(oldButtons)&((1<<5))) && (~buttons & ((1<<5))))) {
        if (instrcount!= 1) {
            instrcount--;
        }
    }
    hideSprites();
    waitForVBlank();

    if (instrcount == 1) {
    loadPalette(INSTR1Pal);
    DMANow(3, INSTR1Tiles, &((charblock *)0x6000000)[0],8608/2);
    DMANow(3, INSTR1Map, &((screenblock *)0x6000000)[31], 2048/2);
    }
    if (instrcount == 2) {
    loadPalette(INSTR2Pal);
    DMANow(3, INSTR2Tiles, &((charblock *)0x6000000)[0],8416/2);
    DMANow(3, INSTR2Map, &((screenblock *)0x6000000)[31], 2048/2);
    }
    if (instrcount == 3) {
    loadPalette(INSTR3Pal);
    DMANow(3, INSTR3Tiles, &((charblock *)0x6000000)[0],9312/2);
    DMANow(3, INSTR3Map, &((screenblock *)0x6000000)[31], 2048/2);
    }
    if (instrcount == 4) {
    loadPalette(INSTR4Pal);
    DMANow(3, INSTR4Tiles, &((charblock *)0x6000000)[0],7584/2);
    DMANow(3, INSTR4Map, &((screenblock *)0x6000000)[31], 2048/2);
    }

    (*(volatile unsigned short*)0x400000E) = (3<<14) | ((0)<<2) | ((31)<<8);
    (*(unsigned short *)0x4000000) = 0 | (1<<11);

    if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3)))) && prevState == 0) {
        waitForVBlank();
        goToStart();
    }
    else if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3)))) && prevState == 1) {
        waitForVBlank();
        goToPause();
    }

}


void game() {

    updateGame();
    waitForVBlank();
    drawGame();

    if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))) {
        pauseSound();
        goToPause();
    }

    if (scount == 10) {
        hOff++;
        scount = 0;
    }

    waitForVBlank();




    (*(volatile unsigned short *)0x04000010) = hOff;
    (*(volatile unsigned short *)0x04000014) += hOff;
# 271 "main.c"
    if(player.gameOver) {

        stopSound();
        goToLose();
    }
    if (player.won) {
        stopSound();

        lvl++;
        goToNextLevel();
    }
    scount++;


}


void goToStart() {
    playSoundA(TRACK3, 560640, 11025, 1);
    lvl = 1;
    startTime = 30000;
    hideSprites();
    waitForVBlank();

    loadPalette(TITLEPal);
    DMANow(3, TITLETiles, &((charblock *)0x6000000)[2],15200/2);
    DMANow(3, TITLEMap, &((screenblock *)0x6000000)[27], 2048/2);
    (*(volatile unsigned short*)0x400000E) = (3<<14) | ((2)<<2) | ((27)<<8);

    (*(unsigned short *)0x4000000) = 0 | (1<<11);
    (*(volatile unsigned short*)0x400000C) = (3<<14) | ((2)<<2) | ((27)<<8);
    (*(volatile unsigned short *)0x04000010) = 0;
    (*(volatile unsigned short *)0x04000012) = 0;



    hideSprites();
    seed = 0;

    state = START;

}


void start() {
    prevState = 0;
    hideSprites();
    seed++;


    waitForVBlank();

    if ((!(~(oldButtons)&((1<<1))) && (~buttons & ((1<<1)))) && state == START) {

        hideSprites();
        srand(seed);

        goToInstr();
    }

    if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3)))) && state == START) {
        stopSound();

        srand(seed);

        goToNextLevel();
    }

}


void goToGame() {
    playSoundA(TRACK1, 560640, 11025, 1);
    loadPalette(back22Pal);
    DMANow(3, bg1Tiles, &((charblock *)0x6000000)[0], 2752/2);
    DMANow(3, bg1Map, &((screenblock *)0x6000000)[31], 2048/2);

    DMANow(3, back22Tiles, &((charblock *)0x6000000)[1], 3424/2);
    DMANow(3, back22Map, &((screenblock *)0x6000000)[29], 4096/2);

    DMANow(3, stateScreenTiles, &((charblock *)0x6000000)[2], 96/2);
    DMANow(3, stateScreenMap, &((screenblock *)0x6000000)[27], 2048/2);

    DMANow(3, spritesTiles, &((charblock *)0x6000000)[4], 32768/2);
    DMANow(3, spritesPal, ((unsigned short *)0x5000200), 256);


    (*(unsigned short *)0x4000000) = 0 | (1<<9) | (1<<8) | (1<<12);

    (*(volatile unsigned short*)0x400000A) = (0<<14) | ((0)<<2) | ((31)<<8);
    (*(volatile unsigned short*)0x4000008) = (1<<14) | ((1)<<2) | ((29)<<8);
    (*(volatile unsigned short*)0x400000C) = (3<<14) | ((2)<<2) | ((27)<<8);
    (*(volatile unsigned short *)0x04000010) = 0;
    (*(volatile unsigned short *)0x04000012) = 0;

    state = GAME;

}

void goToPause() {
    hideSprites();
    waitForVBlank();

    loadPalette(pause3Pal);
    DMANow(3, pause3Tiles, &((charblock *)0x6000000)[2],9728/2);
    DMANow(3, pause3Map, &((screenblock *)0x6000000)[27], 2048/2);
    (*(volatile unsigned short*)0x400000E) = (3<<14) | ((2)<<2) | ((27)<<8);

    (*(unsigned short *)0x4000000) = 0 | (1<<11);
    (*(volatile unsigned short*)0x400000C) = (3<<14) | ((2)<<2) | ((27)<<8);

    hideSprites();


    state = PAUSE;
}


void pause() {

    waitForVBlank();
    prevState = 1;

    if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))) {
        unpauseSound();
        goToGame();
    }
    else if ((!(~(oldButtons)&((1<<1))) && (~buttons & ((1<<1)))))
        goToStart();
    else if ((!(~(oldButtons)&((1<<0))) && (~buttons & ((1<<0)))))
        goToInstr();

}

void goToNextLevel() {
    hideSprites();
    waitForVBlank();
    loadPalette(LEVEL1Pal);

    if (lvl == 1) {
        DMANow(3, LEVEL1Tiles, &((charblock *)0x6000000)[2],16992/2);
        DMANow(3, LEVEL1Map, &((screenblock *)0x6000000)[27], 2048/2);
    }
    else if (lvl == 2) {
        DMANow(3, LEVEL2Tiles, &((charblock *)0x6000000)[2],16992/2);
        DMANow(3, LEVEL2Map, &((screenblock *)0x6000000)[27], 2048/2);
    }
    else if (lvl == 3){
        DMANow(3, LEVEL3Tiles, &((charblock *)0x6000000)[2],16992/2);
        DMANow(3, LEVEL3Map, &((screenblock *)0x6000000)[27], 2048/2);
    }

    if (lvl <= 3) {
        (*(volatile unsigned short*)0x400000E) = (3<<14) | ((2)<<2) | ((27)<<8);

        (*(unsigned short *)0x4000000) = 0 | (1<<11);

        hideSprites();
    }

    state = LEVEL;

}

void level() {

    if (lvl > 3) {

        goToWin();
    }
    if (state == LEVEL && (!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))) {
        startTime-=5000;
        goToGame();
        initGame(startTime);
    }

}

void goToWin() {
    playSoundA(TRACK4, 560640, 11025, 1);
    hideSprites();
    waitForVBlank();

    loadPalette(WINPal);
    DMANow(3, WINTiles, &((charblock *)0x6000000)[2],11136/2);
    DMANow(3, WINMap, &((screenblock *)0x6000000)[27], 2048/2);
    (*(volatile unsigned short*)0x400000E) = (3<<14) | ((2)<<2) | ((27)<<8);

    (*(unsigned short *)0x4000000) = 0 | (1<<11);
    (*(volatile unsigned short*)0x400000C) = (3<<14) | ((2)<<2) | ((27)<<8);
    lvl = 1;
    startTime = 30000;
    instrcount = 1;



    hideSprites();

    state = WIN;
}

void win() {

    waitForVBlank();

    if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3)))) && state == WIN) {
        goToStart();
    }
}

void goToLose() {
    playSoundA(TRACK2, 560640, 11025, 1);
    hideSprites();
    waitForVBlank();

    loadPalette(LOSTPal);
    DMANow(3, LOSTTiles, &((charblock *)0x6000000)[2],12000/2);
    DMANow(3, LOSTMap, &((screenblock *)0x6000000)[27], 2048/2);
    (*(volatile unsigned short*)0x400000E) = (3<<14) | ((2)<<2) | ((27)<<8);

    (*(unsigned short *)0x4000000) = 0 | (1<<11);
    (*(volatile unsigned short*)0x400000C) = (3<<14) | ((2)<<2) | ((27)<<8);

    hideSprites();

    state = LOSE;
}

void lose() {

    waitForVBlank();

    if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3)))) && state == LOSE) {
        goToStart();
    }
}
