class Ideo < Formula
  desc "CLI tool for generating images with the Ideogram v3 API"
  homepage "https://github.com/djedi/ideo"
  url "https://github.com/djedi/ideo/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "265b8c28de7916a6a3401c2b228281077c9419a1017c8f201539b06c3b133494"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "IDEOGRAM_API_KEY", shell_output("#{bin}/ideo 'test' 2>&1", 1)
  end
end
