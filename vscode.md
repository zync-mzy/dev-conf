# mac conf
```bash
# enable press and hold in vim mode
osascript -e 'id of app "Cursor"' # optional, fetch the id of other apps like 'Cursor', 'TRAE CN'
defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false
```

# extensions

## c++
- C/C++
- Clang-Format
- Makefile Tools

## python
- isort
- Pylance
- Python
- Black Formatter
- Python Environment Management

## proto
- vscode-proto3
- jumpprotobuf

## git
- Git Graph
- GitLens

## ai
- Github Copilot
- Github Copilot Chat
```json
{
    "remote.extensionKind": {
        "github.copilot": ["ui"],
        "github.copilot-chat": ["ui"],
        "pub.name": [
            "ui"
        ]
    },
}
```

## profile
- Tab Group
- Todo Tree
- TODO Highlight
- Vim
- Remote
- Dracula
- Material
- One Dark Pro
- Peacock

- vscode-icons
