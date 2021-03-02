# PyCharm / Conda / git-hooks workaround

Workaround to get PyCharm to run git-hooks within the same Conda environment that is selected the 
PyCharm project.

Only activates the Conda environment if PyCharm runs a git command that might be connected to a 
git-hook. This speeds up common PyCharm git command significantly. 

## Requirements:

- **Platform:** MacOS (but the scripts might work with some modifications also on other platforms).
- **Shell:** `zsh`
- Python v2 or v3

## Setup:

- Replace contents of `.conda_init` with the respective contents in your `.zshrc` file.

    - If you can't find the contents in `.zshrc`, please run `conda init zsh` first.

- PyCharm->Preferences->Version Control->git->Path to git executable: Select `git_wrapper.sh`. Can 
be set up globally (for all projects).
