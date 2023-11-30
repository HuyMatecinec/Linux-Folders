fish_logo blue cyan green

if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -gx ANDROID_HOME $HOME/Android/Sdk
set -x PATH $PATH $ANDROID_HOME/emulator
set -x PATH $PATH $ANDROID_HOME/platform-tools

# bun
set -gx BUN_INSTALL "$HOME/.bun"
set -gx PATH $BUN_INSTALL/bin $PATH

# flutter
set -gx FLUTTER_HOME "$HOME/flutter"
set -gx PATH $PATH $FLUTTER_HOME/bin