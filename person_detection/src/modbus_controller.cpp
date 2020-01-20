#include <ros/ros.h>
#include <std_msgs/ByteMultiArray.h>
#include <std_msgs/Int8.h>

int green_button_bit = 0;
int yellow_button_bit = 1;
int red_button_bit = 2;
ros::Publisher pub_button;

void callback(std_msgs::ByteMultiArray coils_msg)
{
  /* coils_read message data: [ green_button, yellow_button, red_button, yellow_led, green_led, red_led] */
  std_msgs::Int8 button_msg;
  if (coils_msg.data[yellow_button_bit] == 1)
  {
    ROS_INFO("yellow");
    button_msg.data = 2;
    pub_button.publish(button_msg);
  }
  else if (coils_msg.data[green_button_bit] == 1)
  {
    ROS_INFO("green");
    button_msg.data = 1;
    pub_button.publish(button_msg);
  }
  else if (coils_msg.data[red_button_bit] == 1)
  {
    ROS_INFO("red");
    button_msg.data = 3;
    pub_button.publish(button_msg);
  }
}

int main(int argc, char *argv[])
{
  // Initialize ROS
  ros::init(argc, argv, "ModbusController");
  //
  ros::NodeHandle n;
  //
  ros::Subscriber sub = n.subscribe<std_msgs::ByteMultiArray>("modbus/coils_read", 1, callback);
  //
  pub_button = n.advertise<std_msgs::Int8>("controller_pressed", 1000);
  ros::Rate loop_rate(2);

  loop_rate.sleep();

  ros::spin();

  return 0;
}