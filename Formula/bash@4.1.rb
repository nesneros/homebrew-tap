class BashAT41 < Formula
  desc "Bourne-Again SHell, version 4.1"
  homepage "https://www.gnu.org/software/bash/"
  url "https://ftpmirror.gnu.org/bash/bash-4.1.tar.gz"
  sha256 "3f627124a83c6d34db503a923e20710d370573a29dd5d11d6f116d1aee7be1da"

  def install
    # Tell bash 4.1 not to overwrite macOS's read-only sys_siglist
    ENV.append "CFLAGS", "-DHAVE_SYS_SIGLIST"

    # Prevent modern Clang from crashing on 2010-era C syntax
    ENV.append "CFLAGS", "-Wno-implicit-function-declaration"
    ENV.append "CFLAGS", "-Wno-implicit-int"
    ENV.append "CFLAGS", "-Wno-int-conversion"

    system "./configure", "--prefix=#{prefix}"
    system "make", "install"
  end

  test do
    assert_match "4.1", shell_output("#{bin}/bash --version")
  end
end
