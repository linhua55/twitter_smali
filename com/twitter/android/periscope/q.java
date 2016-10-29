package com.twitter.android.periscope;

import android.content.Context;
import android.view.OrientationEventListener;

/* compiled from: Twttr */
class q extends OrientationEventListener {
    final /* synthetic */ PeriscopePlayerActivity a;

    q(PeriscopePlayerActivity periscopePlayerActivity, Context context) {
        this.a = periscopePlayerActivity;
        super(context);
    }

    public void onOrientationChanged(int i) {
        if (i != -1 && this.a.u != null) {
            this.a.u.I();
        }
    }
}
