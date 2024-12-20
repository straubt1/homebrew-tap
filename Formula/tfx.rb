# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Tfx < Formula
  desc "tfx cli --  TFx is a standalone CLI for Terraform Cloud and Terraform Enterprise."
  homepage "https://github.com/straubt1/tfx"
  version "0.1.4"

  on_macos do
    on_intel do
      url "https://github.com/straubt1/tfx/releases/download/v0.1.4/tfx_Darwin_x86_64.tar.gz"
      sha256 "fa1afd5cac81862f939f888eaeacda9fa25a5f1424b587e04e844618acc4165c"

      def install
        bin.install "tfx"
      end
    end
    on_arm do
      url "https://github.com/straubt1/tfx/releases/download/v0.1.4/tfx_Darwin_arm64.tar.gz"
      sha256 "b3c532fef5d60dc5ac968e44fd3818e24e2132de833e81ab3bbb43c32aedc588"

      def install
        bin.install "tfx"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/straubt1/tfx/releases/download/v0.1.4/tfx_Linux_x86_64.tar.gz"
        sha256 "71eac1f093865791261a0a1298c5c8b38bf2c165f879f5af024f9ad9cda0fbb2"

        def install
          bin.install "tfx"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/straubt1/tfx/releases/download/v0.1.4/tfx_Linux_arm64.tar.gz"
        sha256 "1c44168892c6d50c1b65f28ac707b86049a382ff7ab515bce21c4502197f2b5d"

        def install
          bin.install "tfx"
        end
      end
    end
  end

  test do
    system "tfx -v"
  end
end
