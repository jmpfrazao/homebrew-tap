class Kt < Formula
  homepage "https://github.com/knight42/kt"
  version "0.0.4"
  head "https://github.com/knight/kt.git"
  url "https://github.com/knight42/kt/releases/download/v#{version}/kt-v#{version}-darwin-amd64.tar.gz"
  sha256 "121f64d0c33aa99df48d164866dad31baecd5fc5c4bb8429de6f8940f8515e5c"

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
