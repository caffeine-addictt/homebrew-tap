# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Waku < Formula
  desc "A simple template repository generator. Lets make starting new projects feel like a breeze again!"
  homepage "https://github.com/caffeine-addictt/waku"
  version "0.9.3"
  license "AGPL-3.0"

  depends_on "git"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/caffeine-addictt/waku/releases/download/v0.9.3/waku_Darwin_x86_64.tar.gz"
      sha256 "198f0cb26d1cfcd0f2d514f59f7664fd3930db71d76a733d3437361092ec752d"

      def install
        bin.install "waku"
        bash_completion.install "completions/waku.bash" => "waku"
        zsh_completion.install "completions/waku.zsh" => "_waku"
        fish_completion.install "completions/waku.fish"
        man1.install "manpages/waku.1.gz"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/caffeine-addictt/waku/releases/download/v0.9.3/waku_Darwin_arm64.tar.gz"
      sha256 "0085906861a0beb4d44ca84c4c33e578beae655c4fe79e3d0279d5f55f9a9f23"

      def install
        bin.install "waku"
        bash_completion.install "completions/waku.bash" => "waku"
        zsh_completion.install "completions/waku.zsh" => "_waku"
        fish_completion.install "completions/waku.fish"
        man1.install "manpages/waku.1.gz"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/caffeine-addictt/waku/releases/download/v0.9.3/waku_Linux_x86_64.tar.gz"
        sha256 "6bcd0352e78d1a5a2f18298b2a65dc4e91a6b00046658bee5383b2b3298969cd"

        def install
          bin.install "waku"
          bash_completion.install "completions/waku.bash" => "waku"
          zsh_completion.install "completions/waku.zsh" => "_waku"
          fish_completion.install "completions/waku.fish"
          man1.install "manpages/waku.1.gz"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/caffeine-addictt/waku/releases/download/v0.9.3/waku_Linux_arm64.tar.gz"
        sha256 "53bed0be01bf45050e4e1ff76360d1264cc3b1a27171baf796fc5d38cc3e7c1f"

        def install
          bin.install "waku"
          bash_completion.install "completions/waku.bash" => "waku"
          zsh_completion.install "completions/waku.zsh" => "_waku"
          fish_completion.install "completions/waku.fish"
          man1.install "manpages/waku.1.gz"
        end
      end
    end
  end

  test do
    system "#{bin}/waku version"
  end
end
