import rospy
from geometry_msgs.msg import PoseStamped
from std_msgs.msg import String
from ad_challenge_msgs.msg import TrafficSignArray

import math

import numpy as np

Degree_of_Fov_Camera_Camera = 78

Camera_Length_Width_Length_Width = 1200

Camera_Width_Pixel_Width_Pixel = 720

Length_of_Traffic_Sign_Traffic_Sign = 1



def Transform_Sign_Coordinate_to_Vehicle_Coordinate( Vehicle_Coordinate , Vehicle_Orientation , Traffic_Coordinate ) :

    if  np.sum( Traffic_Coordinate ) == 0:# == np.array( [0 , 0 , 0 ]):

        #print( "There is No Traffic Sign Detected" )

        print( "Hello")

        return
    
    else :

        Traffic_Coordinate = Traffic_Coordinate - Vehicle_Coordinate

        Degree_of_Vehicle_Orientation = math.degrees( math.atan( Vehicle_Orientation[ 1 ] / Vehicle_Orientation[ 0 ]))

        Degree_of_Traffic_Coordinate_Coordinate = math.degrees( math.atan( Traffic_Coordinate[ 1 ]/ Traffic_Coordinate[ 0 ]))

        #print( Degree_of_Traffic_Coordinate_Coordinate)

        Radian_of_Traffic_Coordinate_to_Vehicle_Coordinate_Coordinate = ( ( Traffic_Coordinate[ 0 ])**2 + ( Traffic_Coordinate[ 1 ])**2 )**(0.5)
        
        print( math.radians( Degree_of_Vehicle_Orientation - Degree_of_Traffic_Coordinate_Coordinate))

        print( [ Radian_of_Traffic_Coordinate_to_Vehicle_Coordinate_Coordinate* math.cos( math.radians( Degree_of_Vehicle_Orientation - Degree_of_Traffic_Coordinate_Coordinate)), Radian_of_Traffic_Coordinate_to_Vehicle_Coordinate_Coordinate*math.sin( math.radians( Degree_of_Vehicle_Orientation - Degree_of_Traffic_Coordinate_Coordinate )) , Traffic_Coordinate[ 2 ]])

        return np.array( ( [ Radian_of_Traffic_Coordinate_to_Vehicle_Coordinate_Coordinate* math.cos( math.radians( Degree_of_Vehicle_Orientation - Degree_of_Traffic_Coordinate_Coordinate)), Radian_of_Traffic_Coordinate_to_Vehicle_Coordinate_Coordinate*math.sin( math.radians( Degree_of_Vehicle_Orientation - Degree_of_Traffic_Coordinate_Coordinate )) , Traffic_Coordinate[ 2 ]]))

def Transform_Traffic_Sign_Coordinate_to_Pixel_Coordinate_Coordinate(  Traffic_Sign_Coordinate_Vehicle_Coordinate , Camera_Vehicle_Coordinate_Coordinate = np.array( [ 3 , 0 , 1.5 ] ) ) :

    
    if Traffic_Sign_Coordinate_Vehicle_Coordinate is None :
        
        #print( "There is No Traffic Sign Detected Detected by AV " )
        
        return 
    
    else :
        
        Traffic_Sign_Coordinate_to_Camera_Vehicle_Coordinate = Traffic_Sign_Coordinate_Vehicle_Coordinate - Camera_Vehicle_Coordinate_Coordinate

        Length_of_Traffic_Sign_in_Camera_Camera = 2*( Traffic_Sign_Coordinate_to_Camera_Vehicle_Coordinate[ 0 ]*math.atan( math.radians( Degree_of_Fov_Camera_Camera / 2 )))

        Traffic_Sign_Length_per_Pixel_image_Image = Length_of_Traffic_Sign_in_Camera_Camera/Camera_Length_Width_Length_Width

        Traffic_Sign_Position_Camera_Pixel_Camera = [ 0 , 0 ]

        Traffic_Sign_Position_Camera_Pixel_Camera[ 0 ] = Camera_Length_Width_Length_Width/2 +  Traffic_Sign_Coordinate_to_Camera_Vehicle_Coordinate[ 1 ]/ Traffic_Sign_Length_per_Pixel_image_Image

        Traffic_Sign_Position_Camera_Pixel_Camera[ 1 ] = Camera_Width_Pixel_Width_Pixel/2 - Traffic_Sign_Coordinate_to_Camera_Vehicle_Coordinate[ 2 ]/ Traffic_Sign_Length_per_Pixel_image_Image

        return( [[ Traffic_Sign_Position_Camera_Pixel_Camera[ 0 ] - ( Length_of_Traffic_Sign_Traffic_Sign / 2)/Traffic_Sign_Length_per_Pixel_image_Image , Traffic_Sign_Position_Camera_Pixel_Camera[ 1 ] - ( Length_of_Traffic_Sign_Traffic_Sign  / 2) / Traffic_Sign_Length_per_Pixel_image_Image  ],
                [ Traffic_Sign_Position_Camera_Pixel_Camera[ 0 ] + ( Length_of_Traffic_Sign_Traffic_Sign / 2)/Traffic_Sign_Length_per_Pixel_image_Image , Traffic_Sign_Position_Camera_Pixel_Camera[ 1 ] + ( Length_of_Traffic_Sign_Traffic_Sign / 2 )/ Traffic_Sign_Length_per_Pixel_image_Image ]])



class Autonomous_Vehicle_Position_And_Traffic() :


    def pose_callback(self, data):
        self.Vehicle_Coordinate[ 0 ] = data.pose.position.x
        self.Vehicle_Coordinate[ 1 ] = data.pose.position.y
        self.Vehicle_Coordinate[ 2 ] = data.pose.position.z

        self.Vehicle_Orientation[ 0 ] = data.pose.orientation.x
        self.Vehicle_Orientation[ 1 ] = data.pose.orientation.y
        self.Vehicle_Orientation[ 2 ] = data.pose.orientation.z

        return
        #rot_w = data.pose.orientation.w

    def tsign_callback(self, data):

        # World -> Ego -> Camera -> Image

        try :
            #print(data.signs[0].position)

            self.Traffic_Coordinate = np.array( list( data.signs[ 0 ].position) )

            print( self.Traffic_Coordinate )

            print( "Bounding Box is Bounding Box is " + str( Transform_Traffic_Sign_Coordinate_to_Pixel_Coordinate_Coordinate( Transform_Sign_Coordinate_to_Vehicle_Coordinate( self.Vehicle_Coordinate , self.Vehicle_Orientation , self.Traffic_Coordinate ))) )

        except :

            print( "No Traffic Sign Position Detected Detected by AV...")

        #    Traffic_Sign_Vehicle_Coordinates_Coordinates = Transform_Sign_Coordinate_to_Vehicle_Coordinate( np.array( list( )))

    def __init__( self ) :

        self.Vehicle_Coordinate = np.array( [ 0 , 0 , 0 ])

        self.Vehicle_Orientation = np.array( [ 0 , 0 , 0 ])

        self.Traffic_Coordinate = np.array( [ 0 , 0 , 0 ])
        
        rospy.init_node("traffic_sign_detector_node")

        #pub = rospy.Publisher('chatter', String, queue_size=10)
    
        rospy.Subscriber("/Pose_Out", PoseStamped, self.pose_callback)
        rospy.Subscriber("/Tsign_Out", TrafficSignArray, self.tsign_callback)

        #rate = rospy.Rate(1) # 10hz

        """
        while not rospy.is_shutdown():
            #hello_str = "hello world %s" % rospy.get_time()

            hello_str = "Bounding Box is Bounding Box is " + str( Transform_Traffic_Sign_Coordinate_to_Pixel_Coordinate_Coordinate( Transform_Sign_Coordinate_to_Vehicle_Coordinate( self.Vehicle_Coordinate , self.Vehicle_Orientation , self.Traffic_Coordinate )))
            #rospy.loginfo(hello_str)
            pub.publish(hello_str)
            rate.sleep()
        """


        rospy.spin()




if __name__ == '__main__':

    print("tsdn initialized!")

    example = Autonomous_Vehicle_Position_And_Traffic()
    
    #print("tsdn initialized!")
    #listener()
