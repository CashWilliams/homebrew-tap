class GogcliSandbox < Formula
  desc "Policy-enforced broker and client for gogcli"
  homepage "https://github.com/cashwilliams/gogcli-sandbox"
  license "MIT"
  version "0.0.5"

  on_macos do
    on_arm do
      url "https://github.com/cashwilliams/gogcli-sandbox/releases/download/v#{version}/gogcli-sandbox_v#{version}_darwin_arm64.tar.gz"
      sha256 "409fce1be3717484ce71e9a67582e4be4624d60bc474bd380d7f71c38110e938"
    end
    on_intel do
      url "https://github.com/cashwilliams/gogcli-sandbox/releases/download/v#{version}/gogcli-sandbox_v#{version}_darwin_amd64.tar.gz"
      sha256 "1713b15b2959bffd42402a00b6e16b30293741b70e177203edde11f2fe986cc3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cashwilliams/gogcli-sandbox/releases/download/v#{version}/gogcli-sandbox_v#{version}_linux_arm64.tar.gz"
      sha256 "fc38fc50a8a23b7092deafa3135236840f74f604a25afd61bf7d5d7e55715665"
    end
    on_intel do
      url "https://github.com/cashwilliams/gogcli-sandbox/releases/download/v#{version}/gogcli-sandbox_v#{version}_linux_amd64.tar.gz"
      sha256 "f4f3b50f7d8a41482113cc3e2e7ccaf87bf68bea202300c5faa3e047bdd03dd2"
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
