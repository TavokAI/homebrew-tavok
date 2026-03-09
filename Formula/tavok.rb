class Tavok < Formula
  desc "Bootstrap CLI for self-hosting Tavok"
  homepage "https://tavok.dev"
  version "0.2.3"

  on_macos do
    on_arm do
      url "https://github.com/TavokAI/Tavok/releases/download/v0.2.3/tavok-darwin-arm64.tar.gz"
      sha256 "786eb013e5ed1c98abc6fdd2b0f4f93806d8782a4123dcf455f3a8894dd2804e"
    end

    on_intel do
      url "https://github.com/TavokAI/Tavok/releases/download/v0.2.3/tavok-darwin-amd64.tar.gz"
      sha256 "30f76490f0e6979ab8b9930e357dfb4dab33a2a3b563d3867501d6e63947d885"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/TavokAI/Tavok/releases/download/v0.2.3/tavok-linux-arm64.tar.gz"
      sha256 "986582a0e269c6562d9a0d2b8c2e76c44c5fcbaa601d172fd8cae862c66a6853"
    end

    on_intel do
      url "https://github.com/TavokAI/Tavok/releases/download/v0.2.3/tavok-linux-amd64.tar.gz"
      sha256 "7d0c81e7fb9e59b643acb8c7f5ee5941620d94cd2f5d43f258e4d70e9c92c8f6"
    end
  end

  def install
    bin.install "tavok"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tavok version")
  end
end
