# Autogenerated wrapper script for Ogg_jll for powerpc64le-linux-gnu
export libogg

## Global variables
PATH = ""
LIBPATH = ""
LIBPATH_env = "LD_LIBRARY_PATH"
LIBPATH_default = ""

# Relative path to `libogg`
const libogg_splitpath = ["lib", "libogg.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libogg_path = ""

# libogg-specific global declaration
# This will be filled out by __init__()
libogg_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libogg = "libogg.so.0"


"""
Open all libraries
"""
function __init__()
    global artifact_dir = abspath(artifact"Ogg")

    # Initialize PATH and LIBPATH environment variable listings
    global PATH_list, LIBPATH_list
    global libogg_path = normpath(joinpath(artifact_dir, libogg_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libogg_handle = dlopen(libogg_path)
    push!(LIBPATH_list, dirname(libogg_path))

    # Filter out duplicate and empty entries in our PATH and LIBPATH entries
    filter!(!isempty, unique!(PATH_list))
    filter!(!isempty, unique!(LIBPATH_list))
    global PATH = join(PATH_list, ':')
    global LIBPATH = join(vcat(LIBPATH_list, [joinpath(Sys.BINDIR, Base.LIBDIR, "julia"), joinpath(Sys.BINDIR, Base.LIBDIR)]), ':')

    
end  # __init__()

