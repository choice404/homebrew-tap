# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Botbox < Formula
  desc "A discord bot template generator to help create discord bots quickly and easily. Forget about the boilerplate and focus on what really matters, what your bot will do. Bot Box is built using Golang, Cobra, and Huh, offering an intuitive cli tool to quickly build Discord bot projects. It includes a cog-based architecture, `.env` management, and built-in utilities for automating bot configuration and extension development."
  homepage "https://github.com/choice404/botbox"
  version "2.0.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/choice404/botbox/releases/download/v2.0.4/botbox_Darwin_x86_64.tar.gz"
      sha256 "c9e6cddaac24ae10c68bab02d128c0c6a3075e20ff911c2429bdea2fae98c27a"

      def install
        bin.install "botbox"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/choice404/botbox/releases/download/v2.0.4/botbox_Darwin_arm64.tar.gz"
      sha256 "9890247c7b7e0aeac674623bafda8b50f29c8ce6c67bfead8fffc9b3da7ec519"

      def install
        bin.install "botbox"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/choice404/botbox/releases/download/v2.0.4/botbox_Linux_x86_64.tar.gz"
        sha256 "ffe15b7a5193d3644f01ad84f129ec7b424352e612290eecd2d4f5ba5750677a"

        def install
          bin.install "botbox"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/choice404/botbox/releases/download/v2.0.4/botbox_Linux_arm64.tar.gz"
        sha256 "0b46e275db7f81d203cf777186b6a8bddfec61fc10193c04c6f76bdec9288c6f"

        def install
          bin.install "botbox"
        end
      end
    end
  end

  test do
    system "#{bin}/botbox --version"
  end
end
