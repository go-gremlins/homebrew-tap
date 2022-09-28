# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Gremlins < Formula
  desc "A mutation testing tool for Go."
  homepage "https://gremlins.dev"
  version "0.4.0"
  license "Apache-2.0 License"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/go-gremlins/gremlins/releases/download/v0.4.0/gremlins_0.4.0_darwin_amd64.tar.gz"
      sha256 "fad2b750793313d4f1b9b4437a80c71603f69c97f9d8fce6f8186471920a1761"

      def install
        bin.install "gremlins"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/go-gremlins/gremlins/releases/download/v0.4.0/gremlins_0.4.0_darwin_arm64.tar.gz"
      sha256 "a8041baf5cdc46046549f7e7b89e517e55e9409b79a1a19d7e0b37a8b62e284c"

      def install
        bin.install "gremlins"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/go-gremlins/gremlins/releases/download/v0.4.0/gremlins_0.4.0_linux_amd64.tar.gz"
      sha256 "bbdc7c387a011ecd9f1049955ebd1c4e9b44d96b3615710b380a327db5935233"

      def install
        bin.install "gremlins"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/go-gremlins/gremlins/releases/download/v0.4.0/gremlins_0.4.0_linux_arm64.tar.gz"
      sha256 "c19ca648f26ff96c790afd33947324c001664d79bcbd47e18c6011a9b8e43e7e"

      def install
        bin.install "gremlins"
      end
    end
  end

  test do
    system "#{bin}/gremlins --version"
  end
end
