/*
 * serial_communication.h
 *
 *  Created on: Apr 18, 2017
 *      Author: Haresh Karnan, Pranav Vaidik Dhulipala
 */

#ifndef SERIAL_COMMUNICATION_H_
#define SERIAL_COMMUNICATION_H_
#include <iostream>
#include <SerialStream.h>
#include <string>
#include <math.h>
#include <time.h>
#include <unistd.h>
#include <sstream>
using namespace std;
using namespace LibSerial;
class serial_comm
{
    SerialStream serial;
    public:
        serial_comm(){
            if(!serial.IsOpen())
            {
        cout<<"~~~opening the port~~~"<<endl;
        serial.Open("/dev/ttyACM0");
        cout<<"Port opened"<<endl;
        serial.SetCharSize(SerialStreamBuf::CHAR_SIZE_8);
        serial.SetBaudRate(SerialStreamBuf::BAUD_115200);
        serial.SetNumOfStopBits(1);
        serial.SetFlowControl(SerialStreamBuf::FLOW_CONTROL_NONE);
        cout<<"sending carriage sequence"<<endl;
        string carriage_sequence = "\r\r\r\r\r";
        serial<< carriage_sequence;
        //Look for the "nsh>" response from the Ground station
        char ground_station_response[4];
        serial.read(ground_station_response,4);
        cout<<"getting into while"<<endl;
        while(serial.rdbuf()->in_avail()){cout<<serial.get();}
        cout << ground_station_response<<endl;
 
        cout<<"connection with Ground Station Established Successfully";
        send_serial_command("stop");
        while(serial.rdbuf()->in_avail()){cout<<serial.get();}
        usleep(500000);
        send_serial_command("RemoteControl start");
        while(serial.rdbuf()->in_avail()){cout<<serial.get();}
        usleep(500000);
        send_serial_command("Checksum 0");
        while(serial.rdbuf()->in_avail()){cout<<serial.get();}
        usleep(500000);
        cout<<"Initialized Remote Control and set the Checksum to False";
        
            }
            else
            {
                cout<<"serial port already open !"<<endl;
            }
    }
        // other functions declaration
        int send_char(char);
        void send_serial_command(string);
        void gimbal_pitch_roll(float, float);
        void gimbal_roll(float);
        void gimbal_pitch(float);
        void fotokite_yaw(float);
        void stop_remote_control();
        void stop_camera_movement();
        void close_serial_communication();
        
};

void serial_comm::send_serial_command(string str){
    
    serial<<"\r";
    while(serial.rdbuf()->in_avail()){cout<<serial.get();}
    
    serial<<str;
    cout << "command sent: "<< str <<endl;
    
    serial<<"\r";
    while(serial.rdbuf()->in_avail()){cout<<serial.get();}
    return;
}

int serial_comm::send_char(char a){
    
    serial<<"\r";
    while(serial.rdbuf()->in_avail()){cout<<serial.get();}
    serial<<a;
    
    return 0;
}

void serial_comm::stop_remote_control(){
    send_serial_command("stop");
    return;
}

void serial_comm::gimbal_pitch_roll(float pitch_value, float roll_value)
{
    stringstream p,r;
    p<<fixed<<pitch_value;
    r<<fixed<<roll_value;
    string serial_command = "Gimbal " + p.str()+ "," + r.str();
    send_serial_command(serial_command);
    //serial<<endl;
}

void serial_comm::gimbal_roll(float value)
{
    stringstream r;
    r<<fixed<<value;
    string serial_command = "GimbalRoll " + r.str();
    send_serial_command(serial_command);
    //serial<<endl;
}
void serial_comm::gimbal_pitch(float value)
{
    stringstream p;
    p<<fixed<<value;
    string serial_command = "GimbalPitch " + p.str();
    send_serial_command(serial_command);
    //serial<<endl;
}
void serial_comm::fotokite_yaw(float value)
{
    //string serial_command = "GimbalYaw " + to_string(value) + "<CR>";
    stringstream y;
    y<<fixed<<value;
    string serial_command = "Yaw " + y.str();
    send_serial_command(serial_command);
    //serial<<endl;
}

void serial_comm::stop_camera_movement()
{
    gimbal_pitch_roll(0,0);
    fotokite_yaw(0);
    cout<<"camera movement stopped";
    //serial<<endl;
}

void serial_comm::close_serial_communication()
{
    serial.Close();
}

#endif /* SERIAL_COMMUNICATION_H_ */
