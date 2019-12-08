class Kind < Formula
  homepage "https://kind.sigs.k8s.io/"
  version "0.6.1"
  head "https://github.com/kubernetes-sigs/kind.git"
  url "https://github.com/kubernetes-sigs/kind/releases/download/v#{version}/kind-darwin-amd64"
  sha256 "93d40643b2fe352d494cfebdc089e9e924ac0f9e1241ae07644aff549e6788b9"

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
