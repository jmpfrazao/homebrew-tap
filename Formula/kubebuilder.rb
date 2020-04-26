class Kubebuilder < Formula
  desc "Kubebuilder - SDK for building Kubernetes APIs using CRDs"
  homepage "https://book.kubebuilder.io"
  head "https://github.com/kubernetes-sigs/kubebuilder.git"
  version "2.3.1"
  url "https://github.com/kubernetes-sigs/kubebuilder/releases/download/v#{version}/kubebuilder_#{version}_darwin_amd64.tar.gz"
  sha256 "39314d45053b6c31eb17e35c9b8d923f8a38277a9a136448345dd4b7f0f308f4"

  conflicts_with "kubebuilder"

  def install
    bin.install "bin/kubebuilder"
    d = prefix/"kubebuilder/bin"
    d.install "bin/etcd"
    d.install "bin/kube-apiserver"
  end

  def caveats
    s = <<~EOS
      IMPORTANT: please run the following command as root:

      $ sudo ln -sf /usr/local/var/homebrew/linked/kubebuilder/kubebuilder /usr/local/kubebuilder
    EOS
    s
  end

  test do
    system "#{bin}/kubebuilder", "version"
  end
end
