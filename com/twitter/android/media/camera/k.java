package com.twitter.android.media.camera;

import bbu;
import com.twitter.android.media.widget.n;
import com.twitter.library.scribe.TwitterScribeLog;

/* compiled from: Twttr */
class k implements n {
    final /* synthetic */ CameraFragment a;

    private k(CameraFragment cameraFragment) {
        this.a = cameraFragment;
    }

    public void a() {
        CameraFragment.a(this.a, "cancel");
        if (CameraFragment.a(this.a) == null || !CameraFragment.a(this.a).d()) {
            this.a.i();
        }
    }

    public void b() {
        CameraFragment.a(this.a, "flip_camera");
        this.a.a(false);
        this.a.g.clearAnimation();
        this.a.g.setVisibility(8);
        this.a.a.b();
    }

    public void a(CharSequence charSequence) {
        bbu.a((TwitterScribeLog) new TwitterScribeLog(CameraFragment.i(this.a).g()).b(new String[]{"twitter_camera::" + CameraFragment.h(this.a) + ":flash:" + charSequence}));
        this.a.a.a(charSequence);
    }
}
