import processing.sound.*;

import kinect4WinSDK.Kinect;
import kinect4WinSDK.SkeletonData;

import processing.serial.*;
Serial myPort;  // Create object from Serial class

Kinect kinect;
ArrayList <SkeletonData> bodies;


SoundFile file1;
SoundFile file2;
SoundFile file3;
SoundFile file4;
SoundFile file5;
SoundFile file6;
SoundFile file7;
SoundFile file8;
SoundFile file9;


int cooldown1, cooldown2, cooldown3, cooldown4, cooldown5, cooldown6, cooldown7, cooldown8, cd9, cd10, cd11, cd12;
float seg, x, y;

void setup() {
  size(640, 480);
  seg = width / 9;
  background(255);

  //setting up serial communication
  String portName = Serial.list()[0]; //change the 0 to a 1 or 2 etc. to match your port
  myPort = new Serial(this, portName, 9600);
  println(portName);

  //kinect
  kinect = new Kinect(this);
  bodies = new ArrayList<SkeletonData>();

  //sound
  cooldown1 = 60;
  cooldown2 = 60;
  cooldown3 = 60;
  cooldown4 = 60;
  cooldown5 = 60;
  cooldown6 = 60;
  cooldown7 = 60;
  cooldown8 = 60;


  //load soundfile
  file1 = new SoundFile(this, "380731__cabled-mess__sansula-08-c-raw.wav");
  file2 = new SoundFile(this, "380732__cabled-mess__sansula-09-e-raw.wav");
  file3 = new SoundFile(this, "380733__cabled-mess__sansula-06-a-02-raw.wav");
  file4 = new SoundFile(this, "380734__cabled-mess__sansula-07-b-h-raw.wav");
  file5 = new SoundFile(this, "380735__cabled-mess__sansula-03-e-raw.wav");
  file6 = new SoundFile(this, "380736__cabled-mess__sansula-02-c-raw.wav");
  file7 = new SoundFile(this, "380737__cabled-mess__sansula-01-a-raw.wav");
  file8 = new SoundFile(this, "380738__cabled-mess__sansula-05-a-01-raw.wav");
  file9 = new SoundFile(this, "380739__cabled-mess__sansula-04-f-raw.wav");

}

void draw() {
  background(255);
  fill(0);
  if (cooldown1 > 0) {
    cooldown1--;
  }
  if (cooldown2 > 0) {
    cooldown2--;
  }
  if (cooldown3 > 0) {
    cooldown3--;
  }
  if (cooldown4 > 0) {
    cooldown4--;
  }
  if (cooldown5 > 0) {
    cooldown5--;
  }
  if (cooldown6 > 0) {
    cooldown6--;
  }
  if (cooldown7 > 0) {
    cooldown7--;
  }
  if (cooldown8 > 0) {
    cooldown8--;
  }
  if (cd9 > 0) {
    cd9--;
  }
  if (cd10 > 0) {
    cd10--;
  }
  if (cd11 > 0) {
    cd11--;
  }
  if (cd12 > 0) {
    cd12--;
  }
  // println(bodies);
  for (int i=bodies.size ()-1; i>=0; i--) 
  {
    x = bodies.get(i).position.x;
    x = x * width;
    //x = mouseX;
    println(x);
    //y = mouseY;
    //ellipse(x,height/2,30,30);
    if (x < seg) {
      rect(0, 0, seg, height);
      if (cooldown1 <= 0) {
        file1.play();
        //send a 1 to arduino
        myPort.write("1");
        println("writing 1 - colour should be x");
        cooldown1 = 60;
      }
    } 

    if (x > seg && x < seg * 2) {
      rect(seg, 0, seg, height);
      if (cooldown2 <= 0) {
        file2.play();
        //send a 2 to arduino
        myPort.write("2");
        println("writing 2 - colour should be x");
        cooldown2 = 60;
      }
    } 

    if (x > seg * 2 && x < seg * 3) {
      rect(seg * 2, 0, seg, height);
      if (cooldown3 <= 0) {
        file3.play();
        //send a 3 to arduino
        myPort.write("3");
        println("writing 3 - colour should be x");
        cooldown3 = 60;
      }
    } 

    if (x > seg * 3 && x < seg * 4) {
      rect(seg * 3, 0, seg, height);
      if (cooldown4 <= 0) {
        file4.play();
        //send a 4 to arduino
        println("writing 4 - colour should be x");
        myPort.write("4");
        cooldown4 = 60;
      }
    } 

    if (x > seg * 4 && x < seg * 5) {
      rect(seg * 4, 0, seg, height);
      if (cooldown5 <= 0) {
        file5.play();
        //send a 5 to arduino
        println("writing 5 - colour should be x");
        myPort.write("5");
        cooldown5 = 60;
      }
    } 

    if (x > seg * 5 && x < seg * 6) {
      rect(seg * 5, 0, seg, height);
      if (cooldown6 <= 0) {
        file6.play();
        //send a 6 to arduino
        println("writing 6 - colour should be x");
        myPort.write("6");
        cooldown6 = 60;
      }
    } 

    if (x > seg * 6 && x < seg * 7) {
      rect(seg * 6, 0, seg, height);
      if (cooldown7 <= 0) {
        file7.play();
        //send a 7 to arduino
        println("writing 7 - colour should be x");
        myPort.write("7");
        cooldown7 = 60;
      }
    } 

    if (x > seg * 7 && x < seg * 8) {
      rect(seg * 7, 0, seg, height);
      if (cooldown8 <= 0) {
        file8.play();
        //send a 8 to arduino
        println("writing 8 - colour should be x");
        myPort.write("8");
        cooldown8 = 60;
      }
    }


    if (x > seg * 8 && x < seg * 9) {
      rect(seg * 8, 0, seg, height);
      if (cd9 <= 0) {
        file9.play();
        //send a 9 to arduino
        println("writing 9 - colour should be x");
        myPort.write("9");
        cd9 = 60;
      }
    }


    //if (x > seg * 9 && x < seg * 10) {
    //  rect(seg * 9, 0, seg, height);
    //  if (cd10 <= 0) {
    //    file8.play();
    //    //send a 10 to arduino
    //    //myPort.write("10");
    //    cd10 = 60;
    //  }
    //}


    //if (x > seg * 10 && x < seg * 11) {
    //  rect(seg * 10, 0, seg, height);
    //  if (cd11 <= 0) {
    //    file8.play();
    //    //send a 11 to arduino
    //    //myPort.write("11");
    //    cd11 = 60;
    //  }
    //}

    //if (x > seg * 11 && x < seg * 12) {
    //  rect(seg * 11, 0, seg + 5, height);
    //  if (cd12 <= 0) {
    //    file8.play();
    //    //send a 12 to arduino
    //    //myPort.write("12");
    //    cd12 = 60;
    //  }
    //}
  }
}

void appearEvent(SkeletonData _s) 
{
  if (_s.trackingState == Kinect.NUI_SKELETON_NOT_TRACKED) 
  {
    return;
  }
  synchronized(bodies) {
    bodies.add(_s);
  }
}

void disappearEvent(SkeletonData _s) 
{
  synchronized(bodies) {
    for (int i=bodies.size ()-1; i>=0; i--) 
    {

      bodies.remove(i);
    }
  }
}

void moveEvent(SkeletonData _b, SkeletonData _a) 
{
  if (_a.trackingState == Kinect.NUI_SKELETON_NOT_TRACKED) 
  {
    return;
  }
  synchronized(bodies) {
    for (int i=bodies.size ()-1; i>=0; i--) 
    {
      if (_b.dwTrackingID == bodies.get(i).dwTrackingID) 
      {
        bodies.get(i).copy(_a);
        break;
      }
    }
  }
}