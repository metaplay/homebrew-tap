# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Metaplay < Formula
  desc "CLI tool to manage the Metaplay SDK in game projects, make cloud deployments, and more."
  homepage "https://www.metaplay.io/"
  version "0.8.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/metaplay/cli/releases/download/0.8.2/MetaplayCLI_Darwin_x86_64.tar.gz"
      sha256 "8f6ec2633a724d3b3d08fc8528a06e9b6c40898b946b221918f5260e644052de"

      def install
        bin.install "metaplay"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/metaplay/cli/releases/download/0.8.2/MetaplayCLI_Darwin_arm64.tar.gz"
      sha256 "53b12b0b81c2980ed4b89d5f9d40a44067c0b70f0dd3e0ebb6f78b435979a31a"

      def install
        bin.install "metaplay"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/metaplay/cli/releases/download/0.8.2/MetaplayCLI_Linux_x86_64.tar.gz"
        sha256 "313b2028f0490601896cb22303c3b196b518f4375ff58745a46326153398c101"

        def install
          bin.install "metaplay"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/metaplay/cli/releases/download/0.8.2/MetaplayCLI_Linux_arm64.tar.gz"
        sha256 "e096ba4b75188b9700c29f919d11206e9c23fb16cf255b9bb127f91eb5c8ad24"

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
