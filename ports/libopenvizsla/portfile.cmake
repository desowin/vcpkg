include(vcpkg_common_functions)

vcpkg_find_acquire_program(GPERF)
get_filename_component(GPERF_EXE_PATH ${GPERF} DIRECTORY)
set(ENV{PATH} "$ENV{PATH};${GPERF_EXE_PATH}")

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO matwey/libopenvizsla
    REF eeea22272cba5eb3cfbf23fb8b39d9cfa81a25ab
    SHA512 ad8194dfae1347261bd029d233fb7ae396e553b05f856abc92ddb05a75d982d27c190ccc3ade2db3288baea002ee87877e401cc1b88f71731b2a7f89a9480749
)

vcpkg_configure_cmake(
    SOURCE_PATH ${SOURCE_PATH}
    PREFER_NINJA
)

vcpkg_install_cmake()

vcpkg_copy_pdbs()
