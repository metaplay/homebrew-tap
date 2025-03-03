# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Metaplay < Formula
  desc "CLI tool to manage the Metaplay SDK in game projects, make cloud deployments, and more."
  homepage "https://www.metaplay.io/"
  version "0.8.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/metaplay/cli/releases/download/0.8.1/MetaplayCLI_Darwin_x86_64.tar.gz"
      sha256 "270bf992f3bcf6b9e9918cd9b5f2e352424261ee45602835faf987d21e9e9c81"

      def install
        bin.install "metaplay"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/metaplay/cli/releases/download/0.8.1/MetaplayCLI_Darwin_arm64.tar.gz"
      sha256 "ac43f99b4d5a50e9766fde79b2a6e7b5475d42be267fcaca2b732b02a82e128b"

      def install
        bin.install "metaplay"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/metaplay/cli/releases/download/0.8.1/MetaplayCLI_Linux_x86_64.tar.gz"
        sha256 "f67551095c5dc6886bb355bf20a24116d19fbf7d447b58a29f664985baf8e77a"

        def install
          bin.install "metaplay"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/metaplay/cli/releases/download/0.8.1/MetaplayCLI_Linux_arm64.tar.gz"
        sha256 "a36c3cb99769a501145e713341c6af0072cc19ea36f2452915b4b954d6ce2144"

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
