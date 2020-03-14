class Fppcli < Formula
  desc "CLI for Face++"
  homepage "https://github.com/AmatsuZero/FaceppSwift/releases"
  url "https://github.com/AmatsuZero/FaceppSwift.git",
    :tag => "0.1.8", 
    :revision => "58c2c8ba5a552bc2a10d7b59944dbf333ba59055"
  head "https://github.com/AmatsuZero/FaceppSwift.git"

  depends_on :xcode => ["11.3.1", :build]

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system "#{bin}/fppcli", "--version"
  end
end
