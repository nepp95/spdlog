project "spdlog"
    kind "StaticLib"
    language "C++"
    cppdialect "C++20"
    staticruntime "Off"

    targetdir ("%{wks.location}/Bin/" .. OutputDir .. "/%{prj.name}")
    objdir ("%{wks.location}/Bin-Int/" .. OutputDir .. "/%{prj.name}")

    buildoptions {
        "/utf-8"
    }

    defines {
        "SPDLOG_COMPILED_LIB"
    }

    files {
        "src/spdlog.cpp",
        "src/stdout_sinks.cpp",
        "src/color_sinks.cpp",
        "src/file_sinks.cpp",
        "src/async.cpp",
        "src/cfg.cpp"
    }

    includedirs {
        "include"
    }

    filter "configurations:Debug"
		runtime "Debug"
		symbols "On"

	filter "configurations:Release"
		runtime "Release"
		optimize "On"

	filter "configurations:Dist"
		runtime "Release"
		optimize "On"
