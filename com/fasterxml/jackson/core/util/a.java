package com.fasterxml.jackson.core.util;

import android.support.v7.widget.helper.ItemTouchHelper.Callback;
import com.google.android.exoplayer.upstream.UdpDataSource;

/* compiled from: Twttr */
public class a {
    private static final int[] c;
    private static final int[] d;
    protected final byte[][] a;
    protected final char[][] b;

    static {
        c = new int[]{UdpDataSource.DEAFULT_SOCKET_TIMEOUT_MILLIS, UdpDataSource.DEAFULT_SOCKET_TIMEOUT_MILLIS, UdpDataSource.DEFAULT_MAX_PACKET_SIZE, UdpDataSource.DEFAULT_MAX_PACKET_SIZE};
        d = new int[]{4000, 4000, Callback.DEFAULT_DRAG_ANIMATION_DURATION, Callback.DEFAULT_DRAG_ANIMATION_DURATION};
    }

    public a() {
        this(4, 4);
    }

    protected a(int i, int i2) {
        this.a = new byte[i][];
        this.b = new char[i2][];
    }

    public final byte[] a(int i) {
        return a(i, 0);
    }

    public byte[] a(int i, int i2) {
        int c = c(i);
        if (i2 < c) {
            i2 = c;
        }
        byte[] bArr = this.a[i];
        if (bArr == null || bArr.length < i2) {
            return e(i2);
        }
        this.a[i] = null;
        return bArr;
    }

    public final void a(int i, byte[] bArr) {
        this.a[i] = bArr;
    }

    public final char[] b(int i) {
        return b(i, 0);
    }

    public char[] b(int i, int i2) {
        int d = d(i);
        if (i2 < d) {
            i2 = d;
        }
        char[] cArr = this.b[i];
        if (cArr == null || cArr.length < i2) {
            return f(i2);
        }
        this.b[i] = null;
        return cArr;
    }

    public void a(int i, char[] cArr) {
        this.b[i] = cArr;
    }

    protected int c(int i) {
        return c[i];
    }

    protected int d(int i) {
        return d[i];
    }

    protected byte[] e(int i) {
        return new byte[i];
    }

    protected char[] f(int i) {
        return new char[i];
    }
}
