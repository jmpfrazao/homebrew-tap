class Kubebuilder < Formula
  desc "SDK for building Kubernetes APIs using CRDs"
  homepage "https://github.com/kubernetes-sigs/kubebuilder"
  head "https://github.com/kubernetes-sigs/kubebuilder.git"
  version "2.0.1"
  url "https://github.com/kubernetes-sigs/kubebuilder/releases/download/v#{version}/kubebuilder_#{version}_darwin_amd64.tar.gz"
  sha256 "a2cd518da553584aee2e8a74818da1521f5dd4a9a4a97c8e18b2634e8a8266ca"

  depends_on "kustomize"

  def install
    bin.install "bin/kubebuilder"
    (prefix/"kubebuilder/bin").install "bin/etcd", "bin/kube-apiserver"
  end
end
