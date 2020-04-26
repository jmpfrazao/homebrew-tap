class ControllerGen < Formula
  desc "Tools to use with the controller-runtime libraries"
  homepage "https://github.com/kubernetes-sigs/controller-tools"
  url "https://github.com/kubernetes-sigs/controller-tools.git",
      :tag      => "v0.3.0",
      :revision => "44656d3c15ecaef499d9157825afd843415cbfea"
  head "https://github.com/kubernetes-sigs/controller-tools.git"

  depends_on "git-lfs" => :build
  depends_on "go"

  def install
    ENV["GOPATH"] = buildpath
    dir = buildpath/"src/sigs.k8s.io/controller-tools"
    dir.install buildpath.children - [buildpath/".brew_home"]

    cd dir do
      # Make binary
      system "go", "build", "-trimpath", "-o", "controller-gen", "./cmd/controller-gen"
      bin.install "controller-gen"
      prefix.install_metafiles
    end
  end

  test do
    system "#{bin}/controller-gen", "--version"
  end
end
