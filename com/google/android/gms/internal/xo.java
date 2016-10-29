package com.google.android.gms.internal;

import com.facebook.shimmer.b;
import com.google.android.exoplayer.upstream.NetworkLock;
import java.io.IOException;
import java.lang.reflect.Array;

public class xo<M extends xn<M>, T> {
    protected final int a;
    protected final Class<T> b;
    public final int c;
    protected final boolean d;

    int a(Object obj) {
        return this.d ? b(obj) : c(obj);
    }

    void a(Object obj, zzsn com_google_android_gms_internal_zzsn) throws IOException {
        if (this.d) {
            c(obj, com_google_android_gms_internal_zzsn);
        } else {
            b(obj, com_google_android_gms_internal_zzsn);
        }
    }

    protected int b(Object obj) {
        int i = 0;
        int length = Array.getLength(obj);
        for (int i2 = 0; i2 < length; i2++) {
            if (Array.get(obj, i2) != null) {
                i += c(Array.get(obj, i2));
            }
        }
        return i;
    }

    protected void b(Object obj, zzsn com_google_android_gms_internal_zzsn) {
        try {
            com_google_android_gms_internal_zzsn.e(this.c);
            switch (this.a) {
                case NetworkLock.DOWNLOAD_PRIORITY /*10*/:
                    xs xsVar = (xs) obj;
                    int b = xv.b(this.c);
                    com_google_android_gms_internal_zzsn.a(xsVar);
                    com_google_android_gms_internal_zzsn.c(b, 4);
                    return;
                case b.ShimmerFrameLayout_relative_width /*11*/:
                    com_google_android_gms_internal_zzsn.b((xs) obj);
                    return;
                default:
                    throw new IllegalArgumentException("Unknown type " + this.a);
            }
        } catch (Throwable e) {
            throw new IllegalStateException(e);
        }
        throw new IllegalStateException(e);
    }

    protected int c(Object obj) {
        int b = xv.b(this.c);
        switch (this.a) {
            case NetworkLock.DOWNLOAD_PRIORITY /*10*/:
                return zzsn.b(b, (xs) obj);
            case b.ShimmerFrameLayout_relative_width /*11*/:
                return zzsn.c(b, (xs) obj);
            default:
                throw new IllegalArgumentException("Unknown type " + this.a);
        }
    }

    protected void c(Object obj, zzsn com_google_android_gms_internal_zzsn) {
        int length = Array.getLength(obj);
        for (int i = 0; i < length; i++) {
            Object obj2 = Array.get(obj, i);
            if (obj2 != null) {
                b(obj2, com_google_android_gms_internal_zzsn);
            }
        }
    }
}
