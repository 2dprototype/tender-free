### Crypto Module Documentation

The `crypto` module provides various cryptographic functionalities, including hashing and encryption/decryption.

### Functions

#### `md5(input)`

Generates an MD5 hash for the given input.

- `input`: The data to hash (byte array).

Returns the MD5 hash as a hexadecimal string.

#### `sha1(input)`

Generates a SHA-1 hash for the given input.

- `input`: The data to hash (byte array).

Returns the SHA-1 hash as a hexadecimal string.

#### `sha256(input)`

Generates a SHA-256 hash for the given input.

- `input`: The data to hash (byte array).

Returns the SHA-256 hash as a hexadecimal string.

#### `sha512(input)`

Generates a SHA-512 hash for the given input.

- `input`: The data to hash (byte array).

Returns the SHA-512 hash as a hexadecimal string.

#### `sha3_256(input)`

Generates a SHA3-256 hash for the given input.

- `input`: The data to hash (byte array).

Returns the SHA3-256 hash as a hexadecimal string.

### AES (crypto.aes)

The `aes` module provides functionalities for AES encryption and decryption.

#### AES Functions

##### `encrypt(plaintext, key)`

Encrypts the given plaintext using the specified key.

- `plaintext`: The data to encrypt (byte array).
- `key`: The encryption key (byte array).

Returns the encrypted data as a byte array.

##### `decrypt(ciphertext, key)`

Decrypts the given ciphertext using the specified key.

- `ciphertext`: The data to decrypt (byte array).
- `key`: The decryption key (byte array).

Returns the decrypted data as a byte array.

##### `block_size`

The block size of the AES cipher.

### Example Usage

```go
import "crypto"

// Hashing examples
md5hash := crypto.md5("example_data")
println(md5hash)

```