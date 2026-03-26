class ExcelArt < Formula
  desc "Convert images to Excel cell background colors"
  homepage "https://github.com/jogakdal/excel-art"
  url "https://github.com/jogakdal/excel-art/releases/download/v1.0.0/excel-art.jar"
  sha256 "6d665b9055c5d9bed8eb73889d68653c035a944ad220ea12463b2629e9ddce26"
  license "MIT"
  version "1.0.0"

  depends_on "openjdk@21"

  def install
    libexec.install "excel-art.jar"
    bin.write_jar_script libexec/"excel-art.jar", "excel-art"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/excel-art --help", 0)
  end
end
