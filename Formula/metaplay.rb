# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Metaplay < Formula
  desc "CLI tool to manage the Metaplay SDK in game projects, make cloud deployments, and more."
  homepage "https://www.metaplay.io/"
  version "0.3.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/metaplay/cli/releases/download/0.3.0/MetaplayCLI_Darwin_x86_64.tar.gz"
      sha256 "a28bd4e7117f8d3c92523387cd1f68a3da6415bc56fb37b29bf1ca3002421044"

      def install
        bin.install "metaplay"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/metaplay/cli/releases/download/0.3.0/MetaplayCLI_Darwin_arm64.tar.gz"
      sha256 "394997e2007e279896a655179ea3e644776bd08ded12b7141697bd8fe1a746dc"

      def install
        bin.install "metaplay"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/metaplay/cli/releases/download/0.3.0/MetaplayCLI_Linux_x86_64.tar.gz"
        sha256 "f7d09c76dfa6346e8c9c3997621580c7fe5453e875e5c9c22031f02c1ab06de1"

        def install
          bin.install "metaplay"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/metaplay/cli/releases/download/0.3.0/MetaplayCLI_Linux_arm64.tar.gz"
        sha256 "d69bb9b5156e027c4f8534653e5c84ee67c56d97fef20493d8c51d1e3f2620e1"

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
