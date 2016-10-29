package com.twitter.android.media.camera;

import com.twitter.android.media.widget.g;

/* compiled from: Twttr */
class f implements g {
    final /* synthetic */ CameraFragment a;

    f(CameraFragment cameraFragment) {
        this.a = cameraFragment;
    }

    public void a(int i) {
        CameraFragment.a(this.a, "toggle_mode");
        this.a.c(i);
    }
}
