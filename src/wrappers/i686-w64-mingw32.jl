# Autogenerated wrapper script for CImGui_jll for i686-w64-mingw32
export compile_commands, libcimgui, libimgui

JLLWrappers.@generate_wrapper_header("CImGui")
JLLWrappers.@declare_file_product(compile_commands)
JLLWrappers.@declare_library_product(libcimgui, "libcimgui.dll")
JLLWrappers.@declare_library_product(libimgui, "libimgui-cpp.dll")
function __init__()
    JLLWrappers.@generate_init_header()
    JLLWrappers.@init_file_product(
        compile_commands,
        "share\\compile_commands.json",
    )

    JLLWrappers.@init_library_product(
        libcimgui,
        "bin\\libcimgui.dll",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_library_product(
        libimgui,
        "bin\\libimgui-cpp.dll",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()
