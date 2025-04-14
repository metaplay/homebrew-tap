# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Metaplay < Formula
  desc "CLI tool to manage the Metaplay SDK in game projects, make cloud deployments, and more."
  homepage "https://www.metaplay.io/"
  version "1.1.4"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/metaplay/cli/releases/download/1.1.4/MetaplayCLI_Darwin_x86_64.tar.gz"
      sha256 "50c43f4492d40f8bac7143bdbcd4318a3e427b920b8c9ed124684b1c16bd87dd"

      def install
        bin.install "metaplay"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/metaplay/cli/releases/download/1.1.4/MetaplayCLI_Darwin_arm64.tar.gz"
      sha256 "2c5c87c12103a4eab17996753b0ee12aee6c5cfe92b1caaf6ce1d06d177d1c3d"

      def install
        bin.install "metaplay"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/metaplay/cli/releases/download/1.1.4/MetaplayCLI_Linux_x86_64.tar.gz"
        sha256 "8d6c63f1b40d44231db37d308b5f4139700c9353f2ef2ed6b760d13e7deab459"

        def install
          bin.install "metaplay"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/metaplay/cli/releases/download/1.1.4/MetaplayCLI_Linux_arm64.tar.gz"
        sha256 "649758a07d0873760f5a6f9764e8f481c5c983ecb3742146fd633b660e2293c7"

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
