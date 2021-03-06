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

# constant for speed 
LIN_SPEED = 0.2
ROT_SPEED = radians(90)

class TurnLeft():
    def __init__(self):
        # initiliaze
        rospy.init_node('Draw_Square', anonymous=False)

        # What to do you ctrl + c (call shutdown function written below)
        rospy.on_shutdown(self.shutdown)
        
        self.cmd_vel = rospy.Publisher('cmd_vel_mux/input/navi', Twist, queue_size=150)
	rospy.sleep(1) # give rospy time to register the publisher
         
        # 10 HZ
        r = rospy.Rate(10);

        # Generate a 'straight' twist object.
        move_straight = Twist()
        move_straight.linear.x = LIN_SPEED
        move_straight.angular.z = 0;
        
        # Generate a 'left' twist object.
        turn_left = Twist()
        turn_left.linear.x = 0
        turn_left.angular.z = ROT_SPEED #90 deg/s in radians/s

	for side in range(0,4):
		for i in range(0,20):
			self.cmd_vel.publish(move_straight)
			r.sleep()
	        rospy.sleep(1)
		for i in range(0,10):
			self.cmd_vel.publish(turn_left)
			r.sleep()
	        rospy.sleep(1)

    def shutdown(self):
        # stop turtlebot
        rospy.loginfo("Stop!")
        # publish a zeroed out Twist object
        self.cmd_vel.publish(Twist())
        # sleep before final shutdown
        rospy.sleep(1)
 
if __name__ == '__main__':
    try:
        TurnLeft()
    except:
        rospy.loginfo("node terminated.")

