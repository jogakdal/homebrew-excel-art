class ExcelArt < Formula
  desc "Convert images to Excel cell background colors"
  homepage "https://github.com/jogakdal/excel-art"
  url "https://github.com/jogakdal/excel-art/releases/download/v1.0.0/excel-art.tar.gz"
  sha256 "92830b11ee5f1b2b73a7498a583d94b4f9e7017cd400c121320a95ef3c74fc7e"
  version "1.0.0"
  license "MIT"

  depends_on "openjdk@21"

  def install
    bin.install "excel-art"

    # Java 경로를 환경변수로 설정하는 wrapper 생성
    libexec.install "excel-art" => "excel-art-bin"
    (bin/"excel-art").write <<~EOS
      #!/bin/bash
      export JAVA_HOME="#{Formula["openjdk@21"].opt_prefix}"
      export PATH="$JAVA_HOME/bin:$PATH"
      exec "#{libexec}/excel-art-bin" "$@"
    EOS
  end

  test do
    output = shell_output("#{bin}/excel-art 2>&1")
    assert_match "Usage:", output
  end
end
