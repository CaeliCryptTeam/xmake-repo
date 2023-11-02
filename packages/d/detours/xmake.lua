package("detours")
    set_description("The detours package")

    add_urls("https://github.com/CaeliCryptTeam/DetoursXMake.git")
    add_versions("v4.0.1", "d9a364a51c33e7fc3686f3f512906da6019ac6a9")

    on_install(function (package)
        local configs = {}
        if package:config("shared") then
            configs.kind = "shared"
        end
        import("package.tools.xmake").install(package, configs)
    end)
