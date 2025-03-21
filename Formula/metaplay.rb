# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Metaplay < Formula
  desc "CLI tool to manage the Metaplay SDK in game projects, make cloud deployments, and more."
  homepage "https://www.metaplay.io/"
  version "0.13.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/metaplay/cli/releases/download/0.13.1/MetaplayCLI_Darwin_x86_64.tar.gz"
      sha256 "627ecd03795912892a4a2b4de99c67921e134023851830a1826f361089122451"

      def install
        bin.install "metaplay"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/metaplay/cli/releases/download/0.13.1/MetaplayCLI_Darwin_arm64.tar.gz"
      sha256 "32b40a47e392c1566cb692f02300fe7fdd948d35c528c2948a9eca90d47bf06e"

      def install
        bin.install "metaplay"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/metaplay/cli/releases/download/0.13.1/MetaplayCLI_Linux_x86_64.tar.gz"
        sha256 "b103b22ecdce15f2b8a9e251765131b745bb6e7a12cb1cc0f087e29d1e52f389"

        def install
          bin.install "metaplay"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/metaplay/cli/releases/download/0.13.1/MetaplayCLI_Linux_arm64.tar.gz"
        sha256 "40db8a1fc64fb4d23f972eb22068c06cfa2384876837f44771bc5fb6f1d28a59"

        def install
          bin.install "metaplay"
        end
      end
    end
  end

  test do
    system "#{bin}/metaplay version"
  end
end
