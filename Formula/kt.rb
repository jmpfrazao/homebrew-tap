class Kt < Formula
  homepage "https://github.com/knight42/kt"
  version "0.0.3-alpha.3"
  head "https://github.com/knight/kt.git"
  url "https://github.com/knight42/kt/releases/download/v#{version}/kt-v#{version}-darwin-amd64.tar.gz"
  sha256 "1be0b02295ee7d962e594064e2cdfb36c43137bb12bcccfdcefce9ef603332dd"

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
