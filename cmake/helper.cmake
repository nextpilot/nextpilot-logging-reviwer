function(add_all_subdirectory dirpath)
    file(GLOB children ${dirpath}/*)
    foreach(child ${children})
        if(EXISTS ${child}/CMakeLists.txt)
            # message(STATUS "add_subdirectory ${child}")
            add_subdirectory(${child})
        endif()
    endforeach()
endfunction()
