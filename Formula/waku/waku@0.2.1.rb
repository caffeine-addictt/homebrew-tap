# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Waku < Formula
  desc "A simple template repository generator. Lets make starting new proejcts feel like a breeze again!"
  homepage "https://github.com/caffeine-addictt/waku"
  version "0.2.1"
  license "AGPL-3.0"

  on_macos do
    on_intel do
      url "https://github.com/caffeine-addictt/waku/releases/download/v0.2.1/waku_0.2.1_darwin_amd64.tar.gz"
      sha256 "f41a63b63ec2ad574ae66e1a598934ebdbc4adb4d233669467e47d84937f81bd"

      def install
        bin.install "waku"
      end
    end
    on_arm do
      url "https://github.com/caffeine-addictt/waku/releases/download/v0.2.1/waku_0.2.1_darwin_arm64.tar.gz"
      sha256 "8d11d5fcecaf5d4e874edba1890d94668c9f50dfb14c5afc4757a1618e2777f8"

      def install
        bin.install "waku"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/caffeine-addictt/waku/releases/download/v0.2.1/waku_0.2.1_linux_amd64.tar.gz"
        sha256 "292c540336cfa8f4cffdf9e66b7ebe2cb9249c6ecb230fa42196e415c8539816"

        def install
          bin.install "waku"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/caffeine-addictt/waku/releases/download/v0.2.1/waku_0.2.1_linux_arm64.tar.gz"
        sha256 "410bd19667f7fb28e16d2777db3c5316405c9eb984828436eeeef8942d42e79f"

        def install
          bin.install "waku"
        end
      end
    end
  end
end