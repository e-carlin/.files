OS="$(uname -a | cut -d ' ' -f1)"
echo $OS
if [[ "${OS}" = "Linux" ]]; then
    echo "IN LINUX"
elif [[ "${OS}" = "Darwin" ]]; then
    echo "IN DARWIN"
else
    "Operating system ${OS} is unsupported."
    exit 1
fi