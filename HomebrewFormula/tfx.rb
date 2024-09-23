class Tfx < Formula
  desc "tfx cli --  TFx is a standalone CLI for Terraform Cloud and Terraform Enterprise."
  homepage "https://github.com/straubt1/tfx"
  url "git@github.com:straubt1/tfx.git", :using => :git, :tag => "v0.1.3"
  head "git@github.com:straubt1/tfx.git", :using => :git, :branch => "main"
  version '0.1.3'

  depends_on "go" => :build

  def install
    if build.head?
      v_version = Utils.popen_read("git", "describe", "--tags", "--dirty", "--always").chomp
    else
      v_version = "v#{version}"
    end
    ENV["GOPATH"] = HOMEBREW_CACHE/"go_cache"
    go_ldflags = "-w -s"
    go_ldflags << " -X 'github.com/straubt1/tfx/version.Version=#{version}'"
    go_ldflags << " -X 'github.com/straubt1/tfx/version.BuiltBy=HomeBrew'"
    system "go", "build", "-trimpath", "-ldflags", go_ldflags, "-o", bin/"tfx"
  end
  def caveats
    <<~EOS

      See the tfx's documentation for more information:
      https://tfx.rocks

      CHANGELOG:
      https://github.com/straubt1/tfx/blob/main/CHANGELOG.md
    EOS
  end
end
