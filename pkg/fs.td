// MIT License

// Copyright (c) 2024 2DPrototype

// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:

// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.

// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.

import "os"

export {
	readfile : fn(name) {
		return os.read_file(name)
	},
	writefile : fn(name, str) {
		file := os.create(name)
		file["write"](str)
		file.close()
		return file
	},
	appendfile : fn(name, str) {
		file := os.open_file(name, os.o_wronly|os.o_append|os.o_create, 0644)
		file.write_string(str)
		file.close()
		return file
	},
	isdir : fn(name) {
		stat := os.stat(name)
		if stat {
			if stat.directory {
				return true
			}
			return false
		}
		return error(name + " not exists")
	},
	exists : fn(name) {
		if os.stat(name) {
			return true
		}
		return false
	},
	readdir : fn(name) {
		return os.read_dir(name)
	},
	copy : os.copy,
	remove : os.remove,
	removeall : os.remove_all,
	mkdirall : fn(name) {
		os.mkdir_all(name, os.mode_perm)
	},
	mkdir : fn(name) {
		os.mkdir(name, 0755)
	}
}