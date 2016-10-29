package com.fasterxml.jackson.core.io;

import com.google.android.exoplayer.extractor.ts.PsExtractor;
import java.io.IOException;
import java.io.OutputStream;
import java.io.Writer;

/* compiled from: Twttr */
public final class h extends Writer {
    private final b a;
    private OutputStream b;
    private byte[] c;
    private final int d;
    private int e;
    private int f;

    public h(b bVar, OutputStream outputStream) {
        this.f = 0;
        this.a = bVar;
        this.b = outputStream;
        this.c = bVar.f();
        this.d = this.c.length - 4;
        this.e = 0;
    }

    public Writer append(char c) throws IOException {
        write((int) c);
        return this;
    }

    public void close() throws IOException {
        if (this.b != null) {
            if (this.e > 0) {
                this.b.write(this.c, 0, this.e);
                this.e = 0;
            }
            OutputStream outputStream = this.b;
            this.b = null;
            byte[] bArr = this.c;
            if (bArr != null) {
                this.c = null;
                this.a.b(bArr);
            }
            outputStream.close();
            int i = this.f;
            this.f = 0;
            if (i > 0) {
                b(i);
            }
        }
    }

    public void flush() throws IOException {
        if (this.b != null) {
            if (this.e > 0) {
                this.b.write(this.c, 0, this.e);
                this.e = 0;
            }
            this.b.flush();
        }
    }

    public void write(char[] cArr) throws IOException {
        write(cArr, 0, cArr.length);
    }

    public void write(char[] cArr, int i, int i2) throws IOException {
        if (i2 >= 2) {
            int i3;
            if (this.f > 0) {
                i3 = i + 1;
                i2--;
                write(a(cArr[i]));
                i = i3;
            }
            i3 = this.e;
            byte[] bArr = this.c;
            int i4 = this.d;
            int i5 = i2 + i;
            int i6 = i;
            while (i6 < i5) {
                int i7;
                int i8;
                if (i3 >= i4) {
                    this.b.write(bArr, 0, i3);
                    i3 = 0;
                }
                int i9 = i6 + 1;
                char c = cArr[i6];
                char c2;
                if (c < '\u0080') {
                    i7 = i3 + 1;
                    bArr[i3] = (byte) c;
                    i6 = i5 - i9;
                    i3 = i4 - i7;
                    if (i6 <= i3) {
                        i3 = i6;
                    }
                    i8 = i3 + i9;
                    i6 = i7;
                    i3 = i9;
                    while (i3 < i8) {
                        i9 = i3 + 1;
                        char c3 = cArr[i3];
                        if (c3 >= '\u0080') {
                            c2 = c3;
                            i3 = i6;
                            i6 = i9;
                            i9 = c2;
                        } else {
                            i7 = i6 + 1;
                            bArr[i6] = (byte) c3;
                            i6 = i7;
                            i3 = i9;
                        }
                    }
                    int i10 = i6;
                    i6 = i3;
                    i3 = i10;
                } else {
                    c2 = c;
                    i6 = i9;
                    char c4 = c2;
                }
                if (i9 < 2048) {
                    i7 = i3 + 1;
                    bArr[i3] = (byte) ((i9 >> 6) | PsExtractor.AUDIO_STREAM);
                    i3 = i7 + 1;
                    bArr[i7] = (byte) ((i9 & 63) | 128);
                } else if (i9 < 55296 || i9 > 57343) {
                    i7 = i3 + 1;
                    bArr[i3] = (byte) ((i9 >> 12) | PsExtractor.VIDEO_STREAM);
                    i8 = i7 + 1;
                    bArr[i7] = (byte) (((i9 >> 6) & 63) | 128);
                    i3 = i8 + 1;
                    bArr[i8] = (byte) ((i9 & 63) | 128);
                } else {
                    if (i9 > 56319) {
                        this.e = i3;
                        b(i9);
                    }
                    this.f = i9;
                    if (i6 >= i5) {
                        break;
                    }
                    i9 = i6 + 1;
                    i6 = a(cArr[i6]);
                    if (i6 > 1114111) {
                        this.e = i3;
                        b(i6);
                    }
                    i7 = i3 + 1;
                    bArr[i3] = (byte) ((i6 >> 18) | PsExtractor.VIDEO_STREAM_MASK);
                    i3 = i7 + 1;
                    bArr[i7] = (byte) (((i6 >> 12) & 63) | 128);
                    i7 = i3 + 1;
                    bArr[i3] = (byte) (((i6 >> 6) & 63) | 128);
                    i3 = i7 + 1;
                    bArr[i7] = (byte) ((i6 & 63) | 128);
                    i6 = i9;
                }
            }
            this.e = i3;
        } else if (i2 == 1) {
            write(cArr[i]);
        }
    }

    public void write(int i) throws IOException {
        if (this.f > 0) {
            i = a(i);
        } else if (i >= 55296 && i <= 57343) {
            if (i > 56319) {
                b(i);
            }
            this.f = i;
            return;
        }
        if (this.e >= this.d) {
            this.b.write(this.c, 0, this.e);
            this.e = 0;
        }
        if (i < 128) {
            byte[] bArr = this.c;
            int i2 = this.e;
            this.e = i2 + 1;
            bArr[i2] = (byte) i;
            return;
        }
        int i3 = this.e;
        int i4;
        if (i < 2048) {
            i4 = i3 + 1;
            this.c[i3] = (byte) ((i >> 6) | PsExtractor.AUDIO_STREAM);
            i3 = i4 + 1;
            this.c[i4] = (byte) ((i & 63) | 128);
        } else if (i <= 65535) {
            i4 = i3 + 1;
            this.c[i3] = (byte) ((i >> 12) | PsExtractor.VIDEO_STREAM);
            i2 = i4 + 1;
            this.c[i4] = (byte) (((i >> 6) & 63) | 128);
            i3 = i2 + 1;
            this.c[i2] = (byte) ((i & 63) | 128);
        } else {
            if (i > 1114111) {
                b(i);
            }
            i4 = i3 + 1;
            this.c[i3] = (byte) ((i >> 18) | PsExtractor.VIDEO_STREAM_MASK);
            i2 = i4 + 1;
            this.c[i4] = (byte) (((i >> 12) & 63) | 128);
            i4 = i2 + 1;
            this.c[i2] = (byte) (((i >> 6) & 63) | 128);
            i3 = i4 + 1;
            this.c[i4] = (byte) ((i & 63) | 128);
        }
        this.e = i3;
    }

    public void write(String str) throws IOException {
        write(str, 0, str.length());
    }

    public void write(String str, int i, int i2) throws IOException {
        if (i2 >= 2) {
            int i3;
            if (this.f > 0) {
                i3 = i + 1;
                i2--;
                write(a(str.charAt(i)));
                i = i3;
            }
            i3 = this.e;
            byte[] bArr = this.c;
            int i4 = this.d;
            int i5 = i2 + i;
            int i6 = i;
            while (i6 < i5) {
                int i7;
                int i8;
                if (i3 >= i4) {
                    this.b.write(bArr, 0, i3);
                    i3 = 0;
                }
                int i9 = i6 + 1;
                char charAt = str.charAt(i6);
                char c;
                if (charAt < '\u0080') {
                    i7 = i3 + 1;
                    bArr[i3] = (byte) charAt;
                    i6 = i5 - i9;
                    i3 = i4 - i7;
                    if (i6 <= i3) {
                        i3 = i6;
                    }
                    i8 = i3 + i9;
                    i6 = i7;
                    i3 = i9;
                    while (i3 < i8) {
                        i9 = i3 + 1;
                        char charAt2 = str.charAt(i3);
                        if (charAt2 >= '\u0080') {
                            c = charAt2;
                            i3 = i6;
                            i6 = i9;
                            i9 = c;
                        } else {
                            i7 = i6 + 1;
                            bArr[i6] = (byte) charAt2;
                            i6 = i7;
                            i3 = i9;
                        }
                    }
                    int i10 = i6;
                    i6 = i3;
                    i3 = i10;
                } else {
                    c = charAt;
                    i6 = i9;
                    char c2 = c;
                }
                if (i9 < 2048) {
                    i7 = i3 + 1;
                    bArr[i3] = (byte) ((i9 >> 6) | PsExtractor.AUDIO_STREAM);
                    i3 = i7 + 1;
                    bArr[i7] = (byte) ((i9 & 63) | 128);
                } else if (i9 < 55296 || i9 > 57343) {
                    i7 = i3 + 1;
                    bArr[i3] = (byte) ((i9 >> 12) | PsExtractor.VIDEO_STREAM);
                    i8 = i7 + 1;
                    bArr[i7] = (byte) (((i9 >> 6) & 63) | 128);
                    i3 = i8 + 1;
                    bArr[i8] = (byte) ((i9 & 63) | 128);
                } else {
                    if (i9 > 56319) {
                        this.e = i3;
                        b(i9);
                    }
                    this.f = i9;
                    if (i6 >= i5) {
                        break;
                    }
                    i9 = i6 + 1;
                    i6 = a(str.charAt(i6));
                    if (i6 > 1114111) {
                        this.e = i3;
                        b(i6);
                    }
                    i7 = i3 + 1;
                    bArr[i3] = (byte) ((i6 >> 18) | PsExtractor.VIDEO_STREAM_MASK);
                    i3 = i7 + 1;
                    bArr[i7] = (byte) (((i6 >> 12) & 63) | 128);
                    i7 = i3 + 1;
                    bArr[i3] = (byte) (((i6 >> 6) & 63) | 128);
                    i3 = i7 + 1;
                    bArr[i7] = (byte) ((i6 & 63) | 128);
                    i6 = i9;
                }
            }
            this.e = i3;
        } else if (i2 == 1) {
            write(str.charAt(i));
        }
    }

    protected int a(int i) throws IOException {
        int i2 = this.f;
        this.f = 0;
        if (i >= 56320 && i <= 57343) {
            return (((i2 - 55296) << 10) + 65536) + (i - 56320);
        }
        throw new IOException("Broken surrogate pair: first char 0x" + Integer.toHexString(i2) + ", second 0x" + Integer.toHexString(i) + "; illegal combination");
    }

    protected static void b(int i) throws IOException {
        throw new IOException(c(i));
    }

    protected static String c(int i) {
        if (i > 1114111) {
            return "Illegal character point (0x" + Integer.toHexString(i) + ") to output; max is 0x10FFFF as per RFC 4627";
        }
        if (i < 55296) {
            return "Illegal character point (0x" + Integer.toHexString(i) + ") to output";
        }
        if (i <= 56319) {
            return "Unmatched first part of surrogate pair (0x" + Integer.toHexString(i) + ")";
        }
        return "Unmatched second part of surrogate pair (0x" + Integer.toHexString(i) + ")";
    }
}
