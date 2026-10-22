class BashAT41 < Formula
  desc "Bourne-Again SHell, version 4.1"
  homepage "https://www.gnu.org/software/bash/"
  url "https://ftp.gnu.org/gnu/bash/bash-4.1.tar.gz"
  sha256 "3f627124a83c6d34db503a923e20710d370573a29dd5d11d6f116d1aee7be1da"

  def install
    system "./configure", "--prefix=#{prefix}"
    system "make", "install"
  end
end
