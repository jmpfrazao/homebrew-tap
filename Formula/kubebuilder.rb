class Kubebuilder < Formula
  desc "SDK for building Kubernetes APIs using CRDs"
  homepage "https://github.com/kubernetes-sigs/kubebuilder"
  head "https://github.com/kubernetes-sigs/kubebuilder.git"
  version "2.0.0"
  url "https://github.com/kubernetes-sigs/kubebuilder/releases/download/v2.0.0/kubebuilder_2.0.0_darwin_amd64.tar.gz"
  sha256 "4679b5d57c857a0d3c763e9eefb4c797804a184fcae7827a3ca9abc990accc70"

  depends_on "kustomize"

  def install
    bin.install "bin/kubebuilder"
    (prefix/"kubebuilder/bin").install "bin/etcd", "bin/kube-apiserver"
  end
end
