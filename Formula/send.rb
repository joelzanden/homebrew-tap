class Send < Formula
  desc "A script to upload files to dropdrop.download"
  version "0.0.4"
  homepage "https://github.com/joelzanden/send"
  url "https://github.com/joelzanden/send/releases/download/v0.0.4/send-0.0.4.tar.gz"
  sha256 "30c1c4b2b9c7e694f5b39b0ab6b3d76e41224d86412aed95e3705d3466ab38c0"
  license "MIT"

  def install
    bin.install "send"
  end

  test do
    assert_match "Usage: send <file>", shell_output("#{bin}/send", 1)
  end
end
