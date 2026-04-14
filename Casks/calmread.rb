cask "calmread" do
  version "1.0.1"
  sha256 "18d31f83c51e44b7968e3edc7441fcd409970c0c668bd444546f9e2bb9c2b4cd"

  url "https://github.com/calmread-app/CalmRead/releases/download/v1.0.1/CalmRead-darwin-arm64-1.0.1.zip",
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
