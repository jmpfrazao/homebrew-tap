class Kt < Formula
  homepage "https://github.com/knight42/kt"
  version "0.0.5"
  head "https://github.com/knight42/kt.git"
  url "https://github.com/knight42/kt/releases/download/v#{version}/kt-v#{version}-darwin-amd64.tar.gz"
  sha256 "e2c9ccaee1b9d340383e968a39c735540aab06b33a595294ddd91c75da425a91"

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
