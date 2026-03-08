workspace "Kinetic"
    architecture "x64"
    configurations { "DEBUG", "RELEASE", "DIST" }
    startproject "Project"
    location "Build"

    -- Workspace-wide build options for MSVC
    filter "system:windows"
        buildoptions { "/EHsc", "/Zc:preprocessor", "/Zc:__cplusplus" }

    -- Workspace-wide build options for GCC/Clang on Linux
    filter "system:linux"
        buildoptions { "-fPIC" }
        linkoptions { "-pthread" }

OutputDir = "%{cfg.system}-%{cfg.architecture}/%{cfg.buildcfg}"

IncludeDir = {}

group "Dependencies"

group ""

group "Engine"

group ""

group "Projects"
    
group ""