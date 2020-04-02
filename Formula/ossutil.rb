class Ossutil < Formula
  desc "User friendly command-line tool to access AliCloud OSS"
  version "1.6.10"
  homepage "https://www.aliyun.com/product/oss"
  head "https://github.com/aliyun/ossutil.git"
  url "http://gosspublic.alicdn.com/ossutil/#{version}/ossutilmac64"
  sha256 "df0eda6041576989d0aa6b9831ca6d278e6f96404b4d49f8e1c9974cdab5dfda"

  def install
    bin.install "ossutilmac64"
    mv bin/"ossutilmac64", bin/"ossutil"
  end

   test do
    system "#{bin}/ossutil", "--version"
  end
end
