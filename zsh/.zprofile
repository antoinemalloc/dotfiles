# Homebrew
for brew in \
    /opt/homebrew/bin/brew \
    /usr/local/bin/brew \
    /home/linuxbrew/.linuxbrew/bin/brew
do
    if [[ -x "$brew" ]]; then
        eval "$("$brew" shellenv)"
        break
    fi
done

# Opencode (oh-my-opencode-slim)
export OPENCODE_EXPERIMENTAL_BACKGROUND_SUBAGENTS=true
export OPENCODE_ENABLE_EXA=1