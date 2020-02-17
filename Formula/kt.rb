class Kt < Formula
  homepage "https://github.com/knight42/kt"
  version "0.0.3-alpha.2"
  head "https://github.com/knight/kt.git"
  url "https://github.com/knight42/kt/releases/download/v#{version}/kt-v#{version}-darwin-amd64.tar.gz"
  sha256 "392473129d57f42c8afc618d5daa8a063e092d7266d67986ccbe8d32ac473855"

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
