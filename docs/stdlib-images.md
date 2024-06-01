## image Module Documentation

The `image` module provides functionalities for working with images, including loading, decoding, creating new images, and encoding images into various formats.

### Functions

#### `new(width, height)`

Creates a new image with the specified width and height.

- `width`: Width of the new image.
- `height`: Height of the new image.

#### `load(path)`

Loads an image from the specified file path.

- `path`: Path to the image file.

#### `decode(image_data)`

Decodes image data into an image object.

- `image_data`: Byte array containing image data.

#### `formats`

Array containing supported image formats: PNG, JPEG, BMP, TIFF, and WebP.

### Image Functions

#### `encode(format)`

Encodes the image into the specified format.

- `format`: Format to encode the image (e.g., "png", "jpeg", "bmp", "tiff").

#### `bounds()`

Returns the bounding rectangle of the image.

#### `at(x, y)`

Returns the color of the pixel at the specified coordinates.

- `x`: X-coordinate of the pixel.
- `y`: Y-coordinate of the pixel.

#### `pixels()`

Returns the total number of pixels in the image.

#### `get_pixels()`

Returns an array containing the pixel values of the image.

#### `set_pixels(pixels)`

Sets the pixel values of the image from the given array.

- `pixels`: Array containing pixel values.

#### `set(x, y, color)`

Sets the color of the pixel at the specified coordinates.

- `x`: X-coordinate of the pixel.
- `y`: Y-coordinate of the pixel.
- `color`: Array containing RGBA values of the color.

#### `save(path, format)`

Saves the image to the specified file path and format.

- `path`: Path to save the image.
- `format`: Format to save the image (e.g., "png", "jpeg", "bmp", "tiff").

### Example Usage

```go
import "image"

// Create a new image
img := image.new(255, 255)

for i := 0; i < 255; i++ {
	for j := 0; j < 255; j++ {
		color := [i, 0, j, 255]
		img.set(i, j, color)
	}
}

img.save("out.png", "png")
```
