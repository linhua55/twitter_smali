package com.twitter.android.media.camera;

import android.hardware.Camera;
import android.hardware.Camera.AutoFocusCallback;

/* compiled from: Twttr */
class r implements AutoFocusCallback {
    final /* synthetic */ m a;

    r(m mVar) {
        this.a = mVar;
    }

    public void onAutoFocus(boolean z, Camera camera) {
        if (this.a.o() && this.a.m == 2) {
            String focusMode = this.a.q.getFocusMode();
            if (!focusMode.equals("continuous-picture") && !focusMode.equals("continuous-video")) {
                if (this.a.f != null) {
                    this.a.f.b();
                }
                this.a.u();
            } else if (z || !this.a.a("auto")) {
                this.a.j.cancelAutoFocus();
                if (this.a.f != null) {
                    this.a.f.b();
                }
            } else {
                this.a.a = 0;
                this.a.n();
            }
            this.a.a = 0;
        }
    }
}
