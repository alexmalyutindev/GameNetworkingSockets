# set(CPACK_GENERATOR "Bundle")
# set(CPACK_BUNDLE_NAME "libGameNetworkingSockets")
# set(CPACK_BUNDLE_PLIST "${CMAKE_CURRENT_SOURCE_DIR}/resources/Info.plist")

# project(libGameNetworkingSockets)
# add_executable(libGameNetworkingSockets MACOSX_BUNDLE GameNetworkingSockets)
# set_target_properties(libGameNetworkingSockets PROPERTIES 
# 	MACOSX_BUNDLE_INFO_PLIST ${CMAKE_CURRENT_SOURCE_DIR}/Info.plist
# )

add_library(src MACOSX_BUNDLE)
set_target_properties(GameNetworkingSockets PROPERTIES
    MACOSX_BUNDLE_BUNDLE_NAME "libGameNetworkingSockets"
    MACOSX_BUNDLE_BUNDLE_VERSION "1.0.0"
    MACOSX_BUNDLE_GUI_IDENTIFIER "games.lowkick.libGameNetworkingSockets"
    MACOSX_BUNDLE_INFO_PLIST "${CMAKE_CURRENT_SOURCE_DIR}/Info.plist.in"
)