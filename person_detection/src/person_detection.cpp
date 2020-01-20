#include <cvm_msgs/BoundingBox.h>
#include <cvm_msgs/BoundingBoxes.h>
#include <ros/ros.h>
#include <std_msgs/Bool.h>

bool person = false;

bool last_check = false;

std_msgs::Bool person_msg;

void callback(cvm_msgs::BoundingBoxes msg)
{
  person = false;

  for (size_t i = 0; i < msg.boundingBoxes.size(); i++)
  {
    cvm_msgs::BoundingBox b = msg.boundingBoxes[i];
    if (b.Class == "person")
    {
      person = true;
    }
  }
}

int main(int argc, char *argv[])
{
  // Initialize ROS
  ros::init(argc, argv, "PersonDetection");
  //
  ros::NodeHandle n;
  //
  ros::Subscriber sub = n.subscribe<cvm_msgs::BoundingBoxes>("viper/position_estimator/bounding_boxes", 1, callback);
  //
  ros::Publisher pub_person = n.advertise<std_msgs::Bool>("person_detection", 100);
  ros::Rate loop_rate(2);

  while (ros::ok())
  {
    if (last_check != person && person == true)
    {
      ROS_INFO("PERSON");
      last_check = person;
    }
    else if (last_check != person && person == false)
    {
      ROS_INFO("NO PERSON");
      last_check = person;
    }
    person_msg.data = person;

    pub_person.publish(person_msg);
    loop_rate.sleep();
    ros::spinOnce();
  }

  return 0;
}
