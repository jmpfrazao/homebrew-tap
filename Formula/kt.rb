class Kt < Formula
  homepage "https://github.com/knight42/kt"
  version "0.0.3-alpha"
  head "https://github.com/knight/kt.git"
  url "https://github.com/knight42/kt/releases/download/v#{version}/kt-v#{version}-darwin-amd64.tar.gz"
  sha256 "7e8d9689501f71d45bc567ff8120b36c891706e30bcf12040e9e1dbf9bd645b8"

  def install
    bin.install "kt"

    # Install bash completion
    output = Utils.popen_read("#{bin}/kt --completion bash")
    (bash_completion/"kt").write output

    # Install zsh completion
    output = Utils.popen_read("#{bin}/kt --completion zsh")
    (zsh_completion/"_kt").write output
  end

  test do
    system "#{bin}/kt", "--version"
  end
end
