/*
 Code to control the camera gimbal pitch and fotokite yaw motion.
 It takes in 4 inputs. x,y coordinate position of EMILY and rx,ry major and minor axes lengths of the ellipse
 The ellipse is assumed to have an origin at the centre (l/2,w/2);
 The control used is a simple proportional controller.
 */
#include "serial_communication.h"
#include<math.h>
#include<iostream>
#include <fstream>
#include <sstream>
#include <string>
#include <unistd.h>
#include <ctime>
using namespace std;

class cameracontrol
{
	int l; // enter length of the image
	int h; // enter height of the image
	int x,y,rx,ry;
        int t1,t2;
	serial_comm test2;
        int count;
        ofstream myfile;
        public :
	cameracontrol(){
            l = 640;
            h = 480;
            count=0;
            myfile.open ("fotokite_arenatest_changedpath_17.csv");
            myfile<<"x_val,y_val,pitch,yaw,val,time";
            //test2.serial_comm_initialize();
        }
        ~cameracontrol(){
            myfile.close();
        }
        
	void control(int,int,int,int);
};

void cameracontrol::control(int x, int y, int rx, int ry)
{
        t1 = time(0);
        //cout << "entered control" << endl;
	//first change coordinate axis to have (0,0) at center;
	float r,theta;
	x = x - l/2;
	y = h/2 - y;
        //cout << x << ", " << y << endl;
	//rx = rx - l/2;
	//ry = ry - h/2;
	// get length value of EMILY from centre
	r = pow((x*x + y*y),0.5);
	theta = atan2(y,x);
	float k1 = 0.1;
	float k2 = 1000;
	float tilt = 0;
	float pan=0;
	float val=0;
	val = pow(x,2)/pow(rx,2) + pow(y,2)/pow(ry,2);
        //cout << val << endl;
        
	if (val>1)
	{
            count=1;
            cout<<"Outside the ellipse!!!"<<endl;
            //test2.gimbal_pitch(0.1);
		if (y<0)
		{
			r = -1*r;
		}
		
		//theta in degrees
		float thetad = theta*180/3.14f;
                cout<<thetad;
		if ((thetad>=45 && thetad<=135) || (thetad<=-45 && thetad>=-135))
		{
                    if(thetad>=45 && thetad<=135)
                        tilt = -0.3;
                    else
                        tilt = 0.3;
			//tilt = (1-k1)*-r*0.001;
			//cout << tilt << endl;
                    test2.gimbal_pitch(tilt);
		}
		else
		{
                    if (thetad<45 && thetad>-45)
                        pan = -0.3;
                    else
                        pan = 0.3;
			//pan = (1-k2)*-theta*0.001;
                        //if (pan>0.2)
                         //   pan=0.2;
                        //else if(pan<-0.2)
                         //   pan=-0.2;
                    test2.fotokite_yaw(pan);
                    cout <<"pan :: "<<pan << endl;
		}
	}
        
        else 
        {   
            cout<<count<<endl;
            if(count==1)
            {
            test2.gimbal_pitch(0);
            test2.fotokite_yaw(0);
            count=0;
            cout<<"stoppeddddd";
            }
            
        }
        stringstream x_ss,y_ss,t_ss,p_ss,val_ss,times,tim2;
        x_ss<<x;
        y_ss<<y;
        t_ss<<tilt;
        p_ss<<pan;
        val_ss<<val;
        t2=time(0);
        times<<(difftime(t2,t1)*1000.0);
        tim2<<t2;
        string data =x_ss.str()+","+y_ss.str()+","+t_ss.str()+","+p_ss.str()+","+val_ss.str()+","+times.str()+","+tim2.str()+"\n";
        myfile<<data;
}
 