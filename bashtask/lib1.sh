#!/bin/bash -
function add_to_path {
	echo "export PATH=\"$1:\$PATH\"" >> ~/.bashrc
}
