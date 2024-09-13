# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Waku < Formula
  desc "A simple template repository generator. Lets make starting new proejcts feel like a breeze again!"
  homepage "https://github.com/caffeine-addictt/waku"
  version "0.2.7"
  license "AGPL-3.0"

  depends_on "git"

  on_macos do
    on_intel do
      url "https://github.com/caffeine-addictt/waku/releases/download/v0.2.7/waku_Darwin_x86_64.tar.gz"
      sha256 "eb0693fea53c077689b464472831eaf7a38d222606788604b3d64a89beb08211"

      def install
        bin.install "waku"
        bash_completion.install "completions/waku.bash" => "waku"
        zsh_completion.install "completions/waku.zsh" => "_waku"
        fish_completion.install "completions/waku.fish"
        man1.install "manpages/waku.1.gz"
      end
    end
    on_arm do
      url "https://github.com/caffeine-addictt/waku/releases/download/v0.2.7/waku_Darwin_arm64.tar.gz"
      sha256 "c893af39db25eccf0b9759cc1b16f265634fe06588bbc4c01bfae3e51e890d07"

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
        url "https://github.com/caffeine-addictt/waku/releases/download/v0.2.7/waku_Linux_x86_64.tar.gz"
        sha256 "8f27dc2a38c58477b8161dd4d421ff751f217548255f2580dec818d6c6cdd884"

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
        url "https://github.com/caffeine-addictt/waku/releases/download/v0.2.7/waku_Linux_arm64.tar.gz"
        sha256 "96843f29d26c364e3a8daf3cab85fd5c33f5fbd14c76aad8e578b3586f414b7c"

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
