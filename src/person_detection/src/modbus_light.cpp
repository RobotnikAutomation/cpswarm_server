#include <cpswarm_msgs/CurrentState.h>
#include <ros/ros.h>
#include "std_msgs/UInt16MultiArray.h"

const int yellow = 1;
const int green = 2;
const int red = 4;
const int light_off = 0;

int color = light_off;
int state = 4;

void callback(cpswarm_msgs::CurrentState state_msg)
{
  state = state_msg.state.data;
  ROS_INFO("%i", state);
}

int main(int argc, char *argv[])
{
  // Initialize ROS
  ros::init(argc, argv, "ModbusLight");
  //
  ros::NodeHandle n;
  //
  ros::Subscriber sub = n.subscribe<cpswarm_msgs::CurrentState>("current_state", 1, callback);
  //
  ros::Publisher pub_modbus = n.advertise<std_msgs::UInt16MultiArray>("modbus/regs_write", 1000);
  std_msgs::UInt16MultiArray color_msg;
  ros::Rate loop_rate(2);

  while (ros::ok())
  {
    /* code */
    switch (state)
    {
      case 0:
        /* init/home state : green blink */
        color_msg.data.clear();
        if (color == green)
        {
          color = light_off;
        }
        else
        {
          color = green;
        }
        color_msg.data.push_back(color);
        pub_modbus.publish(color_msg);
        loop_rate.sleep();
        break;
      case 1:
        /* run state */
        color_msg.data.clear();
        color = green;
        color_msg.data.push_back(color);
        pub_modbus.publish(color_msg);
        loop_rate.sleep();
        break;
      case 2:
        /* slow state */
        color_msg.data.clear();
        color = yellow;
        color_msg.data.push_back(color);
        pub_modbus.publish(color_msg);
        loop_rate.sleep();
        break;
      case 3:
        /* stop state */
        color_msg.data.clear();
        color = red;
        color_msg.data.push_back(color);
        pub_modbus.publish(color_msg);
        loop_rate.sleep();
        break;

      default:
        break;
    }
    ros::spinOnce();
  }

  /* turning off */
  color_msg.data.clear();
  color = light_off;
  color_msg.data.push_back(color);
  pub_modbus.publish(color_msg);
  loop_rate.sleep();
  ros::spinOnce();

  return 0;
}