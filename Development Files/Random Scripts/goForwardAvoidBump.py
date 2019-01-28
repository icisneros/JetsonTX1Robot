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
from kobuki_msgs.msg import BumperEvent
from math import radians

lin_speed = .2 #m/s
rot_speed = radians(90)

# boolean variables for bump event processing
bump = False

# If bump data is received, process the data
# data.bumper: LEFT (0), CENTER (1), RIGHT (2)
# data.state: RELEASED (0), PRESSED (1)
def processBumpSensing(data):
    # global keyword to reference variable declared outside function
    global bump
    if (data.state == BumperEvent.PRESSED):
        bump = True
    rospy.loginfo("Bumper Event")
    rospy.loginfo(data.bumper)


class GoForwardAvoidBump():
    def __init__(self):
        global bump

        # initiliaze
        rospy.init_node('GoForwardAvoidBump', anonymous=False)

        # tell user how to stop TurtleBot
        rospy.loginfo("To stop TurtleBot CTRL + C")
        rospy.loginfo("Test post please ignore...")

        # What function to call when you ctrl + c    
        rospy.on_shutdown(self.shutdown)
            
        # Create a publisher which can "talk" to TurtleBot wheels and tell it to move
        self.cmd_vel = rospy.Publisher('cmd_vel_mux/input/navi', Twist, queue_size=10)

        # Subscribe to queues for receiving sensory data
        rospy.Subscriber('mobile_base/events/bumper', BumperEvent, processBumpSensing)
        # TurtleBot will stop if we don't keep telling it to move.  How often should we tell it to move? 10 HZ
        r = rospy.Rate(10);

        # YOUR CODE GOES HERE! 
        
        # Twist is a datatype for velocity
        move_cmd = Twist()

        # as long as you haven't ctrl + c keeping doing...
        while not rospy.is_shutdown():
            if bump:
                # STOP
                move_cmd.linear.x = 0
                move_cmd.angular.z = 0
            else: 
                # FORWARD SLOWLY
                move_cmd.linear.x = lin_speed
                move_cmd.angular.z = 0
       
            # publish the velocity
            self.cmd_vel.publish(move_cmd)
            # wait for 0.1 seconds (10 HZ) and publish again
            r.sleep()
                        
        
    def shutdown(self):
        # stop turtlebot
        rospy.loginfo("Stop TurtleBot")
   	    # a default Twist has linear.x of 0 and angular.z of 0.  So it'll stop TurtleBot
        self.cmd_vel.publish(Twist())
   	    # sleep just makes sure TurtleBot receives the stop command prior to shutting down the script
        rospy.sleep(5)
 
if __name__ == '__main__':
    try:
        GoForwardAvoidBump()
    except:
        rospy.loginfo("GoForwardAvoidBump node terminated.")
