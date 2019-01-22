if ( PSP2 )
  include ( "${VITASDK}/share/vita.cmake" REQUIRED )

  set ( VITA_APP_NAME "OpenXcom" )
  set ( VITA_TITLEID  "XCOM00001")
  set ( VITA_VERSION  "01.01" )

  vita_create_self(${PROJECT_NAME}.self ${PROJECT_NAME})
  vita_create_vpk(${PROJECT_NAME}.vpk ${VITA_TITLEID} ${PROJECT_NAME}.self
      VERSION ${VITA_VERSION}
      NAME ${VITA_APP_NAME}
  )

endif ()
