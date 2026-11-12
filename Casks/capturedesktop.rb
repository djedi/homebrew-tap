cask "capturedesktop" do
  version "0.1.13"
  sha256 "91e0451320a13f6e549af3a424b4f07d1dc55c112b518b4c8a30ba21d1ad5d2a"

  url "https://github.com/djedi/CaptureDesktop/releases/download/v#{version}/CaptureDesktop.zip",
      verified: "github.com/djedi/CaptureDesktop/"
  name "CaptureDesktop"
  desc "Screen recorder that hands its recordings to DaVinci Resolve Studio"
  homepage "https://capturedesk.top/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sequoia

  app "CaptureDesktop.app"

  # Recordings in ~/Movies/CaptureDesktop are the user's work and are never removed.
  zap trash: "~/Library/Preferences/top.capturedesk.CaptureDesk.plist"
end
