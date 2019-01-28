'''
Copyright (c) 2015, Mark Silliman
All rights reserved.
Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:
1. Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
2. Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.
3. Neither the name of the copyright holder nor the names of its contributors may be used to endorse or promote products derived from this software without specific prior written permission.
THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
Modified by Serena Booth
'''
import rospy
from geometry_msgs.msg import Twist
from math import radians
from kobuki_msgs.msg import BumperEvent

# constant for speed 
LIN_SPEED = 0.2
ROT_SPEED = radians(45) #45 deg/s in radians/s

bump = False

# If bump data is received, process the data
# data.bumper: LEFT (0), CENTER (1), RIGHT (2)
# data.state: RELEASED (0), PRESSED (1)
def processBumpSensing(data):
    global bump
    if (data.state == BumperEvent.PRESSED):
        bump = True
    #else:
    #    bump = False
    rospy.loginfo("Bumper Event")
    rospy.loginfo(data.bumper)


class DrawASquareAvoidBump():    
    def __init__(self):
        global bump 

        # initiliaze
        rospy.init_node('DrawASquareStopOnBump', anonymous=False)

        # What to do you ctrl + c (call shutdown function written below)
        rospy.on_shutdown(self.shutdown)
        
        self.cmd_vel = rospy.Publisher('cmd_vel_mux/input/navi', Twist, queue_size=10)
        rospy.Subscriber('mobile_base/events/bumper', BumperEvent, processBumpSensing)

        # 5 HZ
        r = rospy.Rate(5);

        # upper motion descriptor (used below)
        move_forward = Twist()
        move_forward.linear.x = LIN_SPEED
        move_forward.angular.z = 0;
    
        # lower motion descriptor (used below)
        move_turn = Twist()
        move_turn.linear.x = 0
        move_turn.angular.z = ROT_SPEED; 

        while not rospy.is_shutdown():
            for num_iters in range(4):
                for i in range(0,10):                   #2 seconds (@5hz)
                    if (bump):
                        shutdown()
                    self.cmd_vel.publish(move_forward)
                    r.sleep()
                for i in range(0,10):                   #2 seconds (@5hz)
                    if (bump):
                        shutdown()
                    self.cmd_vel.publish(move_turn)
                    r.sleep()
            shutdown()

    def shutdown(self):
        # stop turtlebot
        rospy.loginfo("Stop Drawing Squares!")
        # publish a zeroed out Twist object
        self.cmd_vel.publish(Twist())
        # sleep before final shutdown
        rospy.sleep(1)
 
if __name__ == '__main__':
    try:
        DrawASquareAvoidBump()
    except:
        rospy.loginfo("Terminated.")


