class Tavok < Formula
  desc "Bootstrap CLI for self-hosting Tavok"
  homepage "https://tavok.dev"
  version "0.2.4"

  on_macos do
    on_arm do
      url "https://github.com/TavokAI/Tavok/releases/download/v0.2.4/tavok-darwin-arm64.tar.gz"
      sha256 "d9e4782e1680d9b4d0b8bb10461f65256a08df9d78e1fd961ac2b760f87e4c03"
    end

    on_intel do
      url "https://github.com/TavokAI/Tavok/releases/download/v0.2.4/tavok-darwin-amd64.tar.gz"
      sha256 "fe7b7a947b07a417b7817cfc310898c05261f8b6d697a1ec587317ba0ff39f6e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/TavokAI/Tavok/releases/download/v0.2.4/tavok-linux-arm64.tar.gz"
      sha256 "eb7275d8d4b006ed8c700bed8d525933f34c6a33fd1af43eb89affe5bea18025"
    end

    on_intel do
      url "https://github.com/TavokAI/Tavok/releases/download/v0.2.4/tavok-linux-amd64.tar.gz"
      sha256 "0621012111626b453c0540afc34add2c2e0ba168a50e0c9561fb81ccdbfb0e23"
    end
  end

  def install
    bin.install "tavok"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tavok version")
  end
end
