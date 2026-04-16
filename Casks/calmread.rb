cask "calmread" do
  version "1.0.1"
  sha256 "d29eef9d7faf56c36ba073b97ced634a4b8de71f4ccfe71bc424628b225f7b8b"

  url "https://github.com/calmread-app/CalmRead/releases/download/v1.0.1/CalmRead-darwin-arm64-1.0.1.zip",
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
