class Meliponto < Formula
  desc "A simple CLI to facilitate punching hours into the ahgora system"
  homepage "https://github.com/cmoscofian/meliponto"
  url "https://github.com/cmoscofian/meliponto/archive/v0.0.3.tar.gz"
  version "0.0.3"
  sha256 "ed5ca9d21a3b640d48594189b8a509da89dbead44a3a8c8d1323865b55052af5"
  license "MIT"

  depends_on "go" => :build

  def install
    system "make", "build", "APP_VERSION=#{version}", "CONFIG_PATH=#{etc}", "DOC_PATH=#{doc}"

    doc.install Dir["src/docs/*"]
    
    etc.install "meliponto.json"

    bin.install Dir["bin/*"]
  end
end
