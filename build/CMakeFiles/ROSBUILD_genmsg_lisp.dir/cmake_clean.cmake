FILE(REMOVE_RECURSE
  "../src/lowrabot/msg"
  "../msg_gen"
  "../msg_gen"
  "CMakeFiles/ROSBUILD_genmsg_lisp"
  "../msg_gen/lisp/Myardu.lisp"
  "../msg_gen/lisp/_package.lisp"
  "../msg_gen/lisp/_package_Myardu.lisp"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/ROSBUILD_genmsg_lisp.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
