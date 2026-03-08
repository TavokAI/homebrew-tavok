class Tavok < Formula
  desc "Bootstrap CLI for self-hosting Tavok"
  homepage "https://tavok.dev"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/TavokAI/Tavok/releases/download/v0.1.0/tavok-darwin-arm64.tar.gz"
      sha256 "b9f24203d77a6930445fc7e734917e005dc4a0f5334f589cccae957c0ae9d96e"
    end

    on_intel do
      url "https://github.com/TavokAI/Tavok/releases/download/v0.1.0/tavok-darwin-amd64.tar.gz"
      sha256 "7fdd7b3f161073e7b038dea89a46a24f92833ccbcc0fe6e444a9af7c38f09634"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/TavokAI/Tavok/releases/download/v0.1.0/tavok-linux-arm64.tar.gz"
      sha256 "c53f37a786d23753f50965a1c4d130d4a1a34cda85575e32f885fca19b62c021"
    end

    on_intel do
      url "https://github.com/TavokAI/Tavok/releases/download/v0.1.0/tavok-linux-amd64.tar.gz"
      sha256 "1b391ac82fa7e26575d2ec1e0baf889c29eb02eeeb24476326d6eceb98eaa3e1"
    end
  end

  def install
    bin.install "tavok"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tavok version")
  end
end
