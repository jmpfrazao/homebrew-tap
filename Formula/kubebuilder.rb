class Kubebuilder < Formula
  desc "SDK for building Kubernetes APIs using CRDs"
  homepage "https://github.com/kubernetes-sigs/kubebuilder"
  head "https://github.com/kubernetes-sigs/kubebuilder.git"
  version "2.0.0"

  if OS.mac?
    url "https://github.com/kubernetes-sigs/kubebuilder/releases/download/v2.0.0/kubebuilder_2.0.0_darwin_amd64.tar.gz"
    sha256 "4679b5d57c857a0d3c763e9eefb4c797804a184fcae7827a3ca9abc990accc70"
  elsif OS.linux?
    url "https://github.com/kubernetes-sigs/kubebuilder/releases/download/v2.0.0/kubebuilder_2.0.0_linux_amd64.tar.gz"
    sha256 "858d84aa3e8bb6528d7dd4dbab4e8fceb59c8ea7905918bc72dc719d784c40f3"
  end

  depends_on "kustomize"

  def install
    bin.install "bin/kubebuilder"
  end
end
