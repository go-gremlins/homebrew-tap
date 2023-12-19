# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Gremlins < Formula
  desc "A mutation testing tool for Go."
  homepage "https://gremlins.dev"
  version "0.5.0"
  license "Apache-2.0 License"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/go-gremlins/gremlins/releases/download/v0.5.0/gremlins_0.5.0_darwin_arm64.tar.gz"
      sha256 "c32981e13d550ec4e7cef34753885c07523b77c8750c10df8e19cf75da6f4960"

      def install
        bin.install "gremlins"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/go-gremlins/gremlins/releases/download/v0.5.0/gremlins_0.5.0_darwin_amd64.tar.gz"
      sha256 "27f56f8bb80dd545f7d1f290e4ca5900c00d109ab28aa0796d986db3b9024638"

      def install
        bin.install "gremlins"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/go-gremlins/gremlins/releases/download/v0.5.0/gremlins_0.5.0_linux_arm64.tar.gz"
      sha256 "d3e5eddc70284b9fff13ce964a1175e1e4c184d9a6c1837ddacba543928a76c0"

      def install
        bin.install "gremlins"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/go-gremlins/gremlins/releases/download/v0.5.0/gremlins_0.5.0_linux_amd64.tar.gz"
      sha256 "445dc193249d92c9ab9c019e7885f36b3fb40cc999a2ae74c45561326b63087f"

      def install
        bin.install "gremlins"
      end
    end
  end

  test do
    system "#{bin}/gremlins --version"
  end
end
