## 112.24.00

- By default OpenSSL ignores the result of certificate validation, so we need to
  tell it not to.

- Expose session details such as checked certificates and negotiated version.
  Add session resumption.

## 112.17.00

- moved ffi_bindings and ffi_stubgen in separate libraries

## 111.21.00

- Upgraded to use new ctypes and its new stub generation methods.

## 111.08.00

- Improved the propagation of SSL errors to the caller.

## 111.06.00

Initial release
