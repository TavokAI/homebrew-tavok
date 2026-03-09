class Tavok < Formula
  desc "Bootstrap CLI for self-hosting Tavok"
  homepage "https://tavok.dev"
  version "0.2.2"

  on_macos do
    on_arm do
      url "https://github.com/TavokAI/Tavok/releases/download/v0.2.2/tavok-darwin-arm64.tar.gz"
      sha256 "fe2029716d857774c04ff061d95f9ca22f2fc407666bbb859075a5fa8b972f91"
    end

    on_intel do
      url "https://github.com/TavokAI/Tavok/releases/download/v0.2.2/tavok-darwin-amd64.tar.gz"
      sha256 "5617a535086f31d13a30ddddc7cd6b63476d29cd0849662bcdc04dd3c692ce29"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/TavokAI/Tavok/releases/download/v0.2.2/tavok-linux-arm64.tar.gz"
      sha256 "d8b6fc8e223e273c51cd3791d376c5f1b75722e604debd26cbdeb8425bcece59"
    end

    on_intel do
      url "https://github.com/TavokAI/Tavok/releases/download/v0.2.2/tavok-linux-amd64.tar.gz"
      sha256 "fd0e0d8f73bdfb19c1b52da078abcf98baad2109d688220503c96d00850e301c"
    end
  end

  def install
    bin.install "tavok"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tavok version")
  end
end
