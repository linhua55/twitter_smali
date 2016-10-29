package com.twitter.android.media.camera;

import android.hardware.Camera;
import android.hardware.Camera.PreviewCallback;
import com.twitter.util.h;

/* compiled from: Twttr */
class o implements PreviewCallback {
    final /* synthetic */ m a;

    o(m mVar) {
        this.a = mVar;
    }

    public void onPreviewFrame(byte[] bArr, Camera camera) {
        h.a();
        this.a.m = 2;
    }
}
