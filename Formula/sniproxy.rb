class Sniproxy < Formula
  homepage "https://github.com/dlundquist/sniproxy"
  version "0.6.0"
  head "https://github.com/dlundquist/sniproxy.git"
  url "https://github.com/dlundquist/sniproxy/archive/#{version}.tar.gz"
  sha256 "d73c77a9fa8199ae7ac551c0332d3e0a3ff234623f53d65369a8fa560d9880e2"

  depends_on "autoconf" => :build
  depends_on "automake" => :build
  depends_on "libtool" => :build
  depends_on "pkg-config" => :build
  depends_on "libev"
  depends_on "pcre"
  depends_on "udns"
  depends_on "gettext"

  def install
    system "./autogen.sh"
    system "./configure", "--disable-dependency-tracking",
                          "--disable-silent-rules",
                          "--prefix=#{prefix}"
    system "make", "install"
  end
end
