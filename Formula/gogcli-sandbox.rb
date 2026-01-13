class GogcliSandbox < Formula
  desc "Policy-enforced broker and client for gogcli"
  homepage "https://github.com/cashwilliams/gogcli-sandbox"
  license "MIT"
  version "0.0.6"

  on_macos do
    on_arm do
      url "https://github.com/cashwilliams/gogcli-sandbox/releases/download/v#{version}/gogcli-sandbox_v#{version}_darwin_arm64.tar.gz"
      sha256 "968c5926cd13a17a11550078924759cb4a7eefbabf6f469ee9726a97ebf1fe2e"
    end
    on_intel do
      url "https://github.com/cashwilliams/gogcli-sandbox/releases/download/v#{version}/gogcli-sandbox_v#{version}_darwin_amd64.tar.gz"
      sha256 "0cc3fedaf5b1d505b663288e2f427733a3f16b364da7b5f8150fbb24d678e9b6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cashwilliams/gogcli-sandbox/releases/download/v#{version}/gogcli-sandbox_v#{version}_linux_arm64.tar.gz"
      sha256 "4ffc89f447947705c22b45d0aea7e4e75cba2ee084e3287eba18374dfa3d1537"
    end
    on_intel do
      url "https://github.com/cashwilliams/gogcli-sandbox/releases/download/v#{version}/gogcli-sandbox_v#{version}_linux_amd64.tar.gz"
      sha256 "8b5f19ce0d1db9fa5758ca6539457ae2660547b147697f244eeba9de7f55dc7b"
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
