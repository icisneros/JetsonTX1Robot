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
import cv2
import rospy
import numpy as np

from sensor_msgs.msg import Image
from cv_bridge import CvBridge, CvBridgeError


class PrintImage():

    global BLUE_MIN
    global BLUE_MAX

    def processImage(self, data):
        try: 
            cv_image = self.bridge.imgmsg_to_cv2(data, "bgr8")
            cv_image = cv2.cvtColor(cv_image, cv2.COLOR_BGR2HSV)
            cv2.imshow('picture', cv_image)
            cv_image = cv2.medianBlur(cv_image, 5)
            cv2.imshow('blurred_picture', cv_image)
            BLUE_MIN = np.array([92,50,50], np.uint8)
            BLUE_MAX = np.array([131,230,230], np.uint8)
            cv_image = cv2.inRange(cv_image, BLUE_MIN, BLUE_MAX)
            cv2.imshow('only blue', cv_image)
            cv2.waitKey(3)
        except CvBridgeError, e: 
            rospy.loginfo(e)

    def __init__(self):
        rospy.init_node('PrettyPicture', anonymous=False)

        # ctrl + c -> call self.shutdown function
        rospy.on_shutdown(self.shutdown)

        # print msg 
        rospy.loginfo("Hello World!")
            
        # How often should provide commands? 10 HZ
        r = rospy.Rate(10);

        self.bridge = CvBridge()

        #rospy.Subscriber('/camera/rgb/image_color', Image, self.processImage)
        rospy.Subscriber('/camera/rgb/image_raw', Image, self.processImage, queue_size=1,  buff_size=2**24)
        # do nothing. 
        while not rospy.is_shutdown():
            rospy.spin()
                        
        
    # pre-shutdown routine. 
    # stops the robot before rospy.shutdown 
    def shutdown(self):
        cv2.destroyAllWindows()
        # print msg 
        rospy.loginfo("Stop")
        # wait for robot to stop before shutdown
        rospy.sleep(5)
 
if __name__ == '__main__':
    try:
        PrintImage()
    except Exception, e:
        print e
        rospy.loginfo("PrettyPicture node terminated.")
