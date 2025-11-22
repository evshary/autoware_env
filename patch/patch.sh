#!/bin/bash

sudo patch -p0 /opt/autoware/share/tier4_planning_launch/launch/scenario_planning/lane_driving/behavior_planning/behavior_planning.launch.xml \
               patch/thread_limit.patch
