#include <cpswarm_msgs/CurrentState.h>
#include <ros/ros.h>
#include <std_msgs/Bool.h>
#include <std_msgs/Int8.h>
#include <string>

// 0 init 1 run 2 slow 3 stop
int state = 0;
bool person = false;

void callback_person(std_msgs::Bool person_detected_msg)
{
  if (state == 1 || state == 2)
  {
    /* run or slow */
    if (person_detected_msg.data)
    {
      /* person */
      ROS_INFO("PERSON");
      person = true;
      state = 2;  // slow
    }
    else
    {
      /* no person */
      person = false;
      state = 1;
    }
  }
}

void callback_controller(std_msgs::Int8 controller_msg)
{
  // ROS_ERROR("BUTTON");
  switch (controller_msg.data)
  {
    case 1:
      /* green */
      if (state == 0)
      {
        /* home -> run */
        ROS_INFO("home -> run");
        state = 1;
      }
      break;
    case 2:
      /* yellow */
      if (state == 3)
      {
        /* stop -> init */
        ROS_INFO("stop -> home");
        state = 0;
      }
      break;
    case 3:
      /* red */
      if (state == 0)
      {
        /* home -> stop */
        ROS_INFO("home -> stop");
        state = 3;
      }
      else if (state == 1)
      {
        /* run -> stop */
        ROS_INFO("run -> stop");
        state = 3;
      }
      else if (state == 2)
      {
        /* slow -> stop */
        ROS_INFO("slow -> stop");
        state = 3;
      }
      break;
    default:
      break;
  }
}

int main(int argc, char *argv[])
{
  // Initialize ROS
  ros::init(argc, argv, "StateManager");
  //
  ros::NodeHandle n;
  //
  ros::Subscriber sub_person = n.subscribe<std_msgs::Bool>("person_detection", 1, callback_person);
  ros::Subscriber sub_controller = n.subscribe<std_msgs::Int8>("controller_pressed", 1, callback_controller);
  //
  ros::Publisher pub_state = n.advertise<cpswarm_msgs::CurrentState>("current_state", 100);
  ros::Rate loop_rate(0.5);
  cpswarm_msgs::CurrentState state_msg;
  state_msg.swarmio.name = "current_state";

  while (ros::ok())
  {
    state_msg.state.data = state;
    pub_state.publish(state_msg);
    loop_rate.sleep();
    ros::spinOnce();
  }

  return 0;
}
