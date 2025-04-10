# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Metaplay < Formula
  desc "CLI tool to manage the Metaplay SDK in game projects, make cloud deployments, and more."
  homepage "https://www.metaplay.io/"
  version "1.1.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/metaplay/cli/releases/download/1.1.0/MetaplayCLI_Darwin_x86_64.tar.gz"
      sha256 "edb6554c27fa93fd78328356cd89c72e08b9a2c8983e835311b26fa4c60c91af"

      def install
        bin.install "metaplay"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/metaplay/cli/releases/download/1.1.0/MetaplayCLI_Darwin_arm64.tar.gz"
      sha256 "19170b8add6354a7c38e6ecc4ec64ed3d147a344c93dec3e86e8937f9e4630fa"

      def install
        bin.install "metaplay"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/metaplay/cli/releases/download/1.1.0/MetaplayCLI_Linux_x86_64.tar.gz"
        sha256 "8ba31738b88ac20e661b6c5386166df257dfa83f39850a7372fe03036dd79aa2"

        def install
          bin.install "metaplay"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/metaplay/cli/releases/download/1.1.0/MetaplayCLI_Linux_arm64.tar.gz"
        sha256 "7845dd6fadd0b26f0273fe444a63a8a9ef1ed660847030d20e44b1bd9819f5ea"

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
