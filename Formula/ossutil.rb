class Ossutil < Formula
  desc "User friendly command-line tool to access AliCloud OSS"
  version "1.6.9"
  homepage "https://www.aliyun.com/product/oss"
  head "https://github.com/aliyun/ossutil.git"
  url "http://gosspublic.alicdn.com/ossutil/#{version}/ossutilmac64"
  sha256 "733941d0477094e42d34c6022fe492acb94042360efa071243f12f67585ae28d"

  def install
    bin.install "ossutilmac64"
    mv bin/"ossutilmac64", bin/"ossutil"
  end

   test do
    system "#{bin}/ossutil", "--version"
  end
end
