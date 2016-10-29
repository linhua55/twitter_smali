package com.twitter.android.media.camera;

import android.view.ViewTreeObserver.OnPreDrawListener;

/* compiled from: Twttr */
class h implements OnPreDrawListener {
    final /* synthetic */ CameraFragment a;

    h(CameraFragment cameraFragment) {
        this.a = cameraFragment;
    }

    public boolean onPreDraw() {
        int l = this.a.l();
        if (CameraFragment.b(this.a) != l) {
            int b = l - CameraFragment.b(this.a);
            CameraFragment.a(this.a, l);
            if (CameraFragment.a(this.a) != null && (b == 180 || b == -180)) {
                this.a.a.b(l);
                this.a.n();
                this.a.c.requestLayout();
                return false;
            }
        }
        return true;
    }
}
