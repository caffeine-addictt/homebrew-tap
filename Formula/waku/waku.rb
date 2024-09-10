# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Waku < Formula
  desc "A simple template repository generator. Lets make starting new proejcts feel like a breeze again!"
  homepage "https://github.com/caffeine-addictt/waku"
  version "0.2.0"
  license "AGPL-3.0"

  on_macos do
    on_intel do
      url "https://github.com/caffeine-addictt/waku/releases/download/v0.2.0/waku_0.2.0_darwin_amd64.tar.gz"
      sha256 "47a375b8d029d723280bb637374dca85cebec13e00f4fdb0a96b592ba95dbe44"

      def install
        bin.install "waku"
      end
    end
    on_arm do
      url "https://github.com/caffeine-addictt/waku/releases/download/v0.2.0/waku_0.2.0_darwin_arm64.tar.gz"
      sha256 "c6cd92ee0b8f2c7e458b36bcc87bc46eff4b5a1041e60cc2c17fb43ee4ef32de"

      def install
        bin.install "waku"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/caffeine-addictt/waku/releases/download/v0.2.0/waku_0.2.0_linux_amd64.tar.gz"
        sha256 "1095437ab05671dff0cf61524b662b1160e23fd2ad598485f18f6c69f0230113"

        def install
          bin.install "waku"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/caffeine-addictt/waku/releases/download/v0.2.0/waku_0.2.0_linux_arm64.tar.gz"
        sha256 "f8d952d6fc550ad38e8bc2e417f0532c8862370cc9a0ade365f296421e1ccaf1"

        def install
          bin.install "waku"
        end
      end
    end
  end
end
