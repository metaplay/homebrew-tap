# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Metaplay < Formula
  desc "CLI tool to manage the Metaplay SDK in game projects, make cloud deployments, and more."
  homepage "https://www.metaplay.io/"
  version "1.0.3"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/metaplay/cli/releases/download/1.0.3/MetaplayCLI_Darwin_x86_64.tar.gz"
      sha256 "1985e841ba8084e0887e21b0d7b5867ac353fada41bb1ced591bf11442e2410f"

      def install
        bin.install "metaplay"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/metaplay/cli/releases/download/1.0.3/MetaplayCLI_Darwin_arm64.tar.gz"
      sha256 "5723c86a34caea13e32fe83e5ac6a1cb7684a652122f0b8749ac9036bc391b1f"

      def install
        bin.install "metaplay"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/metaplay/cli/releases/download/1.0.3/MetaplayCLI_Linux_x86_64.tar.gz"
        sha256 "24e2c1a6497ff75be5913a997db12552c2cc393ad748815a7fda4ce5ffac8148"

        def install
          bin.install "metaplay"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/metaplay/cli/releases/download/1.0.3/MetaplayCLI_Linux_arm64.tar.gz"
        sha256 "59ec456494134699a2c4d4425037febf4efd63ddffe3e49704e4e9067e990d0d"

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
