# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula

class Rumble < Formula
  desc "RumbleDB 1.17.0 'Cacao tree' for Apache Spark | Run queries on your large-scale, messy JSON-like data (JSON, text, CSV, Parquet, ROOT, AVRO, SVM...) | No install required (just a jar to download) | Declarative Machine Learning and more"
  homepage "http://rumbledb.org/"
  url "https://github.com/daviddao/homebrew-rumble/releases/download/1.17.0-brew/rumble-brew-1.17.0.tar.gz"
  sha256 "2642f538ea3780f63756c8c49ac97b81d9c4f848deb6248c16f7ec63751557c8"
  license "MIT"

  depends_on "apache-spark"

  def install
    libexec.install Dir["*"]
    bin.install Dir[libexec/"bin/*"]
    bin.env_script_all_files(libexec/"bin", SPARK_HOME: Formula["apache-spark"].bin)
  end

  test do
    assert_match "2",
      pipe_output(bin/"rumbledb -q '1+1'")
  end
end
