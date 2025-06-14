# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Metaplay < Formula
  desc "CLI tool to manage the Metaplay SDK in game projects, make cloud deployments, and more."
  homepage "https://www.metaplay.io/"
  version "1.4.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/metaplay/cli/releases/download/1.4.0/MetaplayCLI_Darwin_x86_64.tar.gz"
      sha256 "a03c82910d25bb1cdc6b4306d8cba8a01ac95c51cf06dd995d62865ce4162012"

      def install
        bin.install "metaplay"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/metaplay/cli/releases/download/1.4.0/MetaplayCLI_Darwin_arm64.tar.gz"
      sha256 "c6e5af590acbd91a5cad7b5691a612423e02d8d682cfee224482d15a9feaea8f"

      def install
        bin.install "metaplay"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/metaplay/cli/releases/download/1.4.0/MetaplayCLI_Linux_x86_64.tar.gz"
      sha256 "25e2a1a48ddd8527cf20ceac73226f01f7936d32818b33a3ab79a4c0c6b3e09c"
      def install
        bin.install "metaplay"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/metaplay/cli/releases/download/1.4.0/MetaplayCLI_Linux_arm64.tar.gz"
      sha256 "9222089d3e5ed9b27653991405b1baf78b8542130caa2ac08c8ddd09950f3a43"
      def install
        bin.install "metaplay"
      end
    end
  end

  test do
    system "#{bin}/metaplay version"
  end
end
