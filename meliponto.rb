class Meliponto < Formula
  desc "A simple CLI to facilitate punching hours into the ahgora system"
  homepage "https://github.com/cmoscofian/meliponto"
  url "https://github.com/cmoscofian/meliponto/archive/v0.0.2.tar.gz"
  version "0.0.2"
  sha256 "24b2dc670ba8ddc7d8f5eb3ca8d007cb5ed30636fb4f891a2419335f53b0d91d"
  license "MIT"

  depends_on "go" => :build

  def install
    system "make", "build", "APP_VERSION=#{version}", "CONFIG_PATH=#{etc}", "DOC_PATH=#{doc}"

    doc.install Dir["src/docs/*"]
    
    etc.install "meliponto.json"

    bin.install Dir["bin/*"]
  end
end
