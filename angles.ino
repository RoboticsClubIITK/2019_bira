#include<VarSpeedServo.h>;
VarSpeedServo elbow, shoulder, rotation, gripper; //8,9,10,11
float angle_rot;
float angle_shoulder;
float angle_elbow;
float angle_gripper;

void setup() {
  // put your setup code here, to run once:
  elbow.attach(8);
  shoulder.attach(9);
  gripper.attach(11);
  rotation.attach(10);
  Serial.begin(9600);
  rotation.write(90, 20 ,true);
  shoulder.write(170, 20 ,true);
  elbow.write(60, 20, true);
  gripper.write(60,20,true);
  angle_gripper=60;
}

void loop() {
        while(Serial.available()==0){}  //wait till input is received in the serial
        angle_rot = Serial.parseFloat();  //collect the floating point data
        
        while(Serial.available()==0){}
        angle_shoulder = Serial.parseFloat();
        
        while(Serial.available()==0){}
        angle_elbow = Serial.parseFloat();
        
        //if(angle_rot!=0 && angle_shoulder!=0 && angle_elbow!=0) //if all angles are not simultaneously zero
        {
          //Serial.println(angle_rot);
          Serial.println(angle_rot);
          Serial.println(angle_shoulder);
          Serial.println(angle_elbow);
          Serial.println(angle_gripper);
          rotation.write(angle_rot, 20 ,true);      //move the body
          shoulder.write(angle_shoulder, 20 ,true);   //move the shoulder
          elbow.write(angle_elbow, 20, true);     //move the elbow
        }
        /*else
        {
          if(angle_gripper==60){
            gripper.write(120,20,true);   //to close gripper
            angle_gripper=120;
          } 
          else{
            gripper.write(60,20,true);   //to open gripper
            angle_gripper=60;
          } 
        }*/

}
