#!/bin/bash
echo "Tender Installation:"
echo ""
echo "Platform    Arch"
echo "----------------"
echo "android     arm64"
echo "darwin      amd64"
echo "linux       amd64"
echo "windows     amd64"
echo "windows     386"
echo ""
# Prompt the user for platform, arch, and install location
echo -ne "Platform: "
read platform
platform=$(echo "$platform" | xargs) # Trim leading/trailing whitespace
echo -ne "Arch: "
read arch
arch=$(echo "$arch" | xargs) # Trim leading/trailing whitespace
echo -ne "Installation Directory: "
read target_directory
target_directory=$(echo "$target_directory" | xargs) # Trim leading/trailing whitespace

# Determine the filename based on the platform
if [[ "$platform" == "windows" ]]; then
    filename="tender.exe"
else
    filename="tender"
fi

bin_file="bin/${platform}_${arch}/${filename}"

# Create the target directory and its subdirectories
mkdir -p "${target_directory}/bin"
mkdir -p "${target_directory}/icon"

# Function to copy files with error checking
copy_file() {
    src=$1
    dest=$2
    if [ -e "$src" ]; then
        cp -r "$src" "$dest"
    else
        echo "Warning: $src not found, skipping."
    fi
}

# Copy the binary and other required files
copy_file "$bin_file" "${target_directory}/bin/$filename"
copy_file "pkg" "$target_directory/pkg"
copy_file "docs" "$target_directory/docs"
copy_file "README.md" "$target_directory/README.md"
copy_file "LICENSE" "$target_directory/LICENSE"
copy_file "LICENSE_GOLANG" "$target_directory/LICENSE_GOLANG"
copy_file "LICENSE_TENGO" "$target_directory/LICENSE_TENGO"
copy_file "LICENSE_GG" "$target_directory/LICENSE_GG"
copy_file "LICENSE_WEBSOCKET" "$target_directory/LICENSE_WEBSOCKET"
copy_file "misc/icon.ico" "$target_directory/icon/icon.ico"
