class Ideo < Formula
  desc "CLI tool for generating images with the Ideogram v3 API"
  homepage "https://github.com/djedi/ideo"
  url "https://github.com/djedi/ideo/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "4f6b084b2743e7647448ab05ff94d806fde8c6fa366474e8d36e3afe76aa2e46"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "IDEOGRAM_API_KEY", shell_output("#{bin}/ideo 'test' 2>&1", 1)
  end
end
