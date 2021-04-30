

var ScreenSet = 0;

//ScreenChange Random Set
var CahangeRect = new Array(2);
let ChangeBegin = false;
let MousePressedOff = true;
let OnceTimeUpdateDaties = true;

//StartPage Random Set
let StartPageBG;
let StartPageIcon = new Array(6);
var StartPageIconGap = 30;
var StartPageIconXY = new Array(2);
for (i = 0 ; i < 3 ; i ++){
  StartPageIconXY[i] = new Array(3);
}
var StartPageIconWH = new Array(2);
let CheckStartPageIcon = new Array(2);

//GamePage Random Set
let ScriptTable = new Array(2); //Table = 1201*334 Name = 281*89
let ScriptText,ScriptPeoPleName,ScriptOn,ChangeScenesOn;
let ScriptTextType;
var CheckToNext = 0;
let SpecialObject;
let BGData;
let BG = new Array(7);
var BGNext = 0;
let AW;

//PeoPle Random Set
var PeoPleMove , PeoPleTransparency; //PeoPleTransparency = 0; PeoPleMove = 0; on NextScript
let SiteStartSet = false; // SiteStartSet = true; on NextScript
var PeoPleCeilingDistance = 50;
let PeoPlePicture = new Array(7);
for(i = 0 ; i< 11 ; i ++){
  PeoPlePicture[i] = new Array(11);
}
let PeoPle1Type; 
let PeoPle1Face;
let PeoPle2Type; 
let PeoPle2Face;
let PeoPleMoveType;
let PeoPleSite;

//BackStartPage
let BackHomePage = false;

function setup(){
  createCanvas(1280,960);
  //ScriptTextType = createFont("Type.ttf", 32);
  //textFont(ScriptTextType);
  CahangeRect[0] = 0;
  CahangeRect[1] = 1;
  rectMode(CORNER);
  //StartPage Data Load
  ScreenSet = 0;
  for (let i = 0 ; i < 3 ; i ++) {CheckStartPageIcon[i] = false;}
  StartPageBG = loadImage("Picture/TitlePage.jpg");
  StartPageIcon[0] = loadImage("Picture/Start_A.jpg");
  StartPageIcon[1] = loadImage("Picture/Start_B.jpg");
  StartPageIcon[2] = loadImage("Picture/Continue_A.jpg");
  StartPageIcon[3] = loadImage("Picture/Continue_B.jpg");
  StartPageIcon[4] = loadImage("Picture/Exit_A.jpg");
  StartPageIcon[5] = loadImage("Picture/Exit_B.jpg");
  StartPageIconWH[0] = 421;
  StartPageIconWH[1] = 108;
  StartPageIconXY[0][0] = width/2-StartPageIconWH[0]/2;
  StartPageIconXY[0][1] = width/2-StartPageIconWH[0]/2;
  StartPageIconXY[0][2] = width/2-StartPageIconWH[0]/2;
  StartPageIconXY[1][0] = height-(StartPageIconWH[1]*3)-50-(StartPageIconGap*2);
  StartPageIconXY[1][1] = height-(StartPageIconWH[1]*2)-50-StartPageIconGap;
  StartPageIconXY[1][2] = height-StartPageIconWH[1]-50;
  
  //GamePage Data Load
  ScriptText = loadStrings("Data/Script_Text.txt"); //No.23 need to change color on Number_15
  ScriptOn = loadStrings("Data/Script_On.txt");
  ScriptPeoPleName = loadStrings("Data/Script_PeoPleName.txt");
  ChangeScenesOn = loadStrings("Data/ChangeScenes_On.txt");
  PeoPle1Type = loadStrings("Data/Character/Character_No1.txt");
  PeoPle1Face = loadStrings("Data/Character/Character_No1_Face.txt");
  PeoPle2Type = loadStrings("Data/Character/Character_No2.txt");
  PeoPle2Face = loadStrings("Data/Character/Character_No2_Face.txt");
  PeoPleMoveType = loadStrings("Data/Character/Character_MoveType.txt");
  PeoPleSite = loadStrings("Data/Character/Character_Site.txt");
  SpecialObject = loadStrings("Data/SpecialObject.txt");
  BGData = loadStrings("Data/BackGround_Change.txt");
  
  ScriptTable[0] =loadImage("Picture/Script_Table.png");
  ScriptTable[1] =loadImage("Picture/Script_Name.png");
  for (let i = 0 ; i < 7 ; i ++){
    BG[i] = loadImage("Picture/BackGround/"+ i +".jpg");
    for (let k = 0 ; k < 11 ; k ++){
      PeoPlePicture[i][k] = loadImage("Picture/Character/" + i + "_" + k + ".png");
    } 
  }
  

  
}


function OnceTimeUpdate(){
  if(OnceTimeUpdateDaties === true){
    for (let i = 0 ; i < PeoPleSite.length ; i++){
    if(int(PeoPleSite[i]) == 0) {
      PeoPleSite[i] = "Left"; 
    }
    if(int(PeoPleSite[i]) == 1) {
      PeoPleSite[i] = "Mid"; 
    } 
    if(int(PeoPleSite[i]) == 2) {
      PeoPleSite[i] = "Right"; 
    }
  } 
    
    //AW = split(String(ScriptText[13]),"@");
    //ScriptText[13] = AW[0] + "\n" + AW[1] ;
    //AW = split(String(ScriptText[14]),"@");
    //ScriptText[14] = AW[0] + "\n" + AW[1] ;
    //AW = split(String(ScriptText[15]),"@");
    //ScriptText[15] = AW[0] + "\n" + AW[1] ;
  
    OnceTimeUpdateDaties = false;
  }
  
}


function draw(){
  background(255);
  OnceTimeUpdate();
    if (ScreenSet === 0) {StartPage();}
    if (ScreenSet === 1) {GamePage();}


  
    if (ChangeBegin == true){
      if (ScreenSet === 0) {ScreenChange(0,5);}
      if (ScreenSet === 1 && BackHomePage === false) {ScreenChange(1,5);}
      if (ScreenSet === 1 && BackHomePage === true) {ScreenChange(2,5);}
    }
}


function StartPage(){
  fill(0);
  tint(255, 255);
  image(StartPageBG,0,0);
  CheckToNext = 0;
  for (let i = 0 ; i < 3 ; i ++){
      if (StartPageIconXY[0][i] < mouseX && mouseX < (StartPageIconXY[0][i] + StartPageIconWH[0]) && StartPageIconXY[1][i] < mouseY && mouseY < (StartPageIconXY[1][i]+StartPageIconWH[1])) {
        image(StartPageIcon[i*2+1],StartPageIconXY[0][i],StartPageIconXY[1][i]);
        CheckStartPageIcon[i] = true;
      }else {
        image(StartPageIcon[i*2],StartPageIconXY[0][i],StartPageIconXY[1][i]);
        CheckStartPageIcon[i] = false;
      }
    }  
}

function GamePage(){
  tint(255, 255);
  if (CheckToNext <= ScriptText.length-1) { image(BG[int(BGData[BGNext])],0,0); }
  if (CheckToNext < ScriptText.length-1){
    BackHomePage = false;
    if(PeoPleMoveType[CheckToNext].length > 0) { CharaCterAnimateSelect(int(PeoPleMoveType[CheckToNext]),PeoPlePicture[int(PeoPle1Type[CheckToNext])][int(PeoPle1Face[CheckToNext])],PeoPlePicture[int(PeoPle2Type[CheckToNext])][int(PeoPle2Face[CheckToNext])],PeoPleSite[CheckToNext],10,15);  }
    if(int(ChangeScenesOn[CheckToNext]) === 1) {ChangeBegin = true; }
    if(int(ScriptOn[CheckToNext]) == 1) {
      if(CheckToNext == 23) ScriptLoad(23,32,true,15);
      if(CheckToNext == 38 || CheckToNext == 56 || CheckToNext == 116) ScriptLoad(CheckToNext,48,true,15);
      if(CheckToNext != 23 && CheckToNext != 38 && CheckToNext != 56 && CheckToNext != 116) ScriptLoad(CheckToNext,32,false,0); 
    }
  }else if ( CheckToNext == ScriptText.length-1 ){
    ScriptLoad(ScriptText.length-1,32,false,0);
  }else{
    BackHomePage = true;
    ChangeBegin = true;
  }
  if (CheckToNext <= ScriptText.length-1 && int(SpecialObject[CheckToNext]) == 1) CheckToNext += 1;
}

function touchStarted(){
  if(MousePressedOff == true){
  //StartPage Key
    if(ScreenSet == 0){
      if(CheckStartPageIcon[0]) ChangeBegin = true;
      if(CheckStartPageIcon[2]) exit();
    }
  //GamePage Key
    if(ScreenSet == 1){
      CheckToNext += 1;
      BGNext = CheckToNext;
      SiteStartSet = true;
      PeoPleTransparency = 0;
      PeoPleMove = 0;
    }
    MousePressedOff2 = false;
  }
  
}



function ScreenChange(ChangeType,Rate){
 MousePressedOff = false;
 fill(0,0,0,CahangeRect[0] += CahangeRect[1]*Rate); 
 rect(0,0,width,height);
 if (CahangeRect[0] >= 255){
  CahangeRect[1] *= -1;
  CahangeRect[0] = 255;
  if (ChangeType == 0) ScreenSet += 1;
  if (ChangeType == 2) ScreenSet = 0;
  if (ChangeType == 1) BGNext += 1;
 }
 if (CahangeRect[0] <= 0){
  CahangeRect[1] *= -1;
  CahangeRect[0] = 0;
  ChangeBegin = false;
  MousePressedOff = true;
  if (ChangeType == 1) CheckToNext += 1;
  if (ChangeType == 0) CheckToNext = 1;
 }
 
}

function ScriptLoad(ScriptTextNumber,ScriptTextSize,DiffColor,DiffColorBeginNumber){
  tint(255, 255*0.7);
  image(ScriptTable[0],width/2-ScriptTable[0].width/2,height-ScriptTable[0].height-30);
  if(ScriptPeoPleName[ScriptTextNumber].length > 0) image(ScriptTable[1],40,575);
  textSize(ScriptTextSize);
  fill(0);
  if(ScriptPeoPleName[ScriptTextNumber].length > 0) text(ScriptPeoPleName[ScriptTextNumber],40+(ScriptTable[1].width/2)-(textWidth(ScriptPeoPleName[ScriptTextNumber])/2),575+89/2+ScriptTextSize/2);
  if (DiffColor && ScriptText[ScriptTextNumber].length > DiffColorBeginNumber) {
    fill(255,0,0);
    text(ScriptText[ScriptTextNumber],width/2-ScriptTable[0].width/2+50,height-ScriptTable[0].height-30+20,ScriptTable[0].width-100,ScriptTable[0].height-40);
    fill(0);
    text(ScriptText[ScriptTextNumber].substring(0,DiffColorBeginNumber-1),width/2-ScriptTable[0].width/2+50,height-ScriptTable[0].height-30+20,ScriptTable[0].width-100,ScriptTable[0].height-40);
  }else{
    text(ScriptText[ScriptTextNumber],int(width/2-ScriptTable[0].width/2+50),height-ScriptTable[0].height-30+20,ScriptTable[0].width-100,ScriptTable[0].height-40);
  }
}

function CharaCterAnimateSelect(SelectType,PeoPleNumber1Select,PeoPleNumber2Select,SiteSet,MRateSet,TRateSet){
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



function OnePeoPle(PeoPleNumber,Site,TransparencyOpen,TransparencyRate){
  if (TransparencyOpen) {tint(255, min(255,(PeoPleTransparency += TransparencyRate))); } else { tint(255, 255); }
  if (Site == "Left") image(PeoPleNumber,0,PeoPleCeilingDistance);
  if (Site == "Mid") image(PeoPleNumber,width/2-PeoPleNumber.width/2,PeoPleCeilingDistance);
  if (Site == "Right") image(PeoPleNumber,width-PeoPleNumber.width,PeoPleCeilingDistance);
}

function TwoPeoPle(PeoPleNumber1,PeoPleNumber2,TransparencyOpen,TransparencyRate){
  if (TransparencyOpen) {tint(255, min(255,(PeoPleTransparency += TransparencyRate))); } else { tint(255, 255); }
  image(PeoPleNumber1,0,PeoPleCeilingDistance);
  image(PeoPleNumber2,width-PeoPleNumber2.width,PeoPleCeilingDistance); 
}

function ThreePeoPle(PeoPleNumber1,PeoPleNumber2,PeoPleNumber3,TransparencyOpen,TransparencyRate){
  if (TransparencyOpen) {tint(255, min(255,(PeoPleTransparency += TransparencyRate))); } else { tint(255, 255); }
  image(PeoPleNumber1,0,PeoPleCeilingDistance);
  image(PeoPleNumber2,width/2-PeoPleNumber2.width/2,PeoPleCeilingDistance);
  image(PeoPleNumber3,width-PeoPleNumber3.width,PeoPleCeilingDistance); 
}

function OneToTwoPeoPle(PeoPleNumber1,PeoPleNumber2,Site,Rate,TransparencyOpen,TransparencyRate){
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
    if (TransparencyOpen) { if(PeoPleTransparency >= 255){ MousePressedOff = true; }else{ MousePressedOff = false; } }else{ MousePressedOff = true; }
  }else{
    MousePressedOff = false;
  }
}

function OneToThreePeoPle(PeoPleNumber1,PeoPleNumber2,PeoPleNumber3,Site,Rate,TransparencyOpen,TransparencyRate){
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
    if (TransparencyOpen) { if(PeoPleTransparency >= 255){ MousePressedOff = true; }else{ MousePressedOff = false; } }else{ MousePressedOff = true; }
  }else{
    MousePressedOff = false;
  }
}


function OnePeoPleOff(PeoPleNumber,Site,TransparencyRate){
  tint(255, min(255,255-(PeoPleTransparency += TransparencyRate)));
  if (Site == "Left") image(PeoPleNumber,0,PeoPleCeilingDistance);
  if (Site == "Mid") image(PeoPleNumber,width/2-PeoPleNumber.width/2,PeoPleCeilingDistance);
  if (Site == "Right") image(PeoPleNumber,width-PeoPleNumber.width,PeoPleCeilingDistance);
  if (255-(PeoPleTransparency += TransparencyRate) <= 0){
    MousePressedOff = true;
  }else{
    MousePressedOff = false;
  }
}
function TwoPeoPleOff(PeoPleNumber1,PeoPleNumber2,TransparencyRate){
  tint(255, min(255,255-(PeoPleTransparency += TransparencyRate)));
  image(PeoPleNumber1,0,PeoPleCeilingDistance);
  image(PeoPleNumber2,width-PeoPleNumber2.width,PeoPleCeilingDistance); 
  if (255-(PeoPleTransparency += TransparencyRate) <= 0){
    MousePressedOff = true;
  }else{
    MousePressedOff = false;
  }
}
function ThreePeoPleOff(PeoPleNumber1,PeoPleNumber2,PeoPleNumber3,TransparencyRate){
  tint(255, min(255,255-(PeoPleTransparency += TransparencyRate)));
  image(PeoPleNumber1,0,PeoPleCeilingDistance);
  image(PeoPleNumber2,width/2-PeoPleNumber2.width/2,PeoPleCeilingDistance);
  image(PeoPleNumber3,width-PeoPleNumber3.width,PeoPleCeilingDistance); 
  if (255-(PeoPleTransparency += TransparencyRate) <= 0){
    MousePressedOff = true;
  }else{
    MousePressedOff = false;
  }
}