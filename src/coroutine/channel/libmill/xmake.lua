-- add requires
add_requires("libmill", {optional = true})

-- add target
target("coroutine_channel_libmill")

    -- set kind
    set_kind("binary")

    -- add files
    add_files("*.c")

    -- add package
    add_packages("libmill", "tbox", "base")

    -- enable to build this target?
    before_build(function (target)
        target:set("enabled", has_config("libmill") and true or false)
    end)
