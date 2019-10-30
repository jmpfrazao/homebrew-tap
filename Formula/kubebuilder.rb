class Kubebuilder < Formula
  desc "SDK for building Kubernetes APIs using CRDs"
  homepage "https://github.com/kubernetes-sigs/kubebuilder"
  head "https://github.com/kubernetes-sigs/kubebuilder.git"
  version "2.1.0"
  url "https://github.com/kubernetes-sigs/kubebuilder/releases/download/v#{version}/kubebuilder_#{version}_darwin_amd64.tar.gz"
  sha256 "3ab68c805a7dea461023e2c52b906c0ecac6ecb1b9a597e4a98611bce9c1fe56"

  depends_on "kustomize"

  def install
    bin.install "bin/kubebuilder"
    (prefix/"kubebuilder/bin").install "bin/etcd", "bin/kube-apiserver"
  end
end
