package com.twitter.android.composer;

import android.app.Activity;
import com.twitter.android.media.camera.CameraActivity;
import com.twitter.app.common.util.c;
import com.twitter.app.common.util.i;

/* compiled from: Twttr */
class ac extends i {
    final /* synthetic */ c a;
    final /* synthetic */ ComposerActivity b;

    ac(ComposerActivity composerActivity, c cVar) {
        this.b = composerActivity;
        this.a = cVar;
    }

    public void onActivityStopped(Activity activity) {
        if ((activity instanceof CameraActivity) && activity.isFinishing()) {
            this.b.au();
        }
    }

    public void onActivityDestroyed(Activity activity) {
        if (activity == this.b) {
            this.a.b(this);
            this.b.ak = null;
        }
    }
}
