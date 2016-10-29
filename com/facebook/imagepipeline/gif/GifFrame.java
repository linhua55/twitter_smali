package com.facebook.imagepipeline.gif;

import android.graphics.Bitmap;
import bq;
import com.facebook.imagepipeline.animated.base.m;
import javax.annotation.concurrent.ThreadSafe;

@ThreadSafe
/* compiled from: Twttr */
public class GifFrame implements m {
    @bq
    private long mNativeContext;

    private native void nativeDispose();

    private native void nativeFinalize();

    private native int nativeGetDisposalMode();

    private native int nativeGetDurationMs();

    private native int nativeGetHeight();

    private native int nativeGetWidth();

    private native int nativeGetXOffset();

    private native int nativeGetYOffset();

    private native boolean nativeHasTransparency();

    private native void nativeRenderFrame(int i, int i2, Bitmap bitmap);

    @bq
    GifFrame(long j) {
        this.mNativeContext = j;
    }

    protected void finalize() {
        nativeFinalize();
    }

    public void a() {
        nativeDispose();
    }

    public void a(int i, int i2, Bitmap bitmap) {
        nativeRenderFrame(i, i2, bitmap);
    }

    public int b() {
        return nativeGetWidth();
    }

    public int c() {
        return nativeGetHeight();
    }

    public int d() {
        return nativeGetXOffset();
    }

    public int e() {
        return nativeGetYOffset();
    }

    public int f() {
        return nativeGetDisposalMode();
    }
}
