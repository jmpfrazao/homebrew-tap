class Coredns < Formula
  desc "CoreDNS is a DNS server that chains plugins"
  homepage "https://coredns.io"
  head "https://github.com/coredns/coredns.git"
  version "1.6.9"
  url "https://github.com/coredns/coredns/releases/download/v#{version}/coredns_#{version}_darwin_amd64.tgz"
  sha256 "d0b91c2423e459b6c03561d640c2c686b3168f45a9c510782c268dd549f4a84f"

  def install
    bin.install "coredns"
  end

  test do
    system "#{bin}/coredns", "-version"
  end
end
