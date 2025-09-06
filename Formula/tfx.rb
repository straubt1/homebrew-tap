class Tfx < Formula
  desc "tfx cli --  TFx is a standalone CLI for Terraform Cloud and Terraform Enterprise."
  homepage "https://github.com/straubt1/tfx"
  version "0.1.5"

  on_macos do
    on_intel do
      url "https://github.com/straubt1/tfx/releases/download/v0.1.5/tfx_Darwin_x86_64.tar.gz"
      sha256 "7fd84487af79479c6e5b789538c8e0d60500bbb15d23cd0836b8d22ec96f3e82"

      def install
        bin.install "tfx"
      end
    end
    on_arm do
      url "https://github.com/straubt1/tfx/releases/download/v0.1.5/tfx_Darwin_arm64.tar.gz"
      sha256 "2adaa575e9232a82b50ee2da0ebbaaf5dcf4231ba166f63b4016b363bc786fde"

      def install
        bin.install "tfx"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/straubt1/tfx/releases/download/v0.1.5/tfx_Linux_x86_64.tar.gz"
        sha256 "0530a9e9010ac3569d8c571ff42dfce48a8098f8ce098148c90e806375e9760d"

        def install
          bin.install "tfx"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/straubt1/tfx/releases/download/v0.1.5/tfx_Linux_arm64.tar.gz"
        sha256 "03921492d1d53e00866c63593bb38706e9bee9cee01c3f52781ad1423727c709"

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
