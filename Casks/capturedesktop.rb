cask "capturedesktop" do
  version "0.1.11"
  sha256 "1cd2efd47c499d999430812775ff90a635b0ac2ff772ae00cce7461689da96fc"

  url "https://github.com/djedi/CaptureDesktop/releases/download/v#{version}/CaptureDesktop.zip",
      verified: "github.com/djedi/CaptureDesktop/"
  name "CaptureDesktop"
  desc "Screen recorder that hands its recordings to DaVinci Resolve"
  homepage "https://capturedesk.top/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sequoia"

  app "CaptureDesktop.app"

  # Recordings in ~/Movies/CaptureDesktop are the user's work and are never removed.
  zap trash: "~/Library/Preferences/top.capturedesk.CaptureDesk.plist"
end
