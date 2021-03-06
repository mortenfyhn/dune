if(NOT DUNE_SYS_HAS_JPEG)
  file(GLOB DUNE_JPEG_FILES
    vendor/libraries/jpeg/*.c)

  set_source_files_properties(${DUNE_JPEG_FILES}
    PROPERTIES COMPILE_FLAGS "${DUNE_C_FLAGS}")

  list(APPEND DUNE_VENDOR_FILES ${DUNE_JPEG_FILES})

  set(DUNE_USING_JPEG 1 CACHE INTERNAL "JPEG library")
endif(NOT DUNE_SYS_HAS_JPEG)
