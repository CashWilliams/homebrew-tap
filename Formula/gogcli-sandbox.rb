class GogcliSandbox < Formula
  desc "Policy-enforced broker and client for gogcli"
  homepage "https://github.com/cashwilliams/gogcli-sandbox"
  license "MIT"
  version "0.0.7"

  on_macos do
    on_arm do
      url "https://github.com/cashwilliams/gogcli-sandbox/releases/download/v#{version}/gogcli-sandbox_v#{version}_darwin_arm64.tar.gz"
      sha256 "44a308c9c55244aebe6403a2769b5d73db5a1cab77706346a3c8c14ac009c794"
    end
    on_intel do
      url "https://github.com/cashwilliams/gogcli-sandbox/releases/download/v#{version}/gogcli-sandbox_v#{version}_darwin_amd64.tar.gz"
      sha256 "5bd213a7442263a710bbfe02c91de6f41fc907342e5192001bba2fdbb426bbf3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cashwilliams/gogcli-sandbox/releases/download/v#{version}/gogcli-sandbox_v#{version}_linux_arm64.tar.gz"
      sha256 "346bcab663e72008abb913832d58ce8f9dceb62f4179e17a1fd97e4484f3fbff"
    end
    on_intel do
      url "https://github.com/cashwilliams/gogcli-sandbox/releases/download/v#{version}/gogcli-sandbox_v#{version}_linux_amd64.tar.gz"
      sha256 "89a19e47a5e3c78ab6e8b9902f7334aaf19c3bffb91ff64e4c4e30521d1f9d8a"
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
