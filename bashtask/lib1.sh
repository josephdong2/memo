#!/bin/bash -
function add_to_path {
	echo "export PATH=\"$1:\$PATH\"" >> ~/.bashrc
}

function lookup_keyring {
	secret-tool lookup "$1" "$2"
}
