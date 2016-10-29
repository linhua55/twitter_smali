package com.facebook.imagepipeline.webp;

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
public class WebPImage implements l {
    private static volatile boolean a;
    @bq
    private long mNativeContext;

    private static native WebPImage nativeCreateFromDirectByteBuffer(ByteBuffer byteBuffer);

    private static native WebPImage nativeCreateFromNativeMemory(long j, int i);

    private native void nativeDispose();

    private native void nativeFinalize();

    private native int nativeGetDuration();

    private native WebPFrame nativeGetFrame(int i);

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
        synchronized (WebPImage.class) {
            if (!a) {
                a = true;
                cf.a("webp");
                cf.a("webpimage");
            }
        }
    }

    @bq
    WebPImage(long j) {
        this.mNativeContext = j;
    }

    protected void finalize() {
        nativeFinalize();
    }

    public static WebPImage a(long j, int i) {
        g();
        bx.a(j != 0);
        return nativeCreateFromNativeMemory(j, i);
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

    public WebPFrame c(int i) {
        return nativeGetFrame(i);
    }

    public int f() {
        return nativeGetSizeInBytes();
    }

    public boolean e() {
        return true;
    }

    public AnimatedDrawableFrameInfo b(int i) {
        WebPFrame c = c(i);
        try {
            DisposalMethod disposalMethod;
            int d = c.d();
            int e = c.e();
            int b = c.b();
            int c2 = c.c();
            boolean g = c.g();
            if (c.f()) {
                disposalMethod = DisposalMethod.DISPOSE_TO_BACKGROUND;
            } else {
                disposalMethod = DisposalMethod.DISPOSE_DO_NOT;
            }
            AnimatedDrawableFrameInfo animatedDrawableFrameInfo = new AnimatedDrawableFrameInfo(i, d, e, b, c2, g, disposalMethod);
            return animatedDrawableFrameInfo;
        } finally {
            c.a();
        }
    }
}
