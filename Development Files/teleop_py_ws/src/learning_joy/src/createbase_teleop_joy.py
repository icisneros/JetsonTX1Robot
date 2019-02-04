#!/usr/bin/env python
import rospy
from geometry_msgs.msg import Twist
from sensor_msgs.msg import Joy


# Receives joystick messages (subscribed to Joy topic)
# then converts the joysick inputs into Twist commands
# axis 1 aka left stick vertical controls linear speed
# axis 0 aka left stick horizonal controls angular speed
def callback(data):
	joy_twist_cmds = Twist()
	
	# modify the velocities here
	# data from joystick node comes in weird numerical indexed format
	# data comes in range -1 to 1, so multiply by the max speed
	# for angular and linear for the create base
	joy_twist_cmds.linear.x = 0.5*data.axes[1]
	joy_twist_cmds.angular.z = 4.25*data.axes[0]
	
	raw_vel.publish(joy_twist_cmds)
	
	#crb.publish(joy_twist_cmds)
	
	
def smoothed_vel(data):
	smooth_vel = Twist()
	
	# modify the velocities here
	smooth_vel.linear.x = data.linear.x
	smooth_vel.angular.z = data.angular.z
	
	
	rospy.loginfo(smooth_vel)
	
	crb.publish(smooth_vel)
	


# Intializes everything
def start():

	global crb
	global raw_vel
	global smooth_vel
	# publishing to "cmd_vel" to control create base
	crb = rospy.Publisher('cmd_vel', Twist, queue_size=10)
	
	# Velocity smoother raw
	raw_vel = rospy.Publisher('raw_cmd_vel', Twist, queue_size=10)
	
	# Smoothed velocity
	rospy.Subscriber('smooth_cmd_vel', Twist, smoothed_vel)
	
	# subscribed to joystick inputs on topic "joy"
	rospy.Subscriber("joy", Joy, callback)
	

	
	# starts the node
	rospy.init_node('turtle_teleop_joy')
	rate = rospy.Rate(10) # 10hz
	rospy.spin()



	

if __name__ == '__main__':
	start()
