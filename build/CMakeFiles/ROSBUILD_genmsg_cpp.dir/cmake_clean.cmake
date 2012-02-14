FILE(REMOVE_RECURSE
  "../src/lowrabot/msg"
  "../msg_gen"
  "../msg_gen"
  "CMakeFiles/ROSBUILD_genmsg_cpp"
  "../msg_gen/cpp/include/lowrabot/Velocity.h"
  "../msg_gen/cpp/include/lowrabot/Pose.h"
  "../msg_gen/cpp/include/lowrabot/Myardu.h"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/ROSBUILD_genmsg_cpp.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
