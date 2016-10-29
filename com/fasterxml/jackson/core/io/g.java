package com.fasterxml.jackson.core.io;

import com.google.android.exoplayer.util.NalUnitUtil;
import java.io.CharConversionException;
import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;

/* compiled from: Twttr */
public class g extends Reader {
    protected final b a;
    protected InputStream b;
    protected byte[] c;
    protected int d;
    protected int e;
    protected final boolean f;
    protected char g;
    protected int h;
    protected int i;
    protected final boolean j;
    protected char[] k;

    public g(b bVar, InputStream inputStream, byte[] bArr, int i, int i2, boolean z) {
        boolean z2 = false;
        this.g = '\u0000';
        this.h = 0;
        this.i = 0;
        this.k = null;
        this.a = bVar;
        this.b = inputStream;
        this.c = bArr;
        this.d = i;
        this.e = i2;
        this.f = z;
        if (inputStream != null) {
            z2 = true;
        }
        this.j = z2;
    }

    public void close() throws IOException {
        InputStream inputStream = this.b;
        if (inputStream != null) {
            this.b = null;
            a();
            inputStream.close();
        }
    }

    public int read() throws IOException {
        if (this.k == null) {
            this.k = new char[1];
        }
        if (read(this.k, 0, 1) < 1) {
            return -1;
        }
        return this.k[0];
    }

    public int read(char[] cArr, int i, int i2) throws IOException {
        if (this.c == null) {
            return -1;
        }
        if (i2 < 1) {
            return i2;
        }
        int i3;
        int i4;
        if (i < 0 || i + i2 > cArr.length) {
            a(cArr, i, i2);
        }
        int i5 = i2 + i;
        if (this.g != '\u0000') {
            i3 = i + 1;
            cArr[i] = this.g;
            this.g = '\u0000';
        } else {
            i4 = this.e - this.d;
            if (i4 < 4 && !a(i4)) {
                return -1;
            }
            i3 = i;
        }
        while (i3 < i5) {
            int i6 = this.d;
            if (this.f) {
                i6 = (this.c[i6 + 3] & NalUnitUtil.EXTENDED_SAR) | (((this.c[i6] << 24) | ((this.c[i6 + 1] & NalUnitUtil.EXTENDED_SAR) << 16)) | ((this.c[i6 + 2] & NalUnitUtil.EXTENDED_SAR) << 8));
            } else {
                i6 = (this.c[i6 + 3] << 24) | (((this.c[i6] & NalUnitUtil.EXTENDED_SAR) | ((this.c[i6 + 1] & NalUnitUtil.EXTENDED_SAR) << 8)) | ((this.c[i6 + 2] & NalUnitUtil.EXTENDED_SAR) << 16));
            }
            this.d += 4;
            if (i6 > 65535) {
                if (i6 > 1114111) {
                    a(i6, i3 - i, "(above " + Integer.toHexString(1114111) + ") ");
                }
                i6 -= 65536;
                i4 = i3 + 1;
                cArr[i3] = (char) (55296 + (i6 >> 10));
                i6 = (i6 & 1023) | 56320;
                if (i4 >= i5) {
                    this.g = (char) i6;
                    break;
                }
            }
            i4 = i3;
            i3 = i4 + 1;
            cArr[i4] = (char) i6;
            if (this.d >= this.e) {
                i4 = i3;
                break;
            }
        }
        i4 = i3;
        i2 = i4 - i;
        this.h += i2;
        return i2;
    }

    private void a(int i, int i2) throws IOException {
        throw new CharConversionException("Unexpected EOF in the middle of a 4-byte UTF-32 char: got " + i + ", needed " + i2 + ", at char #" + this.h + ", byte #" + (this.i + i) + ")");
    }

    private void a(int i, int i2, String str) throws IOException {
        throw new CharConversionException("Invalid UTF-32 character 0x" + Integer.toHexString(i) + str + " at char #" + (this.h + i2) + ", byte #" + ((this.i + this.d) - 1) + ")");
    }

    private boolean a(int i) throws IOException {
        this.i += this.e - i;
        if (i > 0) {
            if (this.d > 0) {
                System.arraycopy(this.c, this.d, this.c, 0, i);
                this.d = 0;
            }
            this.e = i;
        } else {
            this.d = 0;
            int read = this.b == null ? -1 : this.b.read(this.c);
            if (read < 1) {
                this.e = 0;
                if (read >= 0) {
                    b();
                } else if (!this.j) {
                    return false;
                } else {
                    a();
                    return false;
                }
            }
            this.e = read;
        }
        while (this.e < 4) {
            int i2;
            if (this.b == null) {
                i2 = -1;
            } else {
                i2 = this.b.read(this.c, this.e, this.c.length - this.e);
            }
            if (i2 < 1) {
                if (i2 < 0) {
                    if (this.j) {
                        a();
                    }
                    a(this.e, 4);
                }
                b();
            }
            this.e = i2 + this.e;
        }
        return true;
    }

    private void a() {
        byte[] bArr = this.c;
        if (bArr != null) {
            this.c = null;
            this.a.a(bArr);
        }
    }

    private void a(char[] cArr, int i, int i2) throws IOException {
        throw new ArrayIndexOutOfBoundsException("read(buf," + i + "," + i2 + "), cbuf[" + cArr.length + "]");
    }

    private void b() throws IOException {
        throw new IOException("Strange I/O stream, returned 0 bytes on read");
    }
}
