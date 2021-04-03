# Autogenerated wrapper script for CImGui_jll for aarch64-linux-musl
export compile_commands, libcimgui, libimgui

JLLWrappers.@generate_wrapper_header("CImGui")
JLLWrappers.@declare_file_product(compile_commands)
JLLWrappers.@declare_library_product(libcimgui, "libcimgui.so")
JLLWrappers.@declare_library_product(libimgui, "libimgui-cpp.so")
function __init__()
    JLLWrappers.@generate_init_header()
    JLLWrappers.@init_file_product(
        compile_commands,
        "share/compile_commands.json",
    )

    JLLWrappers.@init_library_product(
        libcimgui,
        "lib/libcimgui.so",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_library_product(
        libimgui,
        "lib/libimgui-cpp.so",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()
