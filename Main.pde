
boolean ScriptC = true;
String [] ScriptAW = new String[300];

int ScreenSet = 0;

//ScreenChange Random Set
int [] ChanceTypeSelect = new int[2];
boolean ChangeRun = false;
int [] CahangeRect = new int[2];
boolean ChangeBegin = false;
boolean MousePressedOff = true;
boolean []updateOnce = new boolean[2];

//StartPage Random Set
PImage StartPageBG;
PImage [][] StartPageIcon = new PImage [6][2];
int [] StartPageIconWH = new int[2];
int [] StartPageIconY = new int [6];
int StartPageIconX = 1050;
boolean [] CheckStartPageIcon = new boolean [6];
boolean CheckExitOn = false;
PImage ExitCheckTable;
PImage [][] ExitCheck = new PImage [2][2];
boolean [] ExitCheckIcon = new boolean[2];

//GamePage Random Set
PImage [] ScriptTable = new PImage[2]; //Table = 1201*334 Name = 281*89
int []ScriptTableWH = new int[2] ;
int CheckToNext = 0;
PImage []BG = new PImage[7];
int BGNext = 0;
String [] ChangeScenesOn = { "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "1" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "1" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "1" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "1" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "1" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "1" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "1" , "0" };
String [] ScriptText;// = {""};
String [] ScriptOn = { "0" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "0" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "0" , "1" , "1" , "1" , "1" , "0" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "0" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "0" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "0" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "0" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "0" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "0" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "0" , "1" };
String [] ScriptPeoPleName;// = {""};
String [] SpecialObject = { "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "1" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "1" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "1" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" };
String [] BGData = { "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "2" , "2" , "2" , "2" , "2" , "2" , "2" , "2" , "2" , "2" , "2" , "2" , "2" , "2" , "2" , "2" , "2" , "2" , "2" , "2" , "2" , "2" , "2" , "2" , "2" , "2" , "2" , "2" , "2" , "2" , "2" , "2" , "2" , "3" , "3" , "3" , "3" , "3" , "3" , "3" , "3" , "3" , "3" , "3" , "3" , "3" , "3" , "3" , "3" , "3" , "3" , "3" , "3" , "3" , "3" , "4" , "4" , "4" , "4" , "4" , "4" , "4" , "4" , "4" , "4" , "4" , "4" , "4" , "4" , "4" , "4" , "4" , "4" , "4" , "4" , "4" , "4" , "4" , "4" , "4" , "4" , "4" , "4" , "4" , "4" , "4" , "4" , "4" , "4" , "4" , "4" , "4" , "4" , "4" , "4" , "4" , "4" , "4" , "4" , "4" , "4" , "4" , "4" , "4" , "4" , "4" , "4" , "4" , "4" , "4" , "4" , "4" , "4" , "4" , "4" , "4" , "4" , "4" , "5" , "5" , "5" , "5" , "5" , "5" , "5" , "5" , "5" , "5" , "5" , "5" , "5" , "5" , "5" , "5" , "5" , "5" , "5" , "5" , "5" , "5" , "5" , "5" , "5" , "5" , "5" , "5" , "5" , "4" , "4" , "4" , "4" , "4" , "4" , "4" , "4" , "4" , "4" , "4" , "4" , "4" , "4" , "4" , "4" , "4" , "4" , "4" , "4" , "4" , "4" , "4" , "4" , "6" };



//PeoPle Random Set
int PeoPleMove , PeoPleTransparency; //PeoPleTransparency = 0; PeoPleMove = 0; on NextScript
boolean SiteStartSet = false; // SiteStartSet = true; on NextScript
int PeoPleCeilingDistance = 50;
PImage [][] PeoPlePicture = new PImage [7][11];
String [] PeoPle1Type = { "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "5" , "5" , "5" , "5" , "5" , "" , "" , "" , "" , "" , "5" , "" , "" , "" , "" , "" , "" , "" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "3" , "3" , "3" , "3" , "3" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "" , "" , "" , "" , "" , "3" , "3" , "3" , "3" , "3" , "3" , "3" , "" , "" , "" , "" , "2" , "2" , "2" , "2" , "2" , "3" , "3" , "3" , "" , "" , "" , "" , "" , "" , "3" , "3" , "3" , "3" , "3" , "3" , "3" , "3" , "3" , "3" , "3" , "3" , "3" , "3" , "3" , "3" , "3" , "3" , "3" , "3" , "3" , "3" , "3" , "3" , "" , "" , "" , "" , "" , "" , "" , "3" , "3" , "3" , "" , "" , "" , "" , "" , "" , "" , "" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "" , "" , "" , "" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "" , "" , "" , "" , "" , "" , "" , "3" , "3" , "3" , "3" , "3" , "3" , "3" , "3" , "3" , "3" , "3" , "3" , "3" , "3" , "3" , "3" , "3" , "" , "" };
String [] PeoPle1Face = { "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "0" , "0" , "0" , "0" , "0" , "" , "" , "" , "" , "" , "0" , "" , "" , "" , "" , "" , "" , "" , "2" , "2" , "2" , "2" , "2" , "2" , "2" , "0" , "0" , "2" , "2" , "2" , "0" , "0" , "0" , "0" , "10" , "0" , "2" , "2" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "0" , "2" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "2" , "2" , "2" , "2" , "0" , "0" , "0" , "0" , "" , "" , "" , "" , "" , "0" , "0" , "1" , "0" , "0" , "1" , "1" , "" , "" , "" , "" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "" , "" , "" , "" , "" , "" , "2" , "0" , "5" , "0" , "8" , "1" , "0" , "0" , "0" , "5" , "0" , "0" , "0" , "5" , "5" , "5" , "5" , "0" , "8" , "8" , "8" , "0" , "0" , "2" , "" , "" , "" , "" , "" , "" , "" , "0" , "0" , "0" , "" , "" , "" , "" , "" , "" , "" , "" , "0" , "0" , "0" , "0" , "0" , "7" , "0" , "8" , "" , "" , "" , "" , "8" , "7" , "1" , "0" , "5" , "7" , "7" , "1" , "" , "" , "" , "" , "" , "" , "" , "5" , "1" , "0" , "0" , "0" , "0" , "0" , "0" , "1" , "1" , "0" , "0" , "9" , "5" , "0" , "0" , "0" , "" , "" };
String [] PeoPle2Type = { "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "6" , "6" , "6" , "6" , "6" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "1" , "3" , "3" , "3" , "3" , "3" , "3" , "3" , "3" , "3" , "3" , "3" , "3" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "3" , "2" , "2" , "2" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "3" , "" , "" , "" , "" , "" , "" , "" , "3" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" };
String [] PeoPle2Face = { "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "0" , "0" , "0" , "0" , "0" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "5" , "2" , "0" , "7" , "7" , "0" , "2" , "2" , "2" , "0" , "0" , "7" , "2" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "0" , "0" , "0" , "5" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "8" , "" , "" , "" , "" , "" , "" , "" , "5" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" };
String [] PeoPleMoveType  = { "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "2" , "3" , "3" , "3" , "11" , "" , "" , "" , "" , "" , "0" , "" , "" , "" , "" , "" , "" , "" , "0" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "10" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "0" , "1" , "1" , "1" , "6" , "3" , "3" , "3" , "3" , "3" , "3" , "3" , "3" , "3" , "3" , "3" , "3" , "" , "" , "" , "" , "" , "1" , "1" , "1" , "1" , "1" , "1" , "10" , "" , "" , "" , "" , "0" , "1" , "1" , "1" , "6" , "3" , "3" , "1" , "" , "" , "" , "" , "" , "" , "0" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "" , "" , "" , "" , "" , "" , "" , "0" , "1" , "1" , "" , "" , "" , "" , "" , "" , "" , "" , "0" , "1" , "1" , "1" , "1" , "1" , "1" , "3" , "" , "" , "" , "" , "1" , "1" , "1" , "3" , "1" , "1" , "1" , "1" , "" , "" , "" , "" , "" , "" , "" , "0" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "" , "" };
String [] PeoPleSite = { "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "0" , "0" , "0" , "0" , "0" , "" , "" , "" , "" , "" , "1" , "" , "" , "" , "" , "" , "" , "" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "1" , "1" , "1" , "1" , "1" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "0" , "" , "" , "" , "" , "" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "" , "" , "" , "" , "1" , "1" , "1" , "1" , "1" , "0" , "0" , "0" , "" , "" , "" , "" , "" , "" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "" , "" , "" , "" , "" , "" , "" , "1" , "1" , "1" , "" , "" , "" , "" , "" , "" , "" , "" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "" , "" , "" , "" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "" , "" , "" , "" , "" , "" , "" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "1" , "" , "" };

  
      


//BackStartPage
boolean BackHomePage = false;

//Special Things

  //AutoRead
  int AutoReadRate = 40;
  int AutoReadGo = 0;
  boolean AutoReadOn = false;
  
  //SkipRead
  int SkipReadRate = 5;
  int SkipReadGo = 0;
  boolean SkipReadOn = false;  
  
  //Q.Save & Q.Load
  int [] QSaveData = new int[2];
  boolean QLoad = false;
    
  //ScriptIcon
  PImage [] ScriptIcon = new PImage[4];
  boolean [] CheckScriptIcon = new boolean[4];

void setup(){
  size(1280,960);
  CahangeRect[0] = 0;
  CahangeRect[1] = 1;
  updateOnce[0] = true;
  updateOnce[1] = false;
  rectMode(CORNER);
  ChanceTypeSelect[0] = 0;
  ChanceTypeSelect[1] = 5;
  
  //StartPage Data Load
  ScreenSet = 0;
  for (int i = 0 ; i < 6 ; i ++) CheckStartPageIcon[i] = false;
  for (int i = 0 ; i < 6 ; i ++) StartPageIconY[i] = 440+i*85;
  StartPageIconWH[0] = 200;
  StartPageIconWH[1] = 64;
  StartPageBG = requestImage("https://images.plurk.com/dYjiHD0lvrBmzwHabOVR8.jpg");
  StartPageIcon[0][0] = requestImage("https://images.plurk.com/3nG48dL4BczqBSGDaNmn7S.png");
  StartPageIcon[0][1] = requestImage("https://images.plurk.com/7dJUqqqS7ukzmOnN9IDPqw.png");
  StartPageIcon[1][0] = requestImage("https://images.plurk.com/5ly96HiSbOO0ZlnJiLQgxC.png");
  StartPageIcon[1][1] = requestImage("https://images.plurk.com/5ly96HiSbOO0ZlnJiLQgxC.png");
  StartPageIcon[2][0] = requestImage("https://images.plurk.com/4MgGUhsiDUyzLE9mEP6hV1.png");
  StartPageIcon[2][1] = requestImage("https://images.plurk.com/4MgGUhsiDUyzLE9mEP6hV1.png");
  StartPageIcon[3][0] = requestImage("https://images.plurk.com/dgKB35oU0Kux75Z4pX2vr.png");
  StartPageIcon[3][1] = requestImage("https://images.plurk.com/dgKB35oU0Kux75Z4pX2vr.png");
  StartPageIcon[4][0] = requestImage("https://images.plurk.com/6C20yKgQDfCXz8k9LnBPmX.png");
  StartPageIcon[4][1] = requestImage("https://images.plurk.com/40r1omhMCmxGDSXUbzpFOq.png");
  StartPageIcon[5][0] = requestImage("https://images.plurk.com/72SS5Lv02cPldbkVYxwm3V.png");
  StartPageIcon[5][1] = requestImage("https://images.plurk.com/U4WszNG4FPaVrPSYCLaDe.png");
  ExitCheckTable = requestImage("https://images.plurk.com/20hYH2I8G79nhpexUUK0Hv.png");
  ExitCheck[0][0] = requestImage("https://images.plurk.com/3NkFzQ2TTSdBgM5AYKfU05.png");
  ExitCheck[0][1] = requestImage("https://images.plurk.com/3TYLe5yPN4vSHX4qpThHBa.png");
  ExitCheck[1][0] = requestImage("https://images.plurk.com/1Y6SnxTZFKke3lVrN3pXuS.png");
  ExitCheck[1][1] = requestImage("https://images.plurk.com/6lHJOdHJPbQUjUKZfVpXRf.png");
  
  //GamePage Data Load
  ScriptText = loadStrings("Data/Script_Text.txt");
  ScriptPeoPleName = loadStrings("Data/Script_PeoPleName.txt");
  for (int i = 0 ; i < PeoPleSite.length ; i++){ if(int(PeoPleSite[i]) == 0) PeoPleSite[i] = "Left"; if(int(PeoPleSite[i]) == 1) PeoPleSite[i] = "Mid"; if(int(PeoPleSite[i]) == 2) PeoPleSite[i] = "Right"; }
  ScriptTable[0] = requestImage("https://images.plurk.com/1sBuDpSBekd1qavVWaBrxo.png");
  ScriptTable[1] = requestImage("https://images.plurk.com/22tnG82FtnA8Wyp7WAbAyp.png");
  BG[0] = requestImage("https://images.plurk.com/5PSws6Cw56rDq8kCyDpEFN.jpg");
  BG[1] = requestImage("https://images.plurk.com/l3wjUmjCrC4thgYrK7Hyz.jpg");
  BG[2] = requestImage("https://images.plurk.com/5y3EB9uZpZjXTPkuRlNCpz.jpg");
  BG[3] = requestImage("https://images.plurk.com/2vKsDTzNnCJ4lwD8FHZw1B.jpg");
  BG[4] = requestImage("https://images.plurk.com/1QOCdgFOk5A1MVvWDYsZqw.jpg");
  BG[5] = requestImage("https://images.plurk.com/5e63dcE7Pc3XZa9iShEXJ0.jpg");
  BG[6] = requestImage("https://images.plurk.com/8yqcKwwuuDOcFF8h2BsyX.jpg");
  for (int i = 0 ; i < 7 ; i ++){
    for (int k = 0 ; k < 11 ; k ++){
      PeoPlePicture[i][k] = requestImage("https://images.plurk.com/8yqcKwwuuDOcFF8h2BsyX.jpg");
    } 
  }
  PeoPlePicture[0][0] = requestImage("https://images.plurk.com/eFRvsDYQLQfa0UFuv2Kyh.png");
  PeoPlePicture[0][1] = requestImage("https://images.plurk.com/1oKKXTslCIJVLco9GZSvN1.png");
  PeoPlePicture[0][5] = requestImage("https://images.plurk.com/7AR2gyR94zlZLwSC5mAdne.png");
  PeoPlePicture[0][7] = requestImage("https://images.plurk.com/32Xz9DdmgY1PCctRXB04ux.png");
  PeoPlePicture[0][8] = requestImage("https://images.plurk.com/5HdZfoT9u86JdtQvuPIBQT.png");
  PeoPlePicture[1][0] = requestImage("https://images.plurk.com/qUQqXo59K6oO0pgIud6Ne.png");
  PeoPlePicture[1][2] = requestImage("https://images.plurk.com/7HhrLq6Xi5L9jeQVmKQJl3.png");
  PeoPlePicture[1][5] = requestImage("https://images.plurk.com/26xUK1Tqfm9QBhMeiaI5yT.png");
  PeoPlePicture[1][10] = requestImage("https://images.plurk.com/4eB3Y3W47D6FEHkvVEae9s.png");
  PeoPlePicture[2][0] = requestImage("https://images.plurk.com/1HBlMGpVC60VyCp87NhEaI.png");
  PeoPlePicture[2][5] = requestImage("https://images.plurk.com/5m9rKT8gs3Cece598YmIUN.png");
  PeoPlePicture[3][0] = requestImage("https://images.plurk.com/7mArXZiT7K3xvwDA7Uf2XI.png");
  PeoPlePicture[3][1] = requestImage("https://images.plurk.com/AggdyBPCJFLnNwKcvPmQO.png");
  PeoPlePicture[3][2] = requestImage("https://images.plurk.com/UQzt5CLg9eKrhXM80FOSe.png");
  PeoPlePicture[3][5] = requestImage("https://images.plurk.com/2LBLisWReTF4frELdpo21r.png");
  PeoPlePicture[3][7] = requestImage("https://images.plurk.com/TallTbchlaRIEoVUkKFeY.png");
  PeoPlePicture[3][8] = requestImage("https://images.plurk.com/2Otp9f6UOeRHK1iJcT4FWk.png");
  PeoPlePicture[3][9] = requestImage("https://images.plurk.com/4hgi68bQBUu7Iv8StHZMn5.png");
  PeoPlePicture[5][0] = requestImage("https://images.plurk.com/3e0Bw5PmjuvKqL4y9bAcl3.png");
  PeoPlePicture[6][0] = requestImage("https://images.plurk.com/6AG1mjG6wbKsXhPiE4ao7A.png");
  ScriptTableWH[0] = 1201;
  ScriptTableWH[1] = 248;
  ScriptText[13] = ScriptText[13].substring(0,20) + "\n" + ScriptText[13].substring(20,ScriptText[13].length());
  ScriptText[14] = ScriptText[14].substring(0,25) + "\n" + ScriptText[14].substring(25,ScriptText[14].length());
  ScriptText[15] = ScriptText[15].substring(0,33) + "\n" + ScriptText[15].substring(33,ScriptText[15].length());
  
  //Special Things Update Data
  ScriptIcon[0] = requestImage("https://images.plurk.com/1YPNDSlUjEHjY50n1mu7WB.png");
  ScriptIcon[1] = requestImage("https://images.plurk.com/1LcMRpecLaf7ROrttLIFuw.png");
  ScriptIcon[2] = requestImage("https://images.plurk.com/5I5Ah4HJasU4j7hnbuDFvy.png");
  ScriptIcon[3] = requestImage("https://images.plurk.com/1x64ConJBJsIrTFER6KzL.png");
  QSaveData[0] = -1;
  QSaveData[1] = -1;
  
}


void draw(){
  
if (updateOnce[0]){
  if (ScreenSet == 0) StartPage();
  if (ScreenSet == 1) GamePage();

  if (ChangeBegin == true){
    if (ScreenSet == 0) ChanceTypeSelect[0] = 0;
    if (ScreenSet == 1 && BackHomePage == false && QLoad == false) ChanceTypeSelect[0] = 1;
    if (ScreenSet == 1 && BackHomePage == true && QLoad == false) ChanceTypeSelect[0] = 2;
    if (ScreenSet == 1 && QLoad == true && QSaveData[0] != -1){
      ChanceTypeSelect[0] = 3;
      CheckScriptIcon[1] = false;
    }
    ChangeRun = true;
  }
  
  if (ChangeRun){
    ScreenChange(ChanceTypeSelect[0],ChanceTypeSelect[1]);
  }
  
  

}
  
}

void StartPage1(){
 
  background(StartPageBG);
  image(StartPageIcon[0][1],StartPageIconX,StartPageIconY[0]);
  
}

void StartPage(){
  fill(0);
  tint(255, 255);
  image(StartPageBG,0,0);
  CheckToNext = 0;
  for (int i = 0 ; i < 6 ; i ++){
      if ((StartPageIconX < mouseX && mouseX < (StartPageIconX + StartPageIconWH[0]) && StartPageIconY[i] < mouseY && mouseY < (StartPageIconY[i]+StartPageIconWH[1]))) {
        if (CheckExitOn == false){
        image(StartPageIcon[i][1],StartPageIconX,StartPageIconY[i]);
        CheckStartPageIcon[i] = true;
        }
      }else{
        image(StartPageIcon[i][0],StartPageIconX,StartPageIconY[i]);
        CheckStartPageIcon[i] = false;
      }
    }  


  if(CheckExitOn) {
    fill(0,150);
     rect(0,0,width,height);
     image(ExitCheckTable,width/2-ExitCheckTable.width/2,height/2-ExitCheckTable.height/2);
     for(int i = 0 ; i < 2 ; i ++){
       if(mouseX > width/2-(ExitCheck[i][0].width+30)+(ExitCheck[i][0].width+60)*i && mouseX < width/2-30+(ExitCheck[i][0].width+60)*i && mouseY > height/2 && mouseY < height/2+ExitCheck[i][0].height){
        image(ExitCheck[i][1],width/2-(ExitCheck[i][0].width+30)+(ExitCheck[i][0].width+60)*i,height/2);
        ExitCheckIcon[i] = true;
       }else{
        image(ExitCheck[i][0],width/2-(ExitCheck[i][0].width+30)+(ExitCheck[i][0].width+60)*i,height/2);
        ExitCheckIcon[i] = false;
       }
       
     }
  }
  
  
}



void GamePage(){
  
  if (updateOnce[0]){
  //Background
  //People & Script
  if (CheckToNext < ScriptText.length-1){
    tint(255, 255); 
    background(BG[int(BGData[BGNext])]);
    BackHomePage = false;
    if(PeoPleMoveType[CheckToNext].length() > 0) CharaCterAnimateSelect(int(PeoPleMoveType[CheckToNext]),PeoPlePicture[int(PeoPle1Type[CheckToNext])][int(PeoPle1Face[CheckToNext])],PeoPlePicture[int(PeoPle2Type[CheckToNext])][int(PeoPle2Face[CheckToNext])],PeoPleSite[CheckToNext],10,15);
    if(int(ChangeScenesOn[CheckToNext]) == 1) ChangeBegin = true;  
    if(int(ScriptOn[CheckToNext]) == 1) {
      if(CheckToNext == 23) ScriptLoad(23,32,true,15);
      if(CheckToNext == 38 || CheckToNext == 56 || CheckToNext == 116) ScriptLoad(CheckToNext,48,true,15);
      if(CheckToNext != 23 && CheckToNext != 38 && CheckToNext != 56 && CheckToNext != 116) ScriptLoad(CheckToNext,32,false,0); 
    }
  }else if ( CheckToNext == ScriptText.length-1 ){
    ScriptLoad(ScriptText.length-1,32,false,0);
    if(ScriptC) {
      for (int i = 0 ; i < ScriptText.length ; i++){
        
        if(int(ScriptOn[i]) == 1) {
          if (ScriptPeoPleName[i].length() > 0){
          ScriptAW[i] = i + "@" + ScriptPeoPleName[i] + ":" + ScriptText[i];
          }else{
            ScriptAW[i] = i + "@" + ScriptText[i];
          }
          
          }
      }
      saveStrings("1.txt", ScriptAW);
      ScriptC = false;
      
    }
  }else{
    BackHomePage = true;
    ChangeBegin = true;
  }
  
  //Icon
  if(AutoReadOn == true && MousePressedOff == true) AutoScriptRead();
  if(SkipReadOn == true && MousePressedOff == true) SkipScriptRead();
  
   if (updateOnce[1] == false) updateOnce[1] = true; updateOnce[0] = false;
  }
  
  if (CheckToNext <= ScriptText.length-1 && int(SpecialObject[CheckToNext]) == 1) CheckToNext += 1; updateOnce[0] = true;
}

void mouseClicked(){
  if(MousePressedOff == true){
  //StartPage Key
    if(ScreenSet == 0){
      if(CheckStartPageIcon[0]) ChangeBegin = true; 
      if(CheckStartPageIcon[5]) CheckExitOn = true;
      if(ExitCheckIcon[0] == true && CheckExitOn == true) exit();
      if(ExitCheckIcon[1] == true && CheckExitOn == true) {CheckExitOn = false; ExitCheckIcon[1]=false;}
    }
  //GamePage Key
    if(ScreenSet == 1){
      if(CheckScriptIcon[0] == false && CheckScriptIcon[1] == false && CheckScriptIcon[2] == false && CheckScriptIcon[3] == false){ 
          CheckToNext += 1;
          BGNext = CheckToNext;
          SiteStartSet = true;
          PeoPleTransparency = 0;
          PeoPleMove = 0;
          AutoReadOn = false;
          SkipReadOn = false;
      }
      //GameIcon
      if (CheckScriptIcon[2]) {
        AutoReadOn =! AutoReadOn; 
        CheckScriptIcon[2] = false;
      }
      if (CheckScriptIcon[3]) {
        SkipReadOn =! SkipReadOn;
        CheckScriptIcon[3] = false;
      }
      if (CheckScriptIcon[0]) {
        QSaveData[0] = CheckToNext;
        QSaveData[1] = BGNext;
        CheckScriptIcon[0] = false;
      }
      if (CheckScriptIcon[1] == true && QSaveData[0]>0){
        QLoad = true;
        ChangeBegin = true;
        CheckScriptIcon[1] = false;
      }
    }
    updateOnce[0] = true;
  }
  
}

void ScreenChange(int ChangeType,int Rate){
 MousePressedOff = false;
 AutoReadOn = false;
 SkipReadOn = false;
 fill(0,0,0,CahangeRect[0] += CahangeRect[1]*Rate); 
 rect(0,0,width,height);
 if (CahangeRect[0] >= 255){
  CahangeRect[1] *= -1;
  CahangeRect[0] = 255;
  if (ChangeType == 0) ScreenSet += 1; 
  if (ChangeType == 2) ScreenSet = 0;
  if (ChangeType == 1) BGNext += 1;
  if (ChangeType == 3) { 
    CheckToNext = QSaveData[0]; 
    BGNext = QSaveData[1]; 
  }
  
 }
 if (CahangeRect[0] <= 0){
  CahangeRect[1] *= -1;
  CahangeRect[0] = 0;
  ChangeBegin = false;
  MousePressedOff = true;
  QLoad = false;
  ChangeRun = false;
  if (ChangeType == 1) CheckToNext += 1;
  if (ChangeType == 0) CheckToNext = 1;
 }
 
}

void ScriptLoad(int ScriptTextNumber,int ScriptTextSize,boolean DiffColor,int DiffColorBeginNumber){
  tint(255, 255*0.7);
  ScriptIconUpdate();
  image(ScriptTable[0],width/2-ScriptTableWH[0]/2,height-ScriptTableWH[1]-30);
  if(ScriptPeoPleName[ScriptTextNumber].length() > 0) image(ScriptTable[1],40,575);
  textSize(ScriptTextSize);
  fill(0);
  if(ScriptPeoPleName[ScriptTextNumber].length() > 0) text(ScriptPeoPleName[ScriptTextNumber],40+(ScriptTable[1].width/2)-(textWidth(ScriptPeoPleName[ScriptTextNumber])/2),575+89/2+ScriptTextSize/2);
  if (DiffColor && ScriptText[ScriptTextNumber].length() > DiffColorBeginNumber) {
    fill(255,0,0);
    text(ScriptText[ScriptTextNumber],width/2-ScriptTableWH[0]/2+50,height-ScriptTableWH[1]-30+20,ScriptTableWH[0]-100,ScriptTableWH[1]-40);
    fill(0);
    text(ScriptText[ScriptTextNumber].substring(0,DiffColorBeginNumber-1),width/2-ScriptTableWH[0]/2+50,height-ScriptTableWH[1]-30+20,ScriptTableWH[0]-100,ScriptTableWH[1]-40);
  }else{
    fill(0);
    text(ScriptText[ScriptTextNumber],int(width/2-ScriptTableWH[0]/2+50),height-ScriptTableWH[1]-30+20,ScriptTableWH[0]-100,ScriptTableWH[1]-40);
  }
  updateOnce[1] = false;
}

void CharaCterAnimateSelect(int SelectType,PImage PeoPleNumber1Select,PImage PeoPleNumber2Select,String SiteSet,int MRateSet,int TRateSet){
  switch (SelectType){
    
    case 0:
    OnePeoPle(PeoPleNumber1Select,SiteSet,true,TRateSet);
    break;
    case 1:
    OnePeoPle(PeoPleNumber1Select,SiteSet,false,TRateSet);
    break;
    case 2:
    TwoPeoPle(PeoPleNumber1Select,PeoPleNumber2Select,true,TRateSet);
    break;
    case 3:
    TwoPeoPle(PeoPleNumber1Select,PeoPleNumber2Select,false,TRateSet);
    break;
    case 6:
    OneToTwoPeoPle(PeoPleNumber1Select,PeoPleNumber2Select,SiteSet,MRateSet,false,TRateSet);
    break;
    case 10:
    OnePeoPleOff(PeoPleNumber1Select,SiteSet,TRateSet);
    break;
    case 11:
    TwoPeoPleOff(PeoPleNumber1Select,PeoPleNumber2Select,TRateSet);
    break;
    
  }
  
}



void OnePeoPle(PImage PeoPleNumber,String Site,boolean TransparencyOpen,int TransparencyRate){
  if (TransparencyOpen) {tint(255, min(255,(PeoPleTransparency += TransparencyRate))); } else { tint(255, 255); }
  if (Site == "Left") image(PeoPleNumber,0,PeoPleCeilingDistance);
  if (Site == "Mid") image(PeoPleNumber,width/2-PeoPleNumber.width/2,PeoPleCeilingDistance);
  if (Site == "Right") image(PeoPleNumber,width-PeoPleNumber.width,PeoPleCeilingDistance);
  if (min(255,(PeoPleTransparency += TransparencyRate)) == 255) {updateOnce[1] = false; }else{ updateOnce[1] = true;}
}

void TwoPeoPle(PImage PeoPleNumber1,PImage PeoPleNumber2,boolean TransparencyOpen,int TransparencyRate){
  if (TransparencyOpen) {tint(255, min(255,(PeoPleTransparency += TransparencyRate))); } else { tint(255, 255); }
  image(PeoPleNumber1,0,PeoPleCeilingDistance);
  image(PeoPleNumber2,width-PeoPleNumber2.width,PeoPleCeilingDistance); 
  if (min(255,(PeoPleTransparency += TransparencyRate)) == 255) {updateOnce[1] = false; }else{ updateOnce[1] = true;}
}

void ThreePeoPle(PImage PeoPleNumber1,PImage PeoPleNumber2,PImage PeoPleNumber3,boolean TransparencyOpen,int TransparencyRate){
  if (TransparencyOpen) {tint(255, min(255,(PeoPleTransparency += TransparencyRate))); } else { tint(255, 255); }
  image(PeoPleNumber1,0,PeoPleCeilingDistance);
  image(PeoPleNumber2,width/2-PeoPleNumber2.width/2,PeoPleCeilingDistance);
  image(PeoPleNumber3,width-PeoPleNumber3.width,PeoPleCeilingDistance); 
  if (min(255,(PeoPleTransparency += TransparencyRate)) == 255) {updateOnce[1] = false; }else{ updateOnce[1] = true;}
}

void OneToTwoPeoPle(PImage PeoPleNumber1,PImage PeoPleNumber2,String Site,int Rate,boolean TransparencyOpen,int TransparencyRate){
  tint(255, 255);
  if (SiteStartSet){ 
    if (Site == "Left"){ PeoPleMove = 0; }else if (Site == "Mid"){ PeoPleMove = width/2-PeoPleNumber1.width/2; } 
    SiteStartSet = false; 
  }
  image(PeoPleNumber1,min(PeoPleMove,width-PeoPleNumber1.width),PeoPleCeilingDistance);
  PeoPleMove = min(width*2,PeoPleMove += Rate);
  if (PeoPleMove >= width-PeoPleNumber1.width){
    if (TransparencyOpen) {tint(255, min(255,(PeoPleTransparency += TransparencyRate))); } else { tint(255, 255); }
    image(PeoPleNumber2,0,PeoPleCeilingDistance);
    if (TransparencyOpen) { if(PeoPleTransparency >= 255){ MousePressedOff = true; updateOnce[1] = true; }else{ MousePressedOff = false; updateOnce[1] = false; } }else{ MousePressedOff = true; updateOnce[1] = true;}
  }else{
    MousePressedOff = false;
    updateOnce[1] = false;
  }
}

void OneToThreePeoPle(PImage PeoPleNumber1,PImage PeoPleNumber2,PImage PeoPleNumber3,String Site,int Rate,boolean TransparencyOpen,int TransparencyRate){
  tint(255, 255);
  if (SiteStartSet){ 
    if (Site == "Left"){ PeoPleMove = 0; }else if (Site == "Mid"){ PeoPleMove = width/2-PeoPleNumber1.width/2; } 
    SiteStartSet = false; 
  }
  image(PeoPleNumber1,min(PeoPleMove,width-PeoPleNumber1.width),PeoPleCeilingDistance);
  PeoPleMove = min(width*2,PeoPleMove += Rate);
  if (PeoPleMove >= width-PeoPleNumber1.width){
    if (TransparencyOpen) {tint(255, min(255,(PeoPleTransparency += TransparencyRate))); } else { tint(255, 255); }
    image(PeoPleNumber2,0,PeoPleCeilingDistance);
    image(PeoPleNumber3,width/2-PeoPleNumber3.width/2,PeoPleCeilingDistance);
    if (TransparencyOpen) { if(PeoPleTransparency >= 255){ MousePressedOff = true; updateOnce[1] = true;}else{ MousePressedOff = false; updateOnce[1] = false;} }else{ MousePressedOff = true; updateOnce[1] = true;}
  }else{
    MousePressedOff = false;
    updateOnce[1] = false;
  }
}


void OnePeoPleOff(PImage PeoPleNumber,String Site,int TransparencyRate){
  tint(255, min(255,255-(PeoPleTransparency += TransparencyRate)));
  if (Site == "Left") image(PeoPleNumber,0,PeoPleCeilingDistance);
  if (Site == "Mid") image(PeoPleNumber,width/2-PeoPleNumber.width/2,PeoPleCeilingDistance);
  if (Site == "Right") image(PeoPleNumber,width-PeoPleNumber.width,PeoPleCeilingDistance);
  if (255-(PeoPleTransparency += TransparencyRate) <= 0){
    MousePressedOff = true;
    updateOnce[1] = true;
  }else{
    MousePressedOff = false;
    updateOnce[1] = false;
  }
}
void TwoPeoPleOff(PImage PeoPleNumber1,PImage PeoPleNumber2,int TransparencyRate){
  tint(255, min(255,255-(PeoPleTransparency += TransparencyRate)));
  image(PeoPleNumber1,0,PeoPleCeilingDistance);
  image(PeoPleNumber2,width-PeoPleNumber2.width,PeoPleCeilingDistance); 
  if (255-(PeoPleTransparency += TransparencyRate) <= 0){
    MousePressedOff = true;
    updateOnce[1] = true;
  }else{
    MousePressedOff = false;
    updateOnce[1] = false;
  }
}
void ThreePeoPleOff(PImage PeoPleNumber1,PImage PeoPleNumber2,PImage PeoPleNumber3,int TransparencyRate){
  tint(255, min(255,255-(PeoPleTransparency += TransparencyRate)));
  image(PeoPleNumber1,0,PeoPleCeilingDistance);
  image(PeoPleNumber2,width/2-PeoPleNumber2.width/2,PeoPleCeilingDistance);
  image(PeoPleNumber3,width-PeoPleNumber3.width,PeoPleCeilingDistance); 
  if (255-(PeoPleTransparency += TransparencyRate) <= 0){
    MousePressedOff = true;
    updateOnce[1] = true;
  }else{
    MousePressedOff = false;
    updateOnce[1] = false;
  }
}


void AutoScriptRead(){
    AutoReadGo += 1;
    if (AutoReadGo % AutoReadRate == 0) {CheckToNext = min(ScriptText.length-1,CheckToNext += 1); BGNext = CheckToNext;}
}

void SkipScriptRead(){
    SkipReadGo += 1;
    if (SkipReadGo % SkipReadRate == 0) {CheckToNext = min(ScriptText.length-1,CheckToNext += 1); BGNext = CheckToNext;}
}

void ScriptIconUpdate(){
 for (int i = 0 ; i < 4 ; i ++) {
   image(ScriptIcon[i],width/2+ScriptTableWH[0]/2-(ScriptIcon[i].width*(4-i))-10*(3-i),height-ScriptTableWH[1]-ScriptIcon[i].height-40);
   if(MousePressedOff){
     if (mouseX > width/2+ScriptTableWH[0]/2-(ScriptIcon[i].width*(4-i))-10*(3-i) && mouseX < width/2+ScriptTableWH[0]/2-(ScriptIcon[i].width*(3-i))-10*(3-i) && mouseY > height-ScriptTableWH[1]-ScriptIcon[i].height-40 && mouseY < height-ScriptTableWH[1]-40){
       CheckScriptIcon[i] = true; 
     }else{
       CheckScriptIcon[i]=false;
       }
   }
 }
  
}
