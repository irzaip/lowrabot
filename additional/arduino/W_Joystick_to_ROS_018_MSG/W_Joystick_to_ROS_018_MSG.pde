
// Name: W_Joystick_to_ROS
// Author: Irza Pulungan
// Date: Jan 2012
// Version: 0.1
// Latest status: working
// Purpose: to test SPC Wireless connected to arduino
// Notes: program sudah jalan, memakai teknik ON/OFF
// seperti switch.

//#include <WProgram.h>
#include <PString.h>
#include <Bounce.h>
#include <Wire.h>
#include <ros.h>
//#include <std_msgs/String.h>
#include <rosserial_arduino/Myardu.h>

ros::NodeHandle nh;

//std_msgs::String str_msg;
//ros::Publisher chatter("arduino", &str_msg);

rosserial_arduino::Myardu myardu_msg;
ros::Publisher p("arduino", &myardu_msg);


// input from RX Wireless SPC
int pinKiriKananPWM = 14;
int pinKiriKananMODE = 15;
int pinAtasBawahPWM = 16;
int pinAtasBawahMODE = 17;

unsigned long KiriKananPWM;
unsigned long AtasBawahPWM;

int KiriKananMODE;
int AtasBawahMODE;

int PWMAtasBawah_val;
int PWMKiriKanan_val;

// This code turns a led on/off through a debounced button
// Build the circuit indicated here: http://arduino.cc/en/Tutorial/Button

#define pin44 44 //kotak
#define pin45 45 //silang
#define pin46 46 //bulat
#define pin47 47 //segitiga
#define pin48 48 //R1
#define pin49 49 //L1
#define pin50 50 //R2
#define pin51 51 //L2
#define pin52 52 //L3 (tombol analog harus menyala)
#define pin53 53 //R3

#define LED 13


// Instantiate a Bounce object with a 5 millisecond debounce time
Bounce bouncer44 = Bounce( pin44,5 ); 
Bounce bouncer45 = Bounce( pin45,5 ); 
Bounce bouncer46 = Bounce( pin46,5 ); 
Bounce bouncer47 = Bounce( pin47,5 ); 
Bounce bouncer48 = Bounce( pin48,5 ); 
Bounce bouncer49 = Bounce( pin49,5 ); 
Bounce bouncer50 = Bounce( pin50,5 ); 
Bounce bouncer51 = Bounce( pin51,5 ); 
Bounce bouncer52 = Bounce( pin52,5 ); 
Bounce bouncer53 = Bounce( pin53,5 ); 




void setup() {
  Wire.begin();
  Serial.begin(9600);
  //
  pinMode(pin44,INPUT);
  pinMode(pin45,INPUT);
  pinMode(pin46,INPUT);
  pinMode(pin47,INPUT);
  pinMode(pin48,INPUT);
  pinMode(pin49,INPUT);
  pinMode(pin50,INPUT);
  pinMode(pin51,INPUT);
  pinMode(pin52,INPUT);
  pinMode(pin53,INPUT);
  //
  pinMode(LED,OUTPUT);
  //
  pinMode(pinKiriKananPWM, INPUT);
  pinMode(pinKiriKananMODE, INPUT);
  pinMode(pinAtasBawahPWM, INPUT);
  pinMode(pinAtasBawahMODE, INPUT);  
  
  nh.initNode();
  nh.advertise(p);

  attachInterrupt(14, fastpublishJoystick, CHANGE);
  attachInterrupt(16, fastpublishJoystick, CHANGE);  
}

void loop() {
  publishJoystick();
}


void publishJoystick() {

 // Update the debouncer
  bouncer44.update ( );
  bouncer45.update ( );
  bouncer46.update ( );
  bouncer47.update ( );
  bouncer48.update ( );
  bouncer49.update ( );
  bouncer50.update ( );
  bouncer51.update ( );
  bouncer52.update ( );
  bouncer53.update ( );
  
  
  KiriKananPWM = pulseIn(pinKiriKananPWM, HIGH,30);
  AtasBawahPWM = pulseIn(pinAtasBawahPWM, HIGH,30);

  KiriKananMODE = digitalRead(pinKiriKananMODE);
  AtasBawahMODE = digitalRead(pinAtasBawahMODE);

  PWMKiriKanan_val = map(KiriKananPWM,0,3244,0,100);
  PWMAtasBawah_val = map(AtasBawahPWM,0,3244,0,100);

  char buffer[50];
  PString joystatus(buffer, sizeof(buffer));

  //reset buffer
  joystatus = "";

    if (AtasBawahMODE == HIGH){
           myardu_msg.ab_dir = 1;
    } else {
           myardu_msg.ab_dir = 0;}
    if (KiriKananMODE == HIGH){
           myardu_msg.kk_dir = 1;
    } else {
           myardu_msg.kk_dir = 0;}
    
    myardu_msg.ab_val = PWMAtasBawah_val;
    myardu_msg.kk_val = PWMKiriKanan_val;
    joystatus.print(",");    
   

  //Turn on or off the LED
     if ( bouncer44.read() == HIGH) {
          myardu_msg.joy1 = 0;       
       } else {
          digitalWrite(LED, LOW );
            myardu_msg.joy1 = 1;}

     if ( bouncer45.read() == HIGH) {
          myardu_msg.joy2 = 0;       
       } else {
          digitalWrite(LED, LOW );
            myardu_msg.joy2 = 1;}

     if ( bouncer46.read() == HIGH) {
          myardu_msg.joy3 = 0;       
       } else {
          digitalWrite(LED, LOW );
            myardu_msg.joy3 = 1;}

     if ( bouncer47.read() == HIGH) {
          myardu_msg.joy4 = 0;       
       } else {
          digitalWrite(LED, LOW );
            myardu_msg.joy4 = 1;}

     if ( bouncer48.read() == HIGH) {
          myardu_msg.joy5 = 0;       
       } else {
          digitalWrite(LED, LOW );
            myardu_msg.joy5 = 1;}

     if ( bouncer49.read() == HIGH) {
          myardu_msg.joy6 = 0;       
       } else {
          digitalWrite(LED, LOW );
            myardu_msg.joy6 = 1;}

     if ( bouncer50.read() == HIGH) {
          myardu_msg.joy7 = 0;       
       } else {
          digitalWrite(LED, LOW );
            myardu_msg.joy7 = 1;}

     if ( bouncer51.read() == HIGH) {
          myardu_msg.joy8 = 0;       
       } else {
          digitalWrite(LED, LOW );
            myardu_msg.joy8 = 1;}

     if ( bouncer52.read() == HIGH) {
          myardu_msg.joy9 = 0;       
       } else {
          digitalWrite(LED, LOW );
            myardu_msg.joy9 = 1;}

     if ( bouncer53.read() == HIGH) {
          myardu_msg.joy10 = 0;       
       } else {
          digitalWrite(LED, LOW );
            myardu_msg.joy10 = 1;}

/*
if ((KiriKananPWM > 0) or (AtasBawahPWM > 0))
 {
    if (AtasBawahMODE > 0) {
        Serial.print("Atas ");
        Serial.print(PWMAtasBawah_val);
      } else {
        Serial.print("Bawah ");  
        Serial.print(PWMAtasBawah_val);
      }
      
     if (KiriKananMODE > 0) {
         Serial.print(" - Kiri ");
         Serial.print(PWMKiriKanan_val);
       } else {
         Serial.print(" - Kanan ");
         Serial.print(PWMKiriKanan_val);
       }
      Serial.println();    
*/  
  
 //Serial.println(joystatus);
 //Serial.println(PWMAtasBawah_val);
 //Serial.println(PWMKiriKanan_val);

  //str_msg.data = buffer;
  p.publish( &myardu_msg );
  nh.spinOnce();
  //delay(50);

}

void fastpublishJoystick() {

}

