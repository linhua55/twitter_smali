package com.twitter.android.moments.ui.fullscreen;

import android.app.Activity;
import com.twitter.app.common.util.i;

/* compiled from: Twttr */
class gv extends i {
    final /* synthetic */ gu a;

    gv(gu guVar) {
        this.a = guVar;
    }

    public void onActivityStarted(Activity activity) {
        if (this.a.u) {
            this.a.f.c();
        }
    }
}
