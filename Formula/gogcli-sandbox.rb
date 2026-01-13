class GogcliSandbox < Formula
  desc "Policy-enforced broker and client for gogcli"
  homepage "https://github.com/cashwilliams/gogcli-sandbox"
  license "MIT"
  version "0.0.8"

  on_macos do
    on_arm do
      url "https://github.com/cashwilliams/gogcli-sandbox/releases/download/v#{version}/gogcli-sandbox_v#{version}_darwin_arm64.tar.gz"
      sha256 "5606d682e81284f7e2f9d5be3c5b50a079b5bb2911db28e87984fb52194c2c3c"
    end
    on_intel do
      url "https://github.com/cashwilliams/gogcli-sandbox/releases/download/v#{version}/gogcli-sandbox_v#{version}_darwin_amd64.tar.gz"
      sha256 "866f332b6ab9b2b7966277185c0bed0fcc8c0debce5a3f0f5377d5bc95686430"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cashwilliams/gogcli-sandbox/releases/download/v#{version}/gogcli-sandbox_v#{version}_linux_arm64.tar.gz"
      sha256 "23a5119d3fb408824ad75cb7c21de96e50f99045569c4a78ef17796612f3472b"
    end
    on_intel do
      url "https://github.com/cashwilliams/gogcli-sandbox/releases/download/v#{version}/gogcli-sandbox_v#{version}_linux_amd64.tar.gz"
      sha256 "2d993f103331b15a24040bada8f7d6cd4a63ae880f30f487714be456e606121c"
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
