cask "calmread" do
  version "1.0.0"
  sha256 "3c07a16c721a2907cab3731a7ffdd166a930f660e6dd492d5dcedf60f5466dc5"

  url "https://github.com/calmread-app/CalmRead/releases/download/v1.0.0/CalmRead-darwin-arm64-1.0.0.zip",
      verified: "github.com/calmread-app/CalmRead/"

  name "CalmRead"
  desc "Calm, focused document reader for TXT, Markdown, EPUB, DOCX, CSV, and HTML"
  homepage "https://calmread.app"

  depends_on macos: ">= :monterey"

  app "CalmRead.app"

  zap trash: [
    "~/Library/Application Support/CalmRead",
    "~/Library/Preferences/com.calmread.app.plist",
    "~/Library/Caches/com.calmread.app",
  ]
end
