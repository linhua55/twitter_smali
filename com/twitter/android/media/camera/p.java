package com.twitter.android.media.camera;

import android.hardware.Camera;
import android.hardware.Camera.PictureCallback;

/* compiled from: Twttr */
class p implements PictureCallback {
    final /* synthetic */ m a;

    p(m mVar) {
        this.a = mVar;
    }

    public void onPictureTaken(byte[] bArr, Camera camera) {
        if (this.a.f != null) {
            new v(this.a.d, bArr, this.a.k(), this.a.f).execute(new Void[0]);
        }
    }
}
