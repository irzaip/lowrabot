FILE(REMOVE_RECURSE
  "../src/rosserial_msgs/msg"
  "../src/rosserial_msgs/srv"
  "../msg_gen"
  "../srv_gen"
  "../msg_gen"
  "../srv_gen"
  "CMakeFiles/test-future"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/test-future.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
