cask "calmread" do
  version "1.0.2"
  sha256 "69c710dc01b3ecec47f024fa2bc3f644a0ac39a8d2b6872e3c1900ef196ada06"

  url "https://github.com/calmread-app/CalmRead/releases/download/v1.0.2/CalmRead-darwin-arm64-1.0.2.zip",
      verified: "github.com/calmread-app/CalmRead/"

  name "CalmRead"
  desc "Calm, focused document reader for TXT, Markdown, EPUB, DOCX, CSV, and HTML"
  homepage "https://calmread.app"

  depends_on macos: ">= :monterey"

  app "CalmRead.app"

  preflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{staged_path}/CalmRead.app"]
  end

  zap trash: [
    "~/Library/Application Support/CalmRead",
    "~/Library/Preferences/com.calmread.app.plist",
    "~/Library/Caches/com.calmread.app",
  ]
end
