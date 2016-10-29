package com.facebook.imagepipeline.gif;

import bq;
import com.facebook.imagepipeline.animated.base.AnimatedDrawableFrameInfo;
import com.facebook.imagepipeline.animated.base.AnimatedDrawableFrameInfo.DisposalMethod;
import com.facebook.imagepipeline.animated.base.l;
import com.facebook.imagepipeline.animated.base.m;
import defpackage.bx;
import defpackage.cf;
import java.nio.ByteBuffer;
import javax.annotation.concurrent.ThreadSafe;

@ThreadSafe
/* compiled from: Twttr */
public class GifImage implements l {
    private static volatile boolean a;
    @bq
    private long mNativeContext;

    private static native GifImage nativeCreateFromDirectByteBuffer(ByteBuffer byteBuffer);

    private static native GifImage nativeCreateFromNativeMemory(long j, int i);

    private native void nativeDispose();

    private native void nativeFinalize();

    private native int nativeGetDuration();

    private native GifFrame nativeGetFrame(int i);

    private native int nativeGetFrameCount();

    private native int[] nativeGetFrameDurations();

    private native int nativeGetHeight();

    private native int nativeGetLoopCount();

    private native int nativeGetSizeInBytes();

    private native int nativeGetWidth();

    public /* synthetic */ m a(int i) {
        return c(i);
    }

    private static synchronized void g() {
        synchronized (GifImage.class) {
            if (!a) {
                a = true;
                cf.a("gifimage");
            }
        }
    }

    public static GifImage a(long j, int i) {
        g();
        bx.a(j != 0);
        return nativeCreateFromNativeMemory(j, i);
    }

    @bq
    GifImage(long j) {
        this.mNativeContext = j;
    }

    protected void finalize() {
        nativeFinalize();
    }

    public int a() {
        return nativeGetWidth();
    }

    public int b() {
        return nativeGetHeight();
    }

    public int c() {
        return nativeGetFrameCount();
    }

    public int[] d() {
        return nativeGetFrameDurations();
    }

    public GifFrame c(int i) {
        return nativeGetFrame(i);
    }

    public boolean e() {
        return false;
    }

    public int f() {
        return nativeGetSizeInBytes();
    }

    public AnimatedDrawableFrameInfo b(int i) {
        GifFrame c = c(i);
        try {
            AnimatedDrawableFrameInfo animatedDrawableFrameInfo = new AnimatedDrawableFrameInfo(i, c.d(), c.e(), c.b(), c.c(), true, d(c.f()));
            return animatedDrawableFrameInfo;
        } finally {
            c.a();
        }
    }

    private static DisposalMethod d(int i) {
        if (i == 0) {
            return DisposalMethod.DISPOSE_DO_NOT;
        }
        if (i == 1) {
            return DisposalMethod.DISPOSE_DO_NOT;
        }
        if (i == 2) {
            return DisposalMethod.DISPOSE_TO_BACKGROUND;
        }
        if (i == 3) {
            return DisposalMethod.DISPOSE_TO_PREVIOUS;
        }
        return DisposalMethod.DISPOSE_DO_NOT;
    }
}
