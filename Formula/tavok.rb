class Tavok < Formula
  desc "Bootstrap CLI for self-hosting Tavok"
  homepage "https://tavok.dev"
  version "0.2.5"

  on_macos do
    on_arm do
      url "https://github.com/TavokAI/Tavok/releases/download/v0.2.5/tavok-darwin-arm64.tar.gz"
      sha256 "073b691875922afd68e3c8b7d47e45d54be47edcc0fd1642e6939a4e52cb839c"
    end

    on_intel do
      url "https://github.com/TavokAI/Tavok/releases/download/v0.2.5/tavok-darwin-amd64.tar.gz"
      sha256 "a1f199eb0669b219dafe3d11e92bc9976d2ada62bd576dbc52cfa03fd8f4474d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/TavokAI/Tavok/releases/download/v0.2.5/tavok-linux-arm64.tar.gz"
      sha256 "c2078741f31c6bb1e515ef3fae3ca691f1534fbef44da33694f632e4c25acdc5"
    end

    on_intel do
      url "https://github.com/TavokAI/Tavok/releases/download/v0.2.5/tavok-linux-amd64.tar.gz"
      sha256 "908f8920b25f38db3449ca7401b80f33884b0057818e52f30696a36a2158d6d8"
    end
  end

  def install
    bin.install "tavok"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tavok version")
  end
end
