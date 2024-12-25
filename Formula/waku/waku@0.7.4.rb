# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Waku < Formula
  desc "A simple template repository generator. Lets make starting new projects feel like a breeze again!"
  homepage "https://github.com/caffeine-addictt/waku"
  version "0.7.4"
  license "AGPL-3.0"

  depends_on "git"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/caffeine-addictt/waku/releases/download/v0.7.4/waku_Darwin_x86_64.tar.gz"
      sha256 "b55a69cc8807a18f8ecd80a1f7d83f729b1a4b07597cb2ddea5f078507019df2"

      def install
        bin.install "waku"
        bash_completion.install "completions/waku.bash" => "waku"
        zsh_completion.install "completions/waku.zsh" => "_waku"
        fish_completion.install "completions/waku.fish"
        man1.install "manpages/waku.1.gz"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/caffeine-addictt/waku/releases/download/v0.7.4/waku_Darwin_arm64.tar.gz"
      sha256 "107408cefeda3ad3ebf7ef2d0f7ea83e5345ed375dfaedba7d0eeef1b10b8616"

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
        url "https://github.com/caffeine-addictt/waku/releases/download/v0.7.4/waku_Linux_x86_64.tar.gz"
        sha256 "d343baa01da0333ae26ca07eeacb2bc5c23841ccead89c4d3d7cf9b7fcd35d40"

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
        url "https://github.com/caffeine-addictt/waku/releases/download/v0.7.4/waku_Linux_arm64.tar.gz"
        sha256 "feaaddfb26674d302cdf668455bfd959441900a92477367c9751b6936de3e6d3"

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
