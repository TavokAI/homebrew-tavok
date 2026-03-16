class Tavok < Formula
  desc "Bootstrap CLI for self-hosting Tavok"
  homepage "https://tavok.dev"
  version "0.3.0"

  on_macos do
    on_arm do
      url "https://github.com/TavokAI/Tavok/releases/download/v0.3.0/tavok-darwin-arm64.tar.gz"
      sha256 "d5084e9054dfde2d49250fe00210dc590c5f05e7103e2dbcbe0ee4d21820fa67"
    end

    on_intel do
      url "https://github.com/TavokAI/Tavok/releases/download/v0.3.0/tavok-darwin-amd64.tar.gz"
      sha256 "04ad61b6d22d1951735b22bd862940ede788e7cb0d2ac66c251609fb215c7254"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/TavokAI/Tavok/releases/download/v0.3.0/tavok-linux-arm64.tar.gz"
      sha256 "c9209f0b2939524288bb5af4fbc80ec319d78f2fc5699a887575de7163ff4b58"
    end

    on_intel do
      url "https://github.com/TavokAI/Tavok/releases/download/v0.3.0/tavok-linux-amd64.tar.gz"
      sha256 "08ec8a03c6344425a971e41a72083371872a505d74683f679bb2213e6c870e49"
    end
  end

  def install
    bin.install "tavok"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tavok version")
  end
end
