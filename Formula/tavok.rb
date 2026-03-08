class Tavok < Formula
  desc "Bootstrap CLI for self-hosting Tavok"
  homepage "https://tavok.dev"
  version "0.2.0"

  on_macos do
    on_arm do
      url "https://github.com/TavokAI/Tavok/releases/download/v0.2.0/tavok-darwin-arm64.tar.gz"
      sha256 "9593d76168a9f84be1992b85881dd5fd67b4914b21d31982392b5da67c250061"
    end

    on_intel do
      url "https://github.com/TavokAI/Tavok/releases/download/v0.2.0/tavok-darwin-amd64.tar.gz"
      sha256 "7f6d0526f40c262804d29bcc83656ccdc37f7a573658f97373a925641f806827"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/TavokAI/Tavok/releases/download/v0.2.0/tavok-linux-arm64.tar.gz"
      sha256 "15d04d2f8480752af1af35757c9830d367c2b01e47510964b1a5b02da61bc824"
    end

    on_intel do
      url "https://github.com/TavokAI/Tavok/releases/download/v0.2.0/tavok-linux-amd64.tar.gz"
      sha256 "c8431f5449a46f4b78ca75516eaecc28bd7726367866e7f72d3c88c62c64384d"
    end
  end

  def install
    bin.install "tavok"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tavok version")
  end
end
