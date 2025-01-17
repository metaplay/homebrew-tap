# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Metaplay < Formula
  desc "CLI tool to manage the Metaplay SDK in game projects, make cloud deployments, and more."
  homepage "https://www.metaplay.io/"
  version "0.0.8"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/metaplay/cli/releases/download/0.0.8/MetaplayCLI_Darwin_x86_64.tar.gz"
      sha256 "812a4069db96ff547574a16549d2a043c861e2d428121aeee1f377abecb3fbad"

      def install
        bin.install "metaplay"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/metaplay/cli/releases/download/0.0.8/MetaplayCLI_Darwin_arm64.tar.gz"
      sha256 "4e0b46696187ff0b7f668cc52171d477ee2b05a29ac42ff787730f2e8b36c7b5"

      def install
        bin.install "metaplay"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/metaplay/cli/releases/download/0.0.8/MetaplayCLI_Linux_x86_64.tar.gz"
        sha256 "dd9e2a7ca8ecccf493c69c4b3ed2dde385ec80a21997db8c665652ef1fd13529"

        def install
          bin.install "metaplay"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/metaplay/cli/releases/download/0.0.8/MetaplayCLI_Linux_arm64.tar.gz"
        sha256 "e1cb4f07842416e2658ca2f2154ab39a6eac5726cb2ec087e7ae0fe9d07db3ad"

        def install
          bin.install "metaplay"
        end
      end
    end
  end

  test do
    system "#{bin}/metaplay --version"
  end
end
