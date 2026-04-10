cask "calmread" do
  version "1.0.0"
  sha256 "3d8c7878d64801672067b6aef0f4fdb12bbccbd04826c70d223664c6e2cbc298"

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
