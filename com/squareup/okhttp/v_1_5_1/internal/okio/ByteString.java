package com.squareup.okhttp.v_1_5_1.internal.okio;

import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;

/* compiled from: Twttr */
public final class ByteString {
    public static final ByteString EMPTY;
    private static final char[] HEX_DIGITS;
    final byte[] data;
    private transient int hashCode;
    private transient String utf8;

    static {
        HEX_DIGITS = new char[]{'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
        EMPTY = of(new byte[0]);
    }

    ByteString(byte[] bArr) {
        this.data = bArr;
    }

    public static ByteString of(byte... bArr) {
        return new ByteString((byte[]) bArr.clone());
    }

    public static ByteString encodeUtf8(String str) {
        try {
            ByteString byteString = new ByteString(str.getBytes(Util.UTF_8));
            byteString.utf8 = str;
            return byteString;
        } catch (UnsupportedEncodingException e) {
            throw new AssertionError(e);
        }
    }

    public String utf8() {
        String str = this.utf8;
        if (str == null) {
            try {
                str = new String(this.data, Util.UTF_8);
                this.utf8 = str;
            } catch (UnsupportedEncodingException e) {
                throw new AssertionError(e);
            }
        }
        return str;
    }

    public String base64() {
        return Base64.encode(this.data);
    }

    public static ByteString decodeBase64(String str) {
        byte[] decode = Base64.decode(str);
        return decode != null ? new ByteString(decode) : null;
    }

    public String hex() {
        int i = 0;
        char[] cArr = new char[(this.data.length * 2)];
        byte[] bArr = this.data;
        int length = bArr.length;
        int i2 = 0;
        while (i < length) {
            byte b = bArr[i];
            int i3 = i2 + 1;
            cArr[i2] = HEX_DIGITS[(b >> 4) & 15];
            i2 = i3 + 1;
            cArr[i3] = HEX_DIGITS[b & 15];
            i++;
        }
        return new String(cArr);
    }

    public static ByteString decodeHex(String str) {
        if (str.length() % 2 != 0) {
            throw new IllegalArgumentException("Unexpected hex string: " + str);
        }
        byte[] bArr = new byte[(str.length() / 2)];
        for (int i = 0; i < bArr.length; i++) {
            bArr[i] = (byte) ((decodeHexDigit(str.charAt(i * 2)) << 4) + decodeHexDigit(str.charAt((i * 2) + 1)));
        }
        return of(bArr);
    }

    private static int decodeHexDigit(char c) {
        if (c >= '0' && c <= '9') {
            return c - 48;
        }
        if (c >= 'a' && c <= 'f') {
            return (c - 97) + 10;
        }
        if (c >= 'A' && c <= 'F') {
            return (c - 65) + 10;
        }
        throw new IllegalArgumentException("Unexpected hex digit: " + c);
    }

    public boolean equalsAscii(String str) {
        if (str == null || this.data.length != str.length()) {
            return false;
        }
        if (str == this.utf8) {
            return true;
        }
        for (int i = 0; i < this.data.length; i++) {
            if (this.data[i] != str.charAt(i)) {
                return false;
            }
        }
        return true;
    }

    public static ByteString read(InputStream inputStream, int i) throws IOException {
        byte[] bArr = new byte[i];
        int i2 = 0;
        while (i2 < i) {
            int read = inputStream.read(bArr, i2, i - i2);
            if (read == -1) {
                throw new EOFException();
            }
            i2 += read;
        }
        return new ByteString(bArr);
    }

    public ByteString toAsciiLowercase() {
        int i = 0;
        while (i < this.data.length) {
            byte b = this.data[i];
            if (b < (byte) 65 || b > (byte) 90) {
                i++;
            } else {
                byte[] bArr = (byte[]) this.data.clone();
                int i2 = i + 1;
                bArr[i] = (byte) (b + 32);
                for (i = i2; i < bArr.length; i++) {
                    byte b2 = bArr[i];
                    if (b2 >= (byte) 65 && b2 <= (byte) 90) {
                        bArr[i] = (byte) (b2 + 32);
                    }
                }
                return new ByteString(bArr);
            }
        }
        return this;
    }

    public static ByteString concat(ByteString... byteStringArr) {
        int i = 0;
        for (ByteString size : byteStringArr) {
            i += size.size();
        }
        Object obj = new byte[i];
        i = 0;
        for (ByteString byteString : byteStringArr) {
            System.arraycopy(byteString.data, 0, obj, i, byteString.size());
            i += byteString.size();
        }
        return new ByteString(obj);
    }

    public int size() {
        return this.data.length;
    }

    public byte[] toByteArray() {
        return (byte[]) this.data.clone();
    }

    public void write(OutputStream outputStream) throws IOException {
        outputStream.write(this.data);
    }

    public boolean equals(Object obj) {
        return obj == this || ((obj instanceof ByteString) && Arrays.equals(((ByteString) obj).data, this.data));
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        i = Arrays.hashCode(this.data);
        this.hashCode = i;
        return i;
    }

    public String toString() {
        if (this.data.length == 0) {
            return "ByteString[size=0]";
        }
        if (this.data.length <= 16) {
            return String.format("ByteString[size=%s data=%s]", new Object[]{Integer.valueOf(this.data.length), hex()});
        }
        try {
            return String.format("ByteString[size=%s md5=%s]", new Object[]{Integer.valueOf(this.data.length), of(MessageDigest.getInstance("MD5").digest(this.data)).hex()});
        } catch (NoSuchAlgorithmException e) {
            throw new AssertionError();
        }
    }
}
