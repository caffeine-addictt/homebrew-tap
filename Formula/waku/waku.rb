# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Waku < Formula
  desc "A simple template repository generator. Lets make starting new proejcts feel like a breeze again!"
  homepage "https://github.com/caffeine-addictt/waku"
  version "0.2.2"
  license "AGPL-3.0"

  on_macos do
    on_intel do
      url "https://github.com/caffeine-addictt/waku/releases/download/v0.2.2/waku_0.2.2_darwin_amd64.tar.gz"
      sha256 "3752c287003787efb79cc3d86ad89587884d28ef84665584893f862470e92070"

      def install
        bin.install "waku"
      end
    end
    on_arm do
      url "https://github.com/caffeine-addictt/waku/releases/download/v0.2.2/waku_0.2.2_darwin_arm64.tar.gz"
      sha256 "76a1b66ffb09c03da5c5b71cc50b98de45955120539604b08b9b8a4105154c14"

      def install
        bin.install "waku"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/caffeine-addictt/waku/releases/download/v0.2.2/waku_0.2.2_linux_amd64.tar.gz"
        sha256 "3cbea8a2f22b1dedfc70b38b68f18543dba6cb1165262937aae4b78b0f88dec2"

        def install
          bin.install "waku"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/caffeine-addictt/waku/releases/download/v0.2.2/waku_0.2.2_linux_arm64.tar.gz"
        sha256 "f20322dc6d643f56a1a5f28fe469ae773c3cf17ca97dcea8035f30e6ecaf35be"

        def install
          bin.install "waku"
        end
      end
    end
  end
end
