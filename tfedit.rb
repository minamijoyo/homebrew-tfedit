# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Tfedit < Formula
  desc "A refactoring tool for Terraform"
  homepage "https://github.com/minamijoyo/tfedit"
  version "0.2.2"

  on_macos do
    on_intel do
      url "https://github.com/minamijoyo/tfedit/releases/download/v0.2.2/tfedit_0.2.2_darwin_amd64.tar.gz"
      sha256 "56f233c0791aea59bdf2c404cbb0f6d5204d8502ef10ce1bd7385d41354adb26"

      def install
        bin.install "tfedit"
      end
    end
    on_arm do
      url "https://github.com/minamijoyo/tfedit/releases/download/v0.2.2/tfedit_0.2.2_darwin_arm64.tar.gz"
      sha256 "d6b88896787856d01b312bc0ddded10de8e468d03728f85c0ea9df6ff089262a"

      def install
        bin.install "tfedit"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/minamijoyo/tfedit/releases/download/v0.2.2/tfedit_0.2.2_linux_amd64.tar.gz"
        sha256 "a4c273a8d20332d6ce608b4e376a541c4922154e3ab931ebd1f37a5ad8041b58"

        def install
          bin.install "tfedit"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/minamijoyo/tfedit/releases/download/v0.2.2/tfedit_0.2.2_linux_arm64.tar.gz"
        sha256 "3438c13bf9936b81ffab54c198c5cbeec9312bd94a2494365cf0125e22fc3b87"

        def install
          bin.install "tfedit"
        end
      end
    end
  end

  test do
    system "#{bin}/tfedit version"
  end
end
