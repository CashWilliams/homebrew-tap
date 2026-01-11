class GogcliSandbox < Formula
  desc "Policy-enforced broker and client for gogcli"
  homepage "https://github.com/cashwilliams/gogcli-sandbox"
  license "MIT"
  version "0.0.3"

  on_macos do
    on_arm do
      url "https://github.com/cashwilliams/gogcli-sandbox/releases/download/v#{version}/gogcli-sandbox_v#{version}_darwin_arm64.tar.gz"
      sha256 "90adb22d521d7d20ca613153a84efb243494fd0b79c44ebd3af74135b4d7f91a"
    end
    on_intel do
      url "https://github.com/cashwilliams/gogcli-sandbox/releases/download/v#{version}/gogcli-sandbox_v#{version}_darwin_amd64.tar.gz"
      sha256 "cc221fb4f8865ea57145675fa83d1667ec44d695b4e85491426731d5136d86db"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cashwilliams/gogcli-sandbox/releases/download/v#{version}/gogcli-sandbox_v#{version}_linux_arm64.tar.gz"
      sha256 "9efcf004ad1ce5dadffd8df495657434209c00ec76f75fd6ba6679bd37dff3e8"
    end
    on_intel do
      url "https://github.com/cashwilliams/gogcli-sandbox/releases/download/v#{version}/gogcli-sandbox_v#{version}_linux_amd64.tar.gz"
      sha256 "a19bc6c0cd1b7b7d367d4bd006125cb1accf462c769bacc33e6c89c545c00e16"
    end
  end

  def install
    bin.install "gogcli-sandbox"
    bin.install "gogcli-sandbox-client"
    bin.install "gogcli-sandbox-init"
  end

  test do
    system "#{bin}/gogcli-sandbox-client", "--help"
  end
end
