cask "capturedesktop" do
  version "0.1.15"
  sha256 "0dbdbb3e07a7330cb5ea4f994ae05484c1658d52996e1cf0367bc64fafd4d55c"

  url "https://github.com/djedi/CaptureDesktop/releases/download/v#{version}/CaptureDesktop.zip"
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
