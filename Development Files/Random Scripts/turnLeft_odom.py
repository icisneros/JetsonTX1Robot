
import rospy
from geometry_msgs.msg import Twist
from math import radians, degrees, pi
from nav_msgs.msg import Odometry
import tf

# constant for speed 
# i found slower angular speed is better for accuracy, but it still
# is fairly inaccurate and may need calibration
ROT_SPEED = radians(30)





class TurnLeft():
	
	def __init__(self):
		#intialize. given in radians
		self.roll = 0
		self.pitch = 0
		self.yaw = 0
		
		# initiliaze this node
		rospy.init_node('turnleft', anonymous=False)
		
		# What to do you ctrl + c (call shutdown function written below)
		rospy.on_shutdown(self.shutdown)
		
		self.cmd_vel = rospy.Publisher('cmd_vel', Twist, queue_size=10)
		rospy.Subscriber('odom', Odometry, self.odom_callback)
		
		# 10 Hz
		r = rospy.Rate(10);
		
		# Generate a 'left' twist object.
		turn_left = Twist()
		turn_left.linear.x = 0
		turn_left.angular.z = ROT_SPEED #90 deg/s in radians/s
		
		# give rospy time to register the publisher
		rospy.sleep(1)
		
		start_yaw = self.yaw
		end_yaw = (start_yaw + radians(90)) % (2 * pi)
		
		# establish a margin around the end point (since feedback from 
		# odom node is slow and thus might overshoot)
		# total margin is 90 +/- 2degrees
		lower_bound = (end_yaw - radians(0.5)) % (2 * pi)
		upper_bound = (end_yaw + radians(0.5)) % (2 * pi)
		
		# Turn until it is within the margin
		while((self.yaw < lower_bound) or (upper_bound < self.yaw)):
			self.cmd_vel.publish(turn_left)
			r.sleep()
			rospy.loginfo("new reading")
			rospy.loginfo("start yaw:")
			rospy.loginfo(start_yaw)
			rospy.loginfo("end yaw:")
			rospy.loginfo(end_yaw)
			rospy.loginfo("self.yaw:")
			rospy.loginfo(self.yaw)

		
		rospy.sleep(1)


	def odom_callback(self, data):
		qt_x = data.pose.pose.orientation.x
		qt_y = data.pose.pose.orientation.y
		qt_z = data.pose.pose.orientation.z
		qt_w = data.pose.pose.orientation.w
		
		
		quaternion = (qt_x, qt_y, qt_z, qt_w)
		euler = tf.transformations.euler_from_quaternion(quaternion)
		
		# convert to euler in radians. range restricted: -pi to +pi
		self.yaw = round(euler[2], 2)
		# redefined range (-pi, pi) --> (0, 2pi)
		self.yaw = (self.yaw + 2 * pi) % (2 * pi) 
		

	
	
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

