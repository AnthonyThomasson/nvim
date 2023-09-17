# echo "Brew Installs..."
# brew install nvim
# brew install figlet
# echo "Done Brew Installs"


# Function to check if a package is installed
is_installed() {
  dpkg -l "$1" &>/dev/null || rpm -q "$1" &>/dev/null
}

# Check if neovim is installed
if ! is_installed nvim; then
  echo "Installing nvim..."
  if command -v brew &>/dev/null; then
    brew install nvim
  else
    echo "Unsupported package manager. Please install neovim manually."
  fi
else
  echo "neovim is already installed."
fi

# Check if figlet is installed
if ! is_installed figlet; then
  echo "Installing figlet..."
  if command -v brew &>/dev/null; then
    brew install figlet
  else
    echo "Unsupported package manager. Please install figlet manually."
  fi
else
  echo "figlet is already installed."
fi