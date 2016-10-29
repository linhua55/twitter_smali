package com.twitter.util.serialization;

import android.support.v4.internal.view.SupportMenu;
import android.support.v4.view.InputDeviceCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import java.io.IOException;
import java.nio.ByteBuffer;

/* compiled from: Twttr */
public final class h extends q<h> {
    private ByteBuffer a;

    public /* synthetic */ q b(byte b) throws IOException {
        return a(b);
    }

    public /* synthetic */ q b(double d) throws IOException {
        return a(d);
    }

    public /* synthetic */ q b(float f) throws IOException {
        return a(f);
    }

    public /* synthetic */ q b(int i, String str) throws IOException {
        return a(i, str);
    }

    public /* synthetic */ q b(long j) throws IOException {
        return a(j);
    }

    public /* synthetic */ q b(String str) throws IOException {
        return a(str);
    }

    public /* synthetic */ q b(boolean z) throws IOException {
        return a(z);
    }

    public /* synthetic */ q b(byte[] bArr) throws IOException {
        return a(bArr);
    }

    public /* synthetic */ q d(int i) throws IOException {
        return c(i);
    }

    public /* synthetic */ q e(int i) throws IOException {
        return b(i);
    }

    public /* synthetic */ q f() throws IOException {
        return e();
    }

    public /* synthetic */ q g() throws IOException {
        return d();
    }

    public h() {
        this(new byte[AccessibilityNodeInfoCompat.ACTION_NEXT_HTML_ELEMENT]);
    }

    public h(byte[] bArr) {
        if (bArr == null) {
            bArr = new byte[AccessibilityNodeInfoCompat.ACTION_NEXT_HTML_ELEMENT];
        } else if (bArr.length == 0) {
            throw new IllegalArgumentException("The byte buffer must be non empty.");
        }
        this.a = ByteBuffer.wrap(bArr);
    }

    public byte[] b() {
        byte[] bArr = new byte[this.a.position()];
        this.a.rewind();
        this.a.get(bArr);
        return bArr;
    }

    public boolean a() {
        return true;
    }

    public int c() {
        return this.a.position();
    }

    public byte a(int i) {
        return i < this.a.position() ? e.a(this.a.get(i)) : (byte) 12;
    }

    public h a(byte b) {
        if (b == null) {
            c(e.b);
        } else {
            c(e.a);
            f(1);
            this.a.put(b);
        }
        return this;
    }

    public h a(boolean z) {
        if (z) {
            c(e.d);
        } else {
            c(e.c);
        }
        return this;
    }

    public h b(int i) {
        a((byte) 2, i);
        return this;
    }

    public h a(long j) {
        a((byte) 3, j);
        return this;
    }

    public h a(float f) {
        if (f == 0.0f) {
            c(e.f);
        } else {
            c(e.e);
            f(4);
            this.a.putFloat(f);
        }
        return this;
    }

    public h a(double d) {
        if (d == 0.0d) {
            c(e.h);
        } else {
            c(e.g);
            f(8);
            this.a.putDouble(d);
        }
        return this;
    }

    public h a(String str) {
        if (str == null) {
            d();
        } else if (str.isEmpty()) {
            c(e.j);
        } else {
            c(str);
        }
        return this;
    }

    public h a(byte[] bArr) throws IOException {
        if (bArr == null) {
            d();
        } else if (bArr.length == 0) {
            c(e.k);
        } else {
            a((byte) 14, bArr.length);
            f(bArr.length);
            this.a.put(bArr);
        }
        return this;
    }

    public h d() {
        c(e.i);
        return this;
    }

    public h c(int i) {
        if (i < 0) {
            throw new IllegalArgumentException("The version number is negative: " + i + ".");
        }
        a((byte) 9, i);
        return this;
    }

    public h a(int i, String str) {
        if (i < 0) {
            throw new IllegalArgumentException("The version number is negative: " + i + ".");
        }
        a((byte) 10, i);
        a(str);
        return this;
    }

    public h e() {
        c(e.l);
        return this;
    }

    private void c(byte b) {
        f(1);
        this.a.put(b);
    }

    private void a(byte b, int i) {
        if (i == 0) {
            c(e.a(b, (byte) 1));
        } else if ((i & InputDeviceCompat.SOURCE_ANY) == 0) {
            c(e.a(b, (byte) 2));
            f(1);
            this.a.put((byte) i);
        } else if ((SupportMenu.CATEGORY_MASK & i) == 0) {
            c(e.a(b, (byte) 3));
            f(2);
            this.a.putShort((short) i);
        } else {
            c(e.a(b, (byte) 4));
            f(4);
            this.a.putInt(i);
        }
    }

    private void a(byte b, long j) {
        if ((-4294967296L & j) == 0) {
            a(b, (int) j);
            return;
        }
        c(e.a(b, (byte) 5));
        f(8);
        this.a.putLong(j);
    }

    private void f(int i) {
        if (this.a.remaining() < i) {
            int position = this.a.position();
            Object obj = new byte[(this.a.capacity() * 2)];
            System.arraycopy(this.a.array(), 0, obj, 0, position);
            ByteBuffer wrap = ByteBuffer.wrap(obj);
            wrap.position(position);
            this.a = wrap;
            f(i);
        }
    }

    private void c(String str) {
        int length = str.length();
        int position = this.a.position();
        a((byte) 13, length);
        int i = 0;
        int i2 = 1;
        while (i < length) {
            int charAt = str.charAt(i);
            if (charAt < '\u0080') {
                f(1);
                this.a.put((byte) charAt);
            } else if (charAt < '\u0800') {
                f(2);
                this.a.put((byte) ((charAt >> 6) | 192));
                this.a.put((byte) ((charAt & 63) | AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS));
                i2 = 0;
            } else if (g(charAt)) {
                i2 = i + 1 != length ? str.charAt(i + 1) : 0;
                if (h(charAt) && g(i2) && i(i2)) {
                    i++;
                    f(4);
                    i2 = a(charAt, i2);
                    this.a.put((byte) ((i2 >> 18) | 240));
                    this.a.put((byte) (((i2 >> 12) & 63) | AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS));
                    this.a.put((byte) (((i2 >> 6) & 63) | AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS));
                    this.a.put((byte) ((i2 & 63) | AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS));
                    i2 = i;
                } else {
                    f(1);
                    this.a.put((byte) 63);
                    i2 = i;
                }
                i = i2;
                i2 = 0;
            } else {
                f(3);
                this.a.put((byte) ((charAt >> 12) | 224));
                this.a.put((byte) (((charAt >> 6) & 63) | AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS));
                this.a.put((byte) ((charAt & 63) | AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS));
                i2 = 0;
            }
            i++;
        }
        if (i2 == 0) {
            i2 = this.a.position();
            this.a.position(position);
            a((byte) 8, length);
            this.a.position(i2);
        }
    }

    private static boolean g(int i) {
        return (i & -2048) == 55296;
    }

    private static boolean h(int i) {
        return (i & AccessibilityNodeInfoCompat.ACTION_NEXT_HTML_ELEMENT) == 0;
    }

    private static boolean i(int i) {
        return (i & AccessibilityNodeInfoCompat.ACTION_NEXT_HTML_ELEMENT) != 0;
    }

    private static int a(int i, int i2) {
        return ((i << 10) + i2) - 56613888;
    }
}
