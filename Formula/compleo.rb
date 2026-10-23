class Compleo < Formula
  desc "Compleo CLI"
  homepage "https://github.com/nesneros/compleo"
  url "https://github.com/nesneros/compleo/releases/download/v0.0.5/compleo_0.0.5_darwin_arm64.tar.gz"
  sha256 "afa9c057201fbbc82a8ef766d30423946bb4d9b7241e7ab1effb5df6f38a5e27"

  def install
    # This assumes the executable inside the tar.gz is named "compleo"
    bin.install "compleo"
  end

  test do
    system "#{bin}/compleo", "version"
  end
end
