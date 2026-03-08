class Tavok < Formula
  desc "Bootstrap CLI for self-hosting Tavok"
  homepage "https://tavok.dev"
  version "0.1.3"

  on_macos do
    on_arm do
      url "https://github.com/TavokAI/Tavok/releases/download/v0.1.3/tavok-darwin-arm64.tar.gz"
      sha256 "02d63db86fffdbd73ddf03e75cb3acd93385908aabd94d928b5f96be92ddb2dc"
    end

    on_intel do
      url "https://github.com/TavokAI/Tavok/releases/download/v0.1.3/tavok-darwin-amd64.tar.gz"
      sha256 "7d2c1737ef2a540446d47dcf7cff6089f0b2810d3878992bb48439ca7976e663"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/TavokAI/Tavok/releases/download/v0.1.3/tavok-linux-arm64.tar.gz"
      sha256 "27bfa7b6ef6ee19908df6d0ef53aef1f21e419fda18516e873279b53cf44a87e"
    end

    on_intel do
      url "https://github.com/TavokAI/Tavok/releases/download/v0.1.3/tavok-linux-amd64.tar.gz"
      sha256 "2bace9577bb1130c9427c7877efd798ff1c726f6d8fe55999e92a676fbfccf84"
    end
  end

  def install
    bin.install "tavok"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tavok version")
  end
end
