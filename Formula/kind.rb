class Kind < Formula
  homepage "https://kind.sigs.k8s.io/"
  version "0.5.1"
  head "https://github.com/kubernetes-sigs/kind.git"
  url "https://github.com/kubernetes-sigs/kind/releases/download/v#{version}/kind-darwin-amd64"
  sha256 "b6a8fe2b3b53930a1afa4f91b033cdc24b0f6c628d993abaa9e40b57d261162a"

  def install
    mv "kind-darwin-amd64", "kind"
    bin.install "kind"
    system "chmod", "+x", bin/"kind"

    # Install bash completion
    output = Utils.popen_read("#{bin}/kind completion bash")
    (bash_completion/"kind").write output

    # Install zsh completion
    output = Utils.popen_read("#{bin}/kind completion zsh")
    (zsh_completion/"_kind").write output
  end

  test do
    system bin/"kind", "--version"
  end
end
