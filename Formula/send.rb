class Send < Formula
  desc "A script to upload files to dropdrop.download. It returns a link to the uploaded file. Current limit is 100MB and files expire after 4 days."
  version "0.0.5"
  homepage "https://github.com/joelzanden/send"
  url "https://github.com/joelzanden/send/releases/download/v0.0.5/send-0.0.4.tar.gz"
  sha256 "279d1120b9b7260d0a76a74d76a8aff427526096ca80e809bec09c3f78cc8df2"
  license "MIT"

  def install
    bin.install "send"
  end

  test do
    assert_match "Usage: send <file>", shell_output("#{bin}/send", 1)
  end
end
