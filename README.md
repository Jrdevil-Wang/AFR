# AFR

An Efficient Buffering Algorithm for Cloud Robotic Systems @IROS 2022

# Description

This is an example that AFR algorithm works along with ROS.
In order to do that, we have to modify underlining ROS code. To be specific:

- <strong>/ros_comm_ws</strong> is the modified [ros_comm](https://github.com/ros/ros_comm) code, based on the Lunar version.
Main changes are around [here](https://github.com/Jrdevil-Wang/AFR/blob/ac6509cd9c1ede6ecf1648582bc24244916f971e/ros_comm_ws/src/ros_comm/clients/roscpp/include/ros/transport_subscriber_link.h#L73), [here](
https://github.com/Jrdevil-Wang/AFR/blob/b937ef1680cc7293931df457964b35b6030760b6/ros_comm_ws/src/ros_comm/clients/roscpp/src/libros/transport_subscriber_link.cpp#L47) and [here](https://github.com/Jrdevil-Wang/AFR/blob/b937ef1680cc7293931df457964b35b6030760b6/ros_comm_ws/src/ros_comm/clients/roscpp/src/libros/transport_subscriber_link.cpp#L182).
We add some private members to the *TransportSubscriberLink* class, and these members are used within the modified *::enqueueMessage* method.
These changes can be easily transplant to other versions.

# Usage

Just run <strong>build.sh</strong>. Note that this process will update your ROS library (libroscpp.so).
Re-compile your ros application, and enjoy!

# Citation

The full paper can be accessed with [arXiv](https://arxiv.org/abs/1909.03218).

If you are interested, please cite our IROS 2022 paper:

```
@inproceedings{iros/WangWZD22,
  author    = {Yu{-}Ping Wang and
               Hao{-}Ning Wang and
               Zi{-}Xin Zou and
               Dinesh Manocha},
  title     = {AFR: {A}n Efficient Buffering Algorithm for Cloud Robotic Systems},
  booktitle = {{IEEE/RSJ} International Conference on Intelligent Robots and Systems,
               {IROS} 2022, Kyoto, Japan, Oct. 23 - Oct. 27, 2022},
  publisher = {{IEEE}},
  year      = {2022}
}
```
