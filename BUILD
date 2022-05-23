# link to statically built libopus
cc_import(
    name = "opus",
    hdrs = ["opus/build/include/opus/opus.h"],
    static_library = "opus/build/lib/libopus.a",
    alwayslink = 1
)

# C++ wrapper around the libopus C interface
cc_library(
    name = "opus_wrapper",
    srcs = ["opus_wrapper.cc"],
    hdrs = ["opus_wrapper.h"],
    visibility = ["//visibility:public"],
    copts = ["-Wextra"],
    deps = [
        "opus",
    ]
)

cc_test(
    name = "opus_wrapper_test",
    srcs = ["opus_wrapper_test.cc"],
    deps = [
        "@googletest//:gtest",
        "@googletest//:gtest_main",
        ":opus_wrapper",
    ],
)
