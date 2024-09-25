# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class tfx < Formula
  desc "tfx cli --  TFx is a standalone CLI for Terraform Cloud and Terraform Enterprise."
  homepage "https://github.com/straubt1/tfx"
  version "0.1.3"

  on_macos do
    on_intel do
      url "https://github.com/straubt1/tfx/releases/download/v0.1.3/tfx_Darwin_x86_64.tar.gz"
      sha256 "5d2dc26053e7e981100877179b6ddc2c2fbd6ad313afceb94e3fdd259f559ac8"

      def install
        bin.install "tfx"
      end
    end
    on_arm do
      url "https://github.com/straubt1/tfx/releases/download/v0.1.3/tfx_Darwin_arm64.tar.gz"
      sha256 "02d89199c3336beb0c9525cda5334ca52fe8cb02bba0ca26923640996978c998"

      def install
        bin.install "tfx"
      end
    end
  end

  test do
    system "tfx-v"
  end
end