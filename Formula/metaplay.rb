# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Metaplay < Formula
  desc "CLI tool to manage the Metaplay SDK in game projects, make cloud deployments, and more."
  homepage "https://www.metaplay.io/"
  version "0.13.17"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/metaplay/cli/releases/download/0.13.17/MetaplayCLI_Darwin_x86_64.tar.gz"
      sha256 "1fef966274d5b5c0a3dd38fa21af26549a5d9536777a60c409acd88beea12b4d"

      def install
        bin.install "metaplay"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/metaplay/cli/releases/download/0.13.17/MetaplayCLI_Darwin_arm64.tar.gz"
      sha256 "96f717bedb35bdd111bbddcd7cfe9083468e7da596f8a8d212d776f5a28ba83c"

      def install
        bin.install "metaplay"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/metaplay/cli/releases/download/0.13.17/MetaplayCLI_Linux_x86_64.tar.gz"
        sha256 "28051cd306c4f7229d1981ec478302314cbaacbaf12d145c275f91d4bfee414c"

        def install
          bin.install "metaplay"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/metaplay/cli/releases/download/0.13.17/MetaplayCLI_Linux_arm64.tar.gz"
        sha256 "3178d3856ebad261590018ef07b0ae313a997b695d11a816899d5ede602572b6"

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
