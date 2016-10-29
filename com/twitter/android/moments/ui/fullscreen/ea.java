package com.twitter.android.moments.ui.fullscreen;

import android.app.Activity;
import com.twitter.app.common.util.i;

/* compiled from: Twttr */
class ea extends i {
    final /* synthetic */ dz a;

    ea(dz dzVar) {
        this.a = dzVar;
    }

    public void onActivityPaused(Activity activity) {
        this.a.b();
    }
}
