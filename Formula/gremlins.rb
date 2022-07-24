# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Gremlins < Formula
  desc "A mutation testing tool for Go."
  homepage "https://github.com/k3rn31/gremlins"
  version "0.1.0"
  license "Apache 2.0 License"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/k3rn31/gremlins/releases/download/v0.1.0/gremlins_0.1.0_darwin_arm64.tar.gz"
      sha256 "123568550fbea26a395e232c49bc6aaec67c13ca13fd69103fa797252c0e19cc"

      def install
        bin.install "gremlins"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/k3rn31/gremlins/releases/download/v0.1.0/gremlins_0.1.0_darwin_amd64.tar.gz"
      sha256 "0d0ee6c8380f35575ad9ce9d0fca94fb9e65151bd95428d29d64d93ea2ffcc2e"

      def install
        bin.install "gremlins"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/k3rn31/gremlins/releases/download/v0.1.0/gremlins_0.1.0_linux_amd64.tar.gz"
      sha256 "d2a2006ae7d2cb591852b46327e8207b7645b0cd5f0ea8c5ab51de39917a90f1"

      def install
        bin.install "gremlins"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/k3rn31/gremlins/releases/download/v0.1.0/gremlins_0.1.0_linux_arm64.tar.gz"
      sha256 "4ba835ac6f5582cf11b87610d5df68b8f74b8e43b8c92ae3457e9514c64bb993"

      def install
        bin.install "gremlins"
      end
    end
  end

  test do
    system "#{bin}/gremlins --version"
  end
end
