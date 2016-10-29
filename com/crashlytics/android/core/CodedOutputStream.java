package com.crashlytics.android.core;

import com.google.android.exoplayer.util.MpegAudioHeader;
import com.google.android.exoplayer.util.NalUnitUtil;
import java.io.Flushable;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* compiled from: Twttr */
final class CodedOutputStream implements Flushable {
    private final byte[] a;
    private final int b;
    private int c;
    private final OutputStream d;

    /* compiled from: Twttr */
    class OutOfSpaceException extends IOException {
        private static final long serialVersionUID = -6947486886997889499L;

        OutOfSpaceException() {
            super("CodedOutputStream was writing to a flat byte array and ran out of space.");
        }
    }

    private CodedOutputStream(OutputStream outputStream, byte[] bArr) {
        this.d = outputStream;
        this.a = bArr;
        this.c = 0;
        this.b = bArr.length;
    }

    public static CodedOutputStream a(OutputStream outputStream) {
        return a(outputStream, (int) MpegAudioHeader.MAX_FRAME_SIZE_BYTES);
    }

    public static CodedOutputStream a(OutputStream outputStream, int i) {
        return new CodedOutputStream(outputStream, new byte[i]);
    }

    public void a(int i, float f) throws IOException {
        g(i, 5);
        a(f);
    }

    public void a(int i, long j) throws IOException {
        g(i, 0);
        a(j);
    }

    public void a(int i, boolean z) throws IOException {
        g(i, 0);
        a(z);
    }

    public void a(int i, b bVar) throws IOException {
        g(i, 2);
        a(bVar);
    }

    public void a(int i, int i2) throws IOException {
        g(i, 0);
        b(i2);
    }

    public void b(int i, int i2) throws IOException {
        g(i, 0);
        c(i2);
    }

    public void c(int i, int i2) throws IOException {
        g(i, 0);
        d(i2);
    }

    public void a(float f) throws IOException {
        m(Float.floatToRawIntBits(f));
    }

    public void a(long j) throws IOException {
        c(j);
    }

    public void a(int i) throws IOException {
        if (i >= 0) {
            k(i);
        } else {
            c((long) i);
        }
    }

    public void a(boolean z) throws IOException {
        i(z ? 1 : 0);
    }

    public void a(b bVar) throws IOException {
        k(bVar.a());
        c(bVar);
    }

    public void b(int i) throws IOException {
        k(i);
    }

    public void c(int i) throws IOException {
        a(i);
    }

    public void d(int i) throws IOException {
        k(n(i));
    }

    public static int b(int i, float f) {
        return j(i) + b(f);
    }

    public static int b(int i, long j) {
        return j(i) + b(j);
    }

    public static int b(int i, boolean z) {
        return j(i) + b(z);
    }

    public static int b(int i, b bVar) {
        return j(i) + b(bVar);
    }

    public static int d(int i, int i2) {
        return j(i) + f(i2);
    }

    public static int e(int i, int i2) {
        return j(i) + g(i2);
    }

    public static int f(int i, int i2) {
        return j(i) + h(i2);
    }

    public static int b(float f) {
        return 4;
    }

    public static int b(long j) {
        return d(j);
    }

    public static int e(int i) {
        if (i >= 0) {
            return l(i);
        }
        return 10;
    }

    public static int b(boolean z) {
        return 1;
    }

    public static int b(b bVar) {
        return l(bVar.a()) + bVar.a();
    }

    public static int f(int i) {
        return l(i);
    }

    public static int g(int i) {
        return e(i);
    }

    public static int h(int i) {
        return l(n(i));
    }

    private void a() throws IOException {
        if (this.d == null) {
            throw new OutOfSpaceException();
        }
        this.d.write(this.a, 0, this.c);
        this.c = 0;
    }

    public void flush() throws IOException {
        if (this.d != null) {
            a();
        }
    }

    public void a(byte b) throws IOException {
        if (this.c == this.b) {
            a();
        }
        byte[] bArr = this.a;
        int i = this.c;
        this.c = i + 1;
        bArr[i] = b;
    }

    public void i(int i) throws IOException {
        a((byte) i);
    }

    public void c(b bVar) throws IOException {
        a(bVar, 0, bVar.a());
    }

    public void a(byte[] bArr) throws IOException {
        a(bArr, 0, bArr.length);
    }

    public void a(byte[] bArr, int i, int i2) throws IOException {
        if (this.b - this.c >= i2) {
            System.arraycopy(bArr, i, this.a, this.c, i2);
            this.c += i2;
            return;
        }
        int i3 = this.b - this.c;
        System.arraycopy(bArr, i, this.a, this.c, i3);
        int i4 = i + i3;
        i3 = i2 - i3;
        this.c = this.b;
        a();
        if (i3 <= this.b) {
            System.arraycopy(bArr, i4, this.a, 0, i3);
            this.c = i3;
            return;
        }
        this.d.write(bArr, i4, i3);
    }

    public void a(b bVar, int i, int i2) throws IOException {
        if (this.b - this.c >= i2) {
            bVar.a(this.a, i, this.c, i2);
            this.c += i2;
            return;
        }
        int i3 = this.b - this.c;
        bVar.a(this.a, i, this.c, i3);
        int i4 = i + i3;
        i3 = i2 - i3;
        this.c = this.b;
        a();
        if (i3 <= this.b) {
            bVar.a(this.a, i4, 0, i3);
            this.c = i3;
            return;
        }
        InputStream b = bVar.b();
        if (((long) i4) != b.skip((long) i4)) {
            throw new IllegalStateException("Skip failed.");
        }
        while (i3 > 0) {
            i4 = Math.min(i3, this.b);
            int read = b.read(this.a, 0, i4);
            if (read != i4) {
                throw new IllegalStateException("Read failed.");
            }
            this.d.write(this.a, 0, read);
            i3 -= read;
        }
    }

    public void g(int i, int i2) throws IOException {
        k(cg.a(i, i2));
    }

    public static int j(int i) {
        return l(cg.a(i, 0));
    }

    public void k(int i) throws IOException {
        while ((i & -128) != 0) {
            i((i & 127) | 128);
            i >>>= 7;
        }
        i(i);
    }

    public static int l(int i) {
        if ((i & -128) == 0) {
            return 1;
        }
        if ((i & -16384) == 0) {
            return 2;
        }
        if ((-2097152 & i) == 0) {
            return 3;
        }
        if ((-268435456 & i) == 0) {
            return 4;
        }
        return 5;
    }

    public void c(long j) throws IOException {
        while ((-128 & j) != 0) {
            i((((int) j) & 127) | 128);
            j >>>= 7;
        }
        i((int) j);
    }

    public static int d(long j) {
        if ((-128 & j) == 0) {
            return 1;
        }
        if ((-16384 & j) == 0) {
            return 2;
        }
        if ((-2097152 & j) == 0) {
            return 3;
        }
        if ((-268435456 & j) == 0) {
            return 4;
        }
        if ((-34359738368L & j) == 0) {
            return 5;
        }
        if ((-4398046511104L & j) == 0) {
            return 6;
        }
        if ((-562949953421312L & j) == 0) {
            return 7;
        }
        if ((-72057594037927936L & j) == 0) {
            return 8;
        }
        if ((Long.MIN_VALUE & j) == 0) {
            return 9;
        }
        return 10;
    }

    public void m(int i) throws IOException {
        i(i & NalUnitUtil.EXTENDED_SAR);
        i((i >> 8) & NalUnitUtil.EXTENDED_SAR);
        i((i >> 16) & NalUnitUtil.EXTENDED_SAR);
        i((i >> 24) & NalUnitUtil.EXTENDED_SAR);
    }

    public static int n(int i) {
        return (i << 1) ^ (i >> 31);
    }
}
