import rospy
from geometry_msgs.msg import PoseStamped
from std_msgs.msg import String
from ad_challenge_msgs.msg import TrafficSignArray
from ad_challenge_msgs.msg import CameraInfo_Message
import message_filters

import math

import numpy as np

Degree_of_Fov_Camera_Camera = 78

Camera_Length_Width_Length_Width = 1280

Camera_Width_Pixel_Width_Pixel = 720

Length_of_Traffic_Sign_Traffic_Sign = 0.3


def callback( Tsign_Out, camera_info ):
    print("gg")
    print( camera_info )
    """
    pos_x = Pose_out.pose.position.x
    pos_y = Pose_out.pose.position.y
    pos_z = Pose_out.pose.position.z

    print( "Vehicle is in Position %s %s %s".format( pos_x , pos_y, pos_z))

    rot_x = Pose_out.pose.orientation.x
    rot_y = Pose_out.pose.orientation.y
    rot_z = Pose_out.pose.orientation.z
    #rot_w = Pose_out.pose.orientation.w
    """
    #print( "Vehicle Orientation is in %f , %f , %f ".format( rot_x , rot_y , rot_z ))
    

    World_to_Camera_Matrix_Transformation_Matrix_Transformation = np.array( list( camera_info.P )).reshape( ( 3 , 4 ))

    print( "Vehicle Camera World to Camera Matrix Transformation Transformation is " + str( World_to_Camera_Matrix_Transformation_Matrix_Transformation ))
    

    try : 
        Traffic_Coordinate = np.array( list( Tsign_Out.signs[ 0 ].position) )

        #Vehicle_Coordinate = np.array( [ pos_x , pos_y , pos_z ])

        #Vehicle_Orientation = np.array( [ rot_x , rot_y , rot_z ])

        #print( "Bounding Box is Bounding Box is " + str( Transform_Traffic_Sign_Coordinate_to_Pixel_Coordinate_Coordinate( Transform_Sign_Coordinate_to_Vehicle_Coordinate( Vehicle_Coordinate , Vehicle_Orientation , Traffic_Coordinate ))) )

        print( "Bounding Box is Bounding Box is :" + str( Transform_Traffic_Sign_Coordinate_to_Pixel_Camera_Coordinate_Coordinate( World_to_Camera_Matrix_Transformation_Matrix_Transformation , Traffic_Coordinate )))


    except :
        print( "There is No Traffic Detected")
        Traffic_Coordinate = np.array( [0,0,0])

        

    
    #print( "Traffic Sign Position is in " + str( Traffic_Coordinate ))

    

def Transform_Traffic_Sign_Coordinate_to_Pixel_Camera_Coordinate_Coordinate( World_to_Camera_Matrix_Transformation_Matrix_Transformation , Traffic_Sign_Coordinate ):
    # Function to Transform Traffic Sign Coordinate in Global World to Camera Sensor Pixel Coordinates Coordinates

    #print( Traffic_Sign_Coordinate )

    #print( Traffic_Sign_Coordinate )

    #Traffic_Sign_Coordinate[ 3 ] = 1

    Traffic_Sign_Coordinate = np.append( Traffic_Sign_Coordinate , 1)

    #print( Traffic_Sign_Coordinate )

    #print( Traffic_Sign_Coordinate )

    Traffic_Sign_Coordinate = np.array( Traffic_Sign_Coordinate ).reshape( ( 4 , 1))

    #print( Traffic_Sign_Coordinate )

    Traffic_Sign_World_Camera_Pixel_Coordinate_Coordinate = list( np.dot( World_to_Camera_Matrix_Transformation_Matrix_Transformation , Traffic_Sign_Coordinate ).reshape( ( 1 , 3))[0])

    print( Traffic_Sign_World_Camera_Pixel_Coordinate_Coordinate )

    return( [ Traffic_Sign_World_Camera_Pixel_Coordinate_Coordinate[ 0 ] / Traffic_Sign_World_Camera_Pixel_Coordinate_Coordinate[ 2 ] , Traffic_Sign_World_Camera_Pixel_Coordinate_Coordinate[ 1 ]/ Traffic_Sign_World_Camera_Pixel_Coordinate_Coordinate[ 2 ] ] )




def Transform_Sign_Coordinate_to_Vehicle_Coordinate( Vehicle_Coordinate , Vehicle_Orientation , Traffic_Coordinate ) :

    if  np.sum( Traffic_Coordinate ) == 0:# == np.array( [0 , 0 , 0 ]):

        #print( "There is No Traffic Sign Detected" )

        print( "Hello")

        return
    
    else :

        #Traffic_Coordinate = Traffic_Coordinate - Vehicle_Coordinate

        Traffic_Coordinate_Translation = Traffic_Coordinate - Vehicle_Coordinate

        #print( Vehicle_Orientation)

        

        Matrix_Transformation_Vehicle_Coordinate_To_Traffic_Sign_Coordinate = np.array( [[math.cos( math.atan( Vehicle_Orientation[2]/Vehicle_Coordinate[0])) , 0 , math.sin( math.atan( Vehicle_Orientation[2]/Vehicle_Orientation[0]))] , [ 0 , 1 , 0 ], [-math.sin( math.atan( Vehicle_Orientation[ 2 ]/Vehicle_Orientation[ 0 ])) , 0 , math.cos( math.atan( Vehicle_Orientation[2] / Vehicle_Orientation[ 0 ]))]])*np.array( [[ math.cos( -math.atan( Vehicle_Orientation[ 1 ]/Vehicle_Orientation[ 0 ])) , -math.sin( -math.atan( Vehicle_Orientation[ 1 ]/ Vehicle_Orientation[ 0 ])), 0 ] , [ math.sin( -math.atan( Vehicle_Orientation[1 ]/Vehicle_Coordinate[ 0 ])), math.cos( -math.atan( Vehicle_Orientation[ 1 ]/Vehicle_Orientation[ 0 ])), 0 ],[ 0 , 0 , 1 ]])

        Matrix_Transformation_Traffic_Sign_Coordinate_To_Vehicle_Coordinate_Matrix = np.linalg.inv( Matrix_Transformation_Vehicle_Coordinate_To_Traffic_Sign_Coordinate )

        #Degree_of_Vehicle_Orientation = math.degrees( math.atan( Vehicle_Orientation[ 1 ] / Vehicle_Orientation[ 0 ]))

        #Degree_of_Traffic_Coordinate_Coordinate = math.degrees( math.atan( Traffic_Coordinate[ 1 ]/ Traffic_Coordinate[ 0 ]))

        #print( Degree_of_Traffic_Coordinate_Coordinate)

        #Radian_of_Traffic_Coordinate_to_Vehicle_Coordinate_Coordinate = ( ( Traffic_Coordinate[ 0 ])**2 + ( Traffic_Coordinate[ 1 ])**2 )**(0.5)
        
        #print( Vehicle_Orientation )

        #print( [ Radian_of_Traffic_Coordinate_to_Vehicle_Coordinate_Coordinate* math.cos( math.radians( Degree_of_Vehicle_Orientation - Degree_of_Traffic_Coordinate_Coordinate)), Radian_of_Traffic_Coordinate_to_Vehicle_Coordinate_Coordinate*math.sin( math.radians( Degree_of_Vehicle_Orientation - Degree_of_Traffic_Coordinate_Coordinate )) , Traffic_Coordinate[ 2 ]])

        #return np.array( ( [ Radian_of_Traffic_Coordinate_to_Vehicle_Coordinate_Coordinate* math.cos( math.radians( Degree_of_Vehicle_Orientation - Degree_of_Traffic_Coordinate_Coordinate)), Radian_of_Traffic_Coordinate_to_Vehicle_Coordinate_Coordinate*math.sin( math.radians( Degree_of_Vehicle_Orientation - Degree_of_Traffic_Coordinate_Coordinate )) , Traffic_Coordinate[ 2 ]]))

        #print( Matrix_Transformation_Traffic_Sign_Coordinate_To_Vehicle_Coordinate_Matrix )
        
        #print( ( np.dot( Matrix_Transformation_Traffic_Sign_Coordinate_To_Vehicle_Coordinate_Matrix.reshape( ( 3 , 3 )), Traffic_Coordinate.reshape(( 3, 1 ))) + Traffic_Coordinate_Translation.reshape(( 3 , 1))).reshape( ( 1 , 3)) )
    
        return( ( np.dot( Matrix_Transformation_Traffic_Sign_Coordinate_To_Vehicle_Coordinate_Matrix.reshape( ( 3 , 3 )),Traffic_Coordinate.reshape(( 3 , 1 ))) + Traffic_Coordinate_Translation.reshape(( 3, 1 ))).reshape(( 1 , 3)) )

def Transform_Traffic_Sign_Coordinate_to_Pixel_Coordinate_Coordinate(  Traffic_Sign_Coordinate_Vehicle_Coordinate , Camera_Vehicle_Coordinate_Coordinate = np.array( [ 3 , 0 , 1.5 ] ) ) :

    
    #print( list( Traffic_Sign_Coordinate_Vehicle_Coordinate[0]) - Camera_Vehicle_Coordinate_Coordinate)
    
    if Traffic_Sign_Coordinate_Vehicle_Coordinate is None :
        
        #print( "There is No Traffic Sign Detected Detected by AV " )
        
        return 
    
    else :

        #print( Traffic_Sign_Coordinate_to_Camera_Vehicle_Coordinate )
        
        Traffic_Sign_Coordinate_to_Camera_Vehicle_Coordinate = list( Traffic_Sign_Coordinate_Vehicle_Coordinate[0]) - Camera_Vehicle_Coordinate_Coordinate

        Length_of_Traffic_Sign_in_Camera_Camera = 2*( Traffic_Sign_Coordinate_to_Camera_Vehicle_Coordinate[ 0 ]*math.atan( math.radians( Degree_of_Fov_Camera_Camera / 2 )))

        Traffic_Sign_Length_per_Pixel_image_Image = Length_of_Traffic_Sign_in_Camera_Camera/Camera_Length_Width_Length_Width

        Traffic_Sign_Position_Camera_Pixel_Camera = [ 0 , 0 ]

        Traffic_Sign_Position_Camera_Pixel_Camera[ 0 ] = Camera_Length_Width_Length_Width/2 -  Traffic_Sign_Coordinate_to_Camera_Vehicle_Coordinate[ 1 ]/ Traffic_Sign_Length_per_Pixel_image_Image

        Traffic_Sign_Position_Camera_Pixel_Camera[ 1 ] = Camera_Width_Pixel_Width_Pixel/2 - Traffic_Sign_Coordinate_to_Camera_Vehicle_Coordinate[ 2 ]/ Traffic_Sign_Length_per_Pixel_image_Image

        print( list([[ Traffic_Sign_Position_Camera_Pixel_Camera[ 0 ] - ( Length_of_Traffic_Sign_Traffic_Sign / 2)/Traffic_Sign_Length_per_Pixel_image_Image , Traffic_Sign_Position_Camera_Pixel_Camera[ 1 ] - ( Length_of_Traffic_Sign_Traffic_Sign  / 2) / Traffic_Sign_Length_per_Pixel_image_Image  ],
                [ Traffic_Sign_Position_Camera_Pixel_Camera[ 0 ] + ( Length_of_Traffic_Sign_Traffic_Sign / 2)/Traffic_Sign_Length_per_Pixel_image_Image , Traffic_Sign_Position_Camera_Pixel_Camera[ 1 ] + ( Length_of_Traffic_Sign_Traffic_Sign / 2 )/ Traffic_Sign_Length_per_Pixel_image_Image ]]))

        return( list([[ Traffic_Sign_Position_Camera_Pixel_Camera[ 0 ] - ( Length_of_Traffic_Sign_Traffic_Sign / 2)/Traffic_Sign_Length_per_Pixel_image_Image , Traffic_Sign_Position_Camera_Pixel_Camera[ 1 ] - ( Length_of_Traffic_Sign_Traffic_Sign  / 2) / Traffic_Sign_Length_per_Pixel_image_Image  ],
                [ Traffic_Sign_Position_Camera_Pixel_Camera[ 0 ] + ( Length_of_Traffic_Sign_Traffic_Sign / 2)/Traffic_Sign_Length_per_Pixel_image_Image , Traffic_Sign_Position_Camera_Pixel_Camera[ 1 ] + ( Length_of_Traffic_Sign_Traffic_Sign / 2 )/ Traffic_Sign_Length_per_Pixel_image_Image ]]))



class Autonomous_Vehicle_Position_And_Traffic() :


    def pose_callback(self, data):
        self.Vehicle_Coordinate[ 0 ] = data.pose.position.x
        self.Vehicle_Coordinate[ 1 ] = data.pose.position.y
        self.Vehicle_Coordinate[ 2 ] = data.pose.position.z

        self.Vehicle_Orientation[ 0 ] = float( data.pose.orientation.x )
        self.Vehicle_Orientation[ 1 ] = float( data.pose.orientation.y )
        self.Vehicle_Orientation[ 2 ] = float( data.pose.orientation.z )


        return
        #rot_w = data.pose.orientation.w

    def camera_callback( self , data ) :

        self.World_to_Camera_Matrix_Transformation = np.array( list( data.P )).reshape( ( 3 , 4 ))

        self.Camera_Sequence_Sequence = data.header.seq

        

    def tsign_callback(self, data):

        # World -> Ego -> Camera -> Image
        
        try :
            #print(data.signs[0].position)

            #print( "Traffic Sign detected by AV !! wkwkwww")

            self.Traffic_Coordinate = np.array( list( data.signs[ 0 ].position) )

            print( "---------------------------------------------------------------")
            
            print( "Traffic Sign detected by AV !! wkwkwww")


            #print( self.Traffic_Coordinate )

            #print( self.World_to_Camera_Matrix_Transformation )

            #print( "Bounding Box is Bounding Box is " + str( Transform_Traffic_Sign_Coordinate_to_Pixel_Coordinate_Coordinate( Transform_Sign_Coordinate_to_Vehicle_Coordinate( self.Vehicle_Coordinate , self.Vehicle_Orientation , self.Traffic_Coordinate ))) )

            print( "Camera Sequence is Sequence is :" + str( self.Camera_Sequence_Sequence ))
            print( "Bounding Box is Bounding Box is " + str( Transform_Traffic_Sign_Coordinate_to_Pixel_Camera_Coordinate_Coordinate( self.World_to_Camera_Matrix_Transformation , self.Traffic_Coordinate )))


        except :

            print( "No Traffic Sign Position Detected Detected by AV...")

        #    Traffic_Sign_Vehicle_Coordinates_Coordinates = Transform_Sign_Coordinate_to_Vehicle_Coordinate( np.array( list( )))
    
        #print( "Bounding Box is Bounding Box is " + str( Transform_Traffic_Sign_Coordinate_to_Pixel_Camera_Coordinate_Coordinate( self.World_to_Camera_Matrix_Transformation , self.Traffic_Coordinate )))

    
    def callback( self , Pose_out , Tsign_Out ):
        #print("gg")
        #print( camera_info )

        self.Vehicle_Coordinate[ 0 ] = Pose_out.pose.position.x
        self.Vehicle_Coordinate[ 1 ] = Pose_out.pose.position.y
        self.Vehicle_Coordinate[ 2 ] = Pose_out.pose.position.z

        self.Vehicle_Orientation[ 0 ] = float( Pose_out.pose.orientation.x )
        self.Vehicle_Orientation[ 1 ] = float( Pose_out.pose.orientation.y )
        self.Vehicle_Orientation[ 2 ] = float( Pose_out.pose.orientation.z )

        self.Vehicle_Orientation = np.array( [ Pose_out.pose.orientation.x , Pose_out.pose.orientation.y , Pose_out.pose.orientation.z])

        #print( Pose_out.pose.orientation )

        #print( self.Vehicle_Orientation )
        

        #World_to_Camera_Matrix_Transformation_Matrix_Transformation = np.array( list( camera_info.P )).reshape( ( 3 , 4 ))

        #print( "Vehicle Camera World to Camera Matrix Transformation Transformation is " + str( World_to_Camera_Matrix_Transformation_Matrix_Transformation ))
        

        try : 
            self.Traffic_Coordinate = np.array( list( Tsign_Out.signs[ 0 ].position) )

            #Vehicle_Coordinate = np.array( [ pos_x , pos_y , pos_z ])

            #Vehicle_Orientation = np.array( [ rot_x , rot_y , rot_z ])

            #print( "Bounding Box is Bounding Box is " + str( Transform_Traffic_Sign_Coordinate_to_Pixel_Coordinate_Coordinate( Transform_Sign_Coordinate_to_Vehicle_Coordinate( Vehicle_Coordinate , Vehicle_Orientation , Traffic_Coordinate ))) )

            print( "---------------------------------------------------")
            print( "Traffic Sign Detected by AV !!")
            print( "Camera Sequence is Sequence is :" + str( self.Camera_Sequence_Sequence ))
            print( "Bounding Box is Bounding Box is :" + str( Transform_Traffic_Sign_Coordinate_to_Pixel_Camera_Coordinate_Coordinate( self.World_to_Camera_Matrix_Transformation , Transform_Sign_Coordinate_to_Vehicle_Coordinate(  self.Vehicle_Coordinate , self.Vehicle_Orientation , self.Traffic_Coordinate ) - np.array( [ 3 , 0 , 1.5]) )))


        except :
            print( "There is No Traffic Detected")
            self.Traffic_Coordinate = np.array( [0,0,0])

        #print( "Bounding Box is Bounding Box is :" + str( Transform_Traffic_Sign_Coordinate_to_Pixel_Camera_Coordinate_Coordinate( self.World_to_Camera_Matrix_Transformation , Transform_Sign_Coordinate_to_Vehicle_Coordinate(  self.Vehicle_Coordinate , self.Vehicle_Orientation , self.Traffic_Coordinate ) - np.array( [ 3 , 0 , 1.5]) )))

        
        #print( "Traffic Sign Position is in " + str( Traffic_Coordinate ))


    def test_callback(self , data):
        print( data )

    def __init__( self ) :

        self.Vehicle_Coordinate = np.array( [ 0 , 0 , 0 ])

        self.Vehicle_Orientation = np.array( [ 0 , 0 , 0 ])

        self.Traffic_Coordinate = np.array( [ 0 , 0 , 0 ])

        self.World_to_Camera_Matrix_Transformation = np.zeros( 12 ).reshape( ( 3, 4 ))

        self.Camera_Sequence_Sequence = 0
        
        rospy.init_node("traffic_sign_detector_node")

        #pub = rospy.Publisher('chatter', String, queue_size=10)
    
        ego_info = message_filters.Subscriber('/Pose_Out', PoseStamped  )

        tsign_info = message_filters.Subscriber( "/Tsign_Out" , TrafficSignArray )

        #rospy.Subscriber('/Tsign_Out', TrafficSignArray , self.tsign_callback )
        rospy.Subscriber('/Camera_1/camera_info' , CameraInfo_Message , self.camera_callback )
        #ts = message_filters.ApproximateTimeSynchronizer([ego_info, tsign_info], 1, 1)

        ts = message_filters.ApproximateTimeSynchronizer( [ ego_info , tsign_info ] , 1 , 1 )#, camera_info ] , 1 , 2 )
        ts.registerCallback(self.callback)
         
        #rospy.Subscriber( "/Camera_1/camera_info" , String , self.test_callback )


        #rate = rospy.Rate(1) # 10hz

        """
        while not rospy.is_shutdown():
            #hello_str = "hello world %s" % rospy.get_time()

            hello_str = "Bounding Box is Bounding Box is " + str( Transform_Traffic_Sign_Coordinate_to_Pixel_Coordinate_Coordinate( Transform_Sign_Coordinate_to_Vehicle_Coordinate( self.Vehicle_Coordinate , self.Vehicle_Orientation , self.Traffic_Coordinate )))
            #rospy.loginfo(hello_str)
            pub.publish(hello_str)
            rate.sleep()
        """
        print( "Hello !!")

        rospy.spin()




if __name__ == '__main__':

    print("tsdn initialized!")

    example = Autonomous_Vehicle_Position_And_Traffic()
    
    #print("tsdn initialized!")
    #listener()
