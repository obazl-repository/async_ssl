load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")

all_content = """filegroup(name = "all", srcs = glob(["**"]), visibility = ["//visibility:public"])"""

##################
def fetch_repos():

    maybe(
        http_archive,
        name = "rules_foreign_cc",
        sha256 = "2a4d07cd64b0719b39a7c12218a3e507672b82a97b98c6a89d38565894cf7c51",
        strip_prefix = "rules_foreign_cc-0.9.0",
        url = "https://github.com/bazelbuild/rules_foreign_cc/archive/refs/tags/0.9.0.tar.gz",
    )

    maybe(
        http_archive,
        name = "openssl",
        build_file_content = all_content,
        sha256 = "b6b9cf0ff99531c37e9012023807a54f436750f7a3c756150982656efc6eed74",
        strip_prefix = "openssl-openssl-3.0.8",
        urls = ["https://github.com/openssl/openssl/archive/refs/tags/openssl-3.0.8.zip"]
    )
