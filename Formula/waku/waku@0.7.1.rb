# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Waku < Formula
  desc "A simple template repository generator. Lets make starting new projects feel like a breeze again!"
  homepage "https://github.com/caffeine-addictt/waku"
  version "0.7.1"
  license "AGPL-3.0"

  depends_on "git"

  on_macos do
    on_intel do
      url "https://github.com/caffeine-addictt/waku/releases/download/v0.7.1/waku_Darwin_x86_64.tar.gz"
      sha256 "11f0e84de4827a6d4ed7d7af419a5dd1eceb449e9cac95386659e8b581ba8517"

      def install
        bin.install "waku"
        bash_completion.install "completions/waku.bash" => "waku"
        zsh_completion.install "completions/waku.zsh" => "_waku"
        fish_completion.install "completions/waku.fish"
        man1.install "manpages/waku.1.gz"
      end
    end
    on_arm do
      url "https://github.com/caffeine-addictt/waku/releases/download/v0.7.1/waku_Darwin_arm64.tar.gz"
      sha256 "e5527bfbc494369ed9078afb077374a3acdeabb9d5ff6cdb8a91a9d073b35140"

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
        url "https://github.com/caffeine-addictt/waku/releases/download/v0.7.1/waku_Linux_x86_64.tar.gz"
        sha256 "c2646ce1da286c8849d7d033c1aca3fc85d27ca2c095a8ca22f2645fc81140ea"

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
        url "https://github.com/caffeine-addictt/waku/releases/download/v0.7.1/waku_Linux_arm64.tar.gz"
        sha256 "8ad0a720020eaf1fad92a8241bd15a4ac8f74c156239c6e3167d3b40107b50a1"

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
