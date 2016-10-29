package com.twitter.android.moments.ui.guide;

import android.app.Activity;
import com.twitter.app.common.util.i;

/* compiled from: Twttr */
class an extends i {
    final /* synthetic */ am a;

    an(am amVar) {
        this.a = amVar;
    }

    public void onActivityPaused(Activity activity) {
        if (this.a.q != null && !activity.isChangingConfigurations()) {
            this.a.q.g().j();
        }
    }

    public void onActivityResumed(Activity activity) {
        if (this.a.q != null) {
            this.a.q.g().i();
            this.a.q.d();
        }
    }
}
