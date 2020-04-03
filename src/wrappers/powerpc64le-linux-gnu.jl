# Autogenerated wrapper script for CImGui_jll for powerpc64le-linux-gnu
export libcimgui_helper, libcimgui, compile_commands

## Global variables
PATH = ""
LIBPATH = ""
LIBPATH_env = "LD_LIBRARY_PATH"

# Relative path to `libcimgui_helper`
const libcimgui_helper_splitpath = ["lib", "libcimgui_helper.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libcimgui_helper_path = ""

# libcimgui_helper-specific global declaration
# This will be filled out by __init__()
libcimgui_helper_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libcimgui_helper = "libcimgui_helper.so"


# Relative path to `libcimgui`
const libcimgui_splitpath = ["lib", "libcimgui.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libcimgui_path = ""

# libcimgui-specific global declaration
# This will be filled out by __init__()
libcimgui_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libcimgui = "libcimgui.so"


# Relative path to `compile_commands`
const compile_commands_splitpath = ["share", "compile_commands.json"]

# This will be filled out by __init__() for all products, as it must be done at runtime
compile_commands_path = ""

# compile_commands-specific global declaration
# This will be filled out by __init__()
compile_commands = ""


"""
Open all libraries
"""
function __init__()
    global artifact_dir = abspath(artifact"CImGui")

    # Initialize PATH and LIBPATH environment variable listings
    global PATH_list, LIBPATH_list
    # We first need to add to LIBPATH_list the libraries provided by Julia
    append!(LIBPATH_list, [joinpath(Sys.BINDIR, Base.LIBDIR, "julia"), joinpath(Sys.BINDIR, Base.LIBDIR)])
    global libcimgui_helper_path = normpath(joinpath(artifact_dir, libcimgui_helper_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libcimgui_helper_handle = dlopen(libcimgui_helper_path)
    push!(LIBPATH_list, dirname(libcimgui_helper_path))

    global libcimgui_path = normpath(joinpath(artifact_dir, libcimgui_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libcimgui_handle = dlopen(libcimgui_path)
    push!(LIBPATH_list, dirname(libcimgui_path))

    global compile_commands_path = normpath(joinpath(artifact_dir, compile_commands_splitpath...))

    global compile_commands = compile_commands_path
    # Filter out duplicate and empty entries in our PATH and LIBPATH entries
    filter!(!isempty, unique!(PATH_list))
    filter!(!isempty, unique!(LIBPATH_list))
    global PATH = join(PATH_list, ':')
    global LIBPATH = join(LIBPATH_list, ':')

    # Add each element of LIBPATH to our DL_LOAD_PATH (necessary on platforms
    # that don't honor our "already opened" trick)
    #for lp in LIBPATH_list
    #    push!(DL_LOAD_PATH, lp)
    #end
end  # __init__()

