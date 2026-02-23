class PowerChecker < Formula
  desc "Real-time power & battery monitoring CLI for macOS"
  homepage "https://github.com/ruucm/power-checker"
  url "https://github.com/ruucm/power-checker/archive/refs/heads/main.tar.gz"
  version "1.0.0"
  sha256 "4bb0f4ab96110b22411a83969500dacc1c7f88ed00ca42ad6e5eac0917d673bf"
  license "MIT"

  def install
    bin.install "power-checker.sh" => "power-checker"
  end

  test do
    assert_match "macOS", shell_output("#{bin}/power-checker 2>&1", 1)
  end
end
