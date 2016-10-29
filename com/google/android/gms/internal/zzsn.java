package com.google.android.gms.internal;

import com.google.android.exoplayer.extractor.ts.PsExtractor;
import java.io.IOException;
import java.nio.BufferOverflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.ReadOnlyBufferException;

public final class zzsn {
    private final ByteBuffer a;

    public class zza extends IOException {
        zza(int i, int i2) {
            super("CodedOutputStream was writing to a flat byte array and ran out of space (pos " + i + " limit " + i2 + ").");
        }
    }

    private zzsn(ByteBuffer byteBuffer) {
        this.a = byteBuffer;
        this.a.order(ByteOrder.LITTLE_ENDIAN);
    }

    private zzsn(byte[] bArr, int i, int i2) {
        this(ByteBuffer.wrap(bArr, i, i2));
    }

    private static int a(CharSequence charSequence) {
        int length = charSequence.length();
        int i = 0;
        while (i < length && charSequence.charAt(i) < '\u0080') {
            i++;
        }
        int i2 = i;
        i = length;
        while (i2 < length) {
            char charAt = charSequence.charAt(i2);
            if (charAt >= '\u0800') {
                i += a(charSequence, i2);
                break;
            }
            i2++;
            i = ((127 - charAt) >>> 31) + i;
        }
        if (i >= length) {
            return i;
        }
        throw new IllegalArgumentException("UTF-8 length does not fit in int: " + (((long) i) + 4294967296L));
    }

    private static int a(CharSequence charSequence, int i) {
        int length = charSequence.length();
        int i2 = 0;
        int i3 = i;
        while (i3 < length) {
            char charAt = charSequence.charAt(i3);
            if (charAt < '\u0800') {
                i2 += (127 - charAt) >>> 31;
            } else {
                i2 += 2;
                if ('\ud800' <= charAt && charAt <= '\udfff') {
                    if (Character.codePointAt(charSequence, i3) < 65536) {
                        throw new IllegalArgumentException("Unpaired surrogate at index " + i3);
                    }
                    i3++;
                }
            }
            i3++;
        }
        return i2;
    }

    private static int a(CharSequence charSequence, byte[] bArr, int i, int i2) {
        int length = charSequence.length();
        int i3 = 0;
        int i4 = i + i2;
        while (i3 < length && i3 + i < i4) {
            char charAt = charSequence.charAt(i3);
            if (charAt >= '\u0080') {
                break;
            }
            bArr[i + i3] = (byte) charAt;
            i3++;
        }
        if (i3 == length) {
            return i + length;
        }
        int i5 = i + i3;
        while (i3 < length) {
            int i6;
            char charAt2 = charSequence.charAt(i3);
            if (charAt2 < '\u0080' && i5 < i4) {
                i6 = i5 + 1;
                bArr[i5] = (byte) charAt2;
            } else if (charAt2 < '\u0800' && i5 <= i4 - 2) {
                r6 = i5 + 1;
                bArr[i5] = (byte) ((charAt2 >>> 6) | 960);
                i6 = r6 + 1;
                bArr[r6] = (byte) ((charAt2 & 63) | 128);
            } else if ((charAt2 < '\ud800' || '\udfff' < charAt2) && i5 <= i4 - 3) {
                i6 = i5 + 1;
                bArr[i5] = (byte) ((charAt2 >>> 12) | 480);
                i5 = i6 + 1;
                bArr[i6] = (byte) (((charAt2 >>> 6) & 63) | 128);
                i6 = i5 + 1;
                bArr[i5] = (byte) ((charAt2 & 63) | 128);
            } else if (i5 <= i4 - 4) {
                if (i3 + 1 != charSequence.length()) {
                    i3++;
                    charAt = charSequence.charAt(i3);
                    if (Character.isSurrogatePair(charAt2, charAt)) {
                        int toCodePoint = Character.toCodePoint(charAt2, charAt);
                        i6 = i5 + 1;
                        bArr[i5] = (byte) ((toCodePoint >>> 18) | PsExtractor.VIDEO_STREAM_MASK);
                        i5 = i6 + 1;
                        bArr[i6] = (byte) (((toCodePoint >>> 12) & 63) | 128);
                        r6 = i5 + 1;
                        bArr[i5] = (byte) (((toCodePoint >>> 6) & 63) | 128);
                        i6 = r6 + 1;
                        bArr[r6] = (byte) ((toCodePoint & 63) | 128);
                    }
                }
                throw new IllegalArgumentException("Unpaired surrogate at index " + (i3 - 1));
            } else if ('\ud800' > charAt2 || charAt2 > '\udfff' || (i3 + 1 != charSequence.length() && Character.isSurrogatePair(charAt2, charSequence.charAt(i3 + 1)))) {
                throw new ArrayIndexOutOfBoundsException("Failed writing " + charAt2 + " at index " + i5);
            } else {
                throw new IllegalArgumentException("Unpaired surrogate at index " + i3);
            }
            i3++;
            i5 = i6;
        }
        return i5;
    }

    public static zzsn a(byte[] bArr) {
        return a(bArr, 0, bArr.length);
    }

    public static zzsn a(byte[] bArr, int i, int i2) {
        return new zzsn(bArr, i, i2);
    }

    private static void a(CharSequence charSequence, ByteBuffer byteBuffer) {
        if (byteBuffer.isReadOnly()) {
            throw new ReadOnlyBufferException();
        } else if (byteBuffer.hasArray()) {
            try {
                byteBuffer.position(a(charSequence, byteBuffer.array(), byteBuffer.arrayOffset() + byteBuffer.position(), byteBuffer.remaining()) - byteBuffer.arrayOffset());
            } catch (Throwable e) {
                BufferOverflowException bufferOverflowException = new BufferOverflowException();
                bufferOverflowException.initCause(e);
                throw bufferOverflowException;
            }
        } else {
            b(charSequence, byteBuffer);
        }
    }

    public static int b(float f) {
        return 4;
    }

    public static int b(int i) {
        return i >= 0 ? f(i) : 10;
    }

    public static int b(int i, float f) {
        return d(i) + b(f);
    }

    public static int b(int i, int i2) {
        return d(i) + b(i2);
    }

    public static int b(int i, xs xsVar) {
        return (d(i) * 2) + c(xsVar);
    }

    public static int b(int i, String str) {
        return d(i) + b(str);
    }

    public static int b(int i, boolean z) {
        return d(i) + b(z);
    }

    public static int b(int i, byte[] bArr) {
        return d(i) + c(bArr);
    }

    public static int b(String str) {
        int a = a((CharSequence) str);
        return a + f(a);
    }

    public static int b(boolean z) {
        return 1;
    }

    private static void b(CharSequence charSequence, ByteBuffer byteBuffer) {
        int length = charSequence.length();
        int i = 0;
        while (i < length) {
            char charAt = charSequence.charAt(i);
            if (charAt < '\u0080') {
                byteBuffer.put((byte) charAt);
            } else if (charAt < '\u0800') {
                byteBuffer.put((byte) ((charAt >>> 6) | 960));
                byteBuffer.put((byte) ((charAt & 63) | 128));
            } else if (charAt < '\ud800' || '\udfff' < charAt) {
                byteBuffer.put((byte) ((charAt >>> 12) | 480));
                byteBuffer.put((byte) (((charAt >>> 6) & 63) | 128));
                byteBuffer.put((byte) ((charAt & 63) | 128));
            } else {
                if (i + 1 != charSequence.length()) {
                    i++;
                    char charAt2 = charSequence.charAt(i);
                    if (Character.isSurrogatePair(charAt, charAt2)) {
                        int toCodePoint = Character.toCodePoint(charAt, charAt2);
                        byteBuffer.put((byte) ((toCodePoint >>> 18) | PsExtractor.VIDEO_STREAM_MASK));
                        byteBuffer.put((byte) (((toCodePoint >>> 12) & 63) | 128));
                        byteBuffer.put((byte) (((toCodePoint >>> 6) & 63) | 128));
                        byteBuffer.put((byte) ((toCodePoint & 63) | 128));
                    }
                }
                throw new IllegalArgumentException("Unpaired surrogate at index " + (i - 1));
            }
            i++;
        }
    }

    public static int c(int i, xs xsVar) {
        return d(i) + d(xsVar);
    }

    public static int c(xs xsVar) {
        return xsVar.e();
    }

    public static int c(byte[] bArr) {
        return f(bArr.length) + bArr.length;
    }

    public static int d(int i) {
        return f(xv.a(i, 0));
    }

    public static int d(int i, long j) {
        return d(i) + e(j);
    }

    public static int d(long j) {
        return h(j);
    }

    public static int d(xs xsVar) {
        int e = xsVar.e();
        return e + f(e);
    }

    public static int e(int i, long j) {
        return d(i) + f(j);
    }

    public static int e(long j) {
        return h(j);
    }

    public static int f(int i) {
        return (i & -128) == 0 ? 1 : (i & -16384) == 0 ? 2 : (-2097152 & i) == 0 ? 3 : (-268435456 & i) == 0 ? 4 : 5;
    }

    public static int f(long j) {
        return h(i(j));
    }

    public static int h(long j) {
        return (-128 & j) == 0 ? 1 : (-16384 & j) == 0 ? 2 : (-2097152 & j) == 0 ? 3 : (-268435456 & j) == 0 ? 4 : (-34359738368L & j) == 0 ? 5 : (-4398046511104L & j) == 0 ? 6 : (-562949953421312L & j) == 0 ? 7 : (-72057594037927936L & j) == 0 ? 8 : (Long.MIN_VALUE & j) == 0 ? 9 : 10;
    }

    public static long i(long j) {
        return (j << 1) ^ (j >> 63);
    }

    public int a() {
        return this.a.remaining();
    }

    public void a(byte b) throws IOException {
        if (this.a.hasRemaining()) {
            this.a.put(b);
            return;
        }
        throw new zza(this.a.position(), this.a.limit());
    }

    public void a(float f) throws IOException {
        g(Float.floatToIntBits(f));
    }

    public void a(int i) throws IOException {
        if (i >= 0) {
            e(i);
        } else {
            g((long) i);
        }
    }

    public void a(int i, float f) throws IOException {
        c(i, 5);
        a(f);
    }

    public void a(int i, int i2) throws IOException {
        c(i, 0);
        a(i2);
    }

    public void a(int i, long j) throws IOException {
        c(i, 0);
        a(j);
    }

    public void a(int i, xs xsVar) throws IOException {
        c(i, 2);
        b(xsVar);
    }

    public void a(int i, String str) throws IOException {
        c(i, 2);
        a(str);
    }

    public void a(int i, boolean z) throws IOException {
        c(i, 0);
        a(z);
    }

    public void a(int i, byte[] bArr) throws IOException {
        c(i, 2);
        b(bArr);
    }

    public void a(long j) throws IOException {
        g(j);
    }

    public void a(xs xsVar) throws IOException {
        xsVar.a(this);
    }

    public void a(String str) throws IOException {
        try {
            int f = f(str.length());
            if (f == f(str.length() * 3)) {
                int position = this.a.position();
                if (this.a.remaining() < f) {
                    throw new zza(f + position, this.a.limit());
                }
                this.a.position(position + f);
                a((CharSequence) str, this.a);
                int position2 = this.a.position();
                this.a.position(position);
                e((position2 - position) - f);
                this.a.position(position2);
                return;
            }
            e(a((CharSequence) str));
            a((CharSequence) str, this.a);
        } catch (Throwable e) {
            zza com_google_android_gms_internal_zzsn_zza = new zza(this.a.position(), this.a.limit());
            com_google_android_gms_internal_zzsn_zza.initCause(e);
            throw com_google_android_gms_internal_zzsn_zza;
        }
    }

    public void a(boolean z) throws IOException {
        c(z ? 1 : 0);
    }

    public void b() {
        if (a() != 0) {
            throw new IllegalStateException("Did not write as much data as expected.");
        }
    }

    public void b(int i, long j) throws IOException {
        c(i, 0);
        b(j);
    }

    public void b(long j) throws IOException {
        g(j);
    }

    public void b(xs xsVar) throws IOException {
        e(xsVar.d());
        xsVar.a(this);
    }

    public void b(byte[] bArr) throws IOException {
        e(bArr.length);
        d(bArr);
    }

    public void b(byte[] bArr, int i, int i2) throws IOException {
        if (this.a.remaining() >= i2) {
            this.a.put(bArr, i, i2);
            return;
        }
        throw new zza(this.a.position(), this.a.limit());
    }

    public void c(int i) throws IOException {
        a((byte) i);
    }

    public void c(int i, int i2) throws IOException {
        e(xv.a(i, i2));
    }

    public void c(int i, long j) throws IOException {
        c(i, 0);
        c(j);
    }

    public void c(long j) throws IOException {
        g(i(j));
    }

    public void d(byte[] bArr) throws IOException {
        b(bArr, 0, bArr.length);
    }

    public void e(int i) throws IOException {
        while ((i & -128) != 0) {
            c((i & 127) | 128);
            i >>>= 7;
        }
        c(i);
    }

    public void g(int i) throws IOException {
        if (this.a.remaining() < 4) {
            throw new zza(this.a.position(), this.a.limit());
        }
        this.a.putInt(i);
    }

    public void g(long j) throws IOException {
        while ((-128 & j) != 0) {
            c((((int) j) & 127) | 128);
            j >>>= 7;
        }
        c((int) j);
    }
}
