package("blook")
    set_description("A modern C++ library for hacking.")
    set_license("GPL-3.0")

    add_urls("https://github.com/std-microblock/blook.git")

    add_versions("2025.03.23", "aab6595fb505b4d11235e7fbceb4d572e95217d6")

    add_configs("shared", {description = "Build shared library.", default = false, type = "boolean", readonly = true})

    if is_plat("windows") then
        add_syslinks("advapi32")
    end

    add_deps("zasm edd30ff31d5a1d5f68002a61dca0ebf6e3c10ed0")

    on_install("windows", function (package)
        import("package.tools.xmake").install(package, {}, {target = "blook"})
    end)
