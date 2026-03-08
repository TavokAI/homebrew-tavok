class Tavok < Formula
  desc "Bootstrap CLI for self-hosting Tavok"
  homepage "https://tavok.dev"
  version "0.2.1"

  on_macos do
    on_arm do
      url "https://github.com/TavokAI/Tavok/releases/download/v0.2.1/tavok-darwin-arm64.tar.gz"
      sha256 "aa1870c705e00a7ce8c6db693972e5d2d2cb192e33072683212700b5cb7e9326"
    end

    on_intel do
      url "https://github.com/TavokAI/Tavok/releases/download/v0.2.1/tavok-darwin-amd64.tar.gz"
      sha256 "62af05786a30c8bfb0d03a466e97d3210ae7dcc78aec742fc778a79d21f479ec"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/TavokAI/Tavok/releases/download/v0.2.1/tavok-linux-arm64.tar.gz"
      sha256 "bcad297f0863307eae7b865ad04cf857b48a746d86fd6295abbe718077b3f333"
    end

    on_intel do
      url "https://github.com/TavokAI/Tavok/releases/download/v0.2.1/tavok-linux-amd64.tar.gz"
      sha256 "da68e57d1bd5c9e7cf6aab74f38b801d3f2b5894cb54058cf4031e890ac09a22"
    end
  end

  def install
    bin.install "tavok"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tavok version")
  end
end
