# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Waku < Formula
  desc "A simple template repository generator. Lets make starting new projects feel like a breeze again!"
  homepage "https://github.com/caffeine-addictt/waku"
  version "0.5.1"
  license "AGPL-3.0"

  depends_on "git"

  on_macos do
    on_intel do
      url "https://github.com/caffeine-addictt/waku/releases/download/v0.5.1/waku_Darwin_x86_64.tar.gz"
      sha256 "f476bbb42a75cbc59a2f070896b2becb7e54b3d50791f05d8b5a13258a0de238"

      def install
        bin.install "waku"
        bash_completion.install "completions/waku.bash" => "waku"
        zsh_completion.install "completions/waku.zsh" => "_waku"
        fish_completion.install "completions/waku.fish"
        man1.install "manpages/waku.1.gz"
      end
    end
    on_arm do
      url "https://github.com/caffeine-addictt/waku/releases/download/v0.5.1/waku_Darwin_arm64.tar.gz"
      sha256 "296f8f9fc4add0d519ee4f4d3e0388c5788224f81a279d3424e752350e9bf957"

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
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/caffeine-addictt/waku/releases/download/v0.5.1/waku_Linux_x86_64.tar.gz"
        sha256 "9d20c6436e66b732a3480584d94f0756d43b50dd5bee1df0d7ab1565f4037776"

        def install
          bin.install "waku"
          bash_completion.install "completions/waku.bash" => "waku"
          zsh_completion.install "completions/waku.zsh" => "_waku"
          fish_completion.install "completions/waku.fish"
          man1.install "manpages/waku.1.gz"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/caffeine-addictt/waku/releases/download/v0.5.1/waku_Linux_arm64.tar.gz"
        sha256 "580e5376f4e891b94183df29479d6428cf6f06a888380a9f0df748619fc1c6e0"

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
