
import rospy
from geometry_msgs.msg import Twist
from math import radians
from nav_msgs.msg import Odometry

# constant for speed 
ROT_SPEED = radians(90)


def odom_callback(data):
	global yaw
	#rospy.loginfo(data.pose.pose.orientation.z)
	yaw = data.pose.pose.orientation.z



class TurnLeft():
	
	def __init__(self):
		global yaw
		
		# initiliaze
		rospy.init_node('turnleft', anonymous=False)
		
		# What to do you ctrl + c (call shutdown function written below)
		rospy.on_shutdown(self.shutdown)
		
		self.cmd_vel = rospy.Publisher('cmd_vel', Twist, queue_size=10)
		rospy.sleep(1) # give rospy time to register the publisher
		 
		rospy.Subscriber('odom', Odometry, odom_callback)
		
		# 10 Hz
		r = rospy.Rate(10);
		
		# Generate a 'left' twist object.
		turn_left = Twist()
		turn_left.linear.x = 0
		turn_left.angular.z = ROT_SPEED #90 deg/s in radians/s
		rospy.sleep(1)
		
		start_yaw = yaw
		end_yaw = yaw + 0.90
		
		# For 10 iterations publish a twist and sleep 1 Hz
		while(yaw < end_yaw):
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
    #try:
        #TurnLeft()
    #except:
        #rospy.loginfo("node terminated.")
	TurnLeft()

