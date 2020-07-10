class Meliponto < Formula
  desc "A simple CLI to facilitate punching hours into the ahgora system"
  homepage "https://github.com/cmoscofian/meliponto"
  url "https://github.com/cmoscofian/meliponto/archive/v0.0.1.tar.gz"
  version "0.0.1"
  sha256 "195149be31085f61edbe723202057b6f5d4c68129c618a324306a0cfa1de196a"
  license "MIT"

  depends_on "go" => :build

  def install

    system "make", "build", "APP_VERSION=#{version}", "CONFIG_PATH=#{etc}", "DOC_PATH=#{doc}"    

    doc.install Dir["src/docs/*"]
    
    etc.install "meliponto.json"

    bin.install Dir["bin/*"]
  end
end
