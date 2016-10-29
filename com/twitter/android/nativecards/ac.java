package com.twitter.android.nativecards;

import android.app.Activity;
import cmb;
import com.twitter.android.av.video.m;
import com.twitter.android.card.b;
import com.twitter.android.card.h;
import com.twitter.android.periscope.o;
import com.twitter.library.api.periscope.PeriscopeCapiModel;
import com.twitter.library.widget.tweet.content.DisplayMode;
import defpackage.cah;
import defpackage.caj;
import tv.periscope.android.library.a;

/* compiled from: Twttr */
class ac extends caj {
    private ac() {
    }

    public boolean a(DisplayMode displayMode, cmb cmb) {
        return true;
    }

    public cah a(Activity activity, DisplayMode displayMode, cmb cmb) {
        if (!a.b()) {
            a.a(activity.getApplicationContext(), o.a(activity));
        }
        h hVar = new h(activity.getApplicationContext());
        b bVar = new b(activity);
        ad adVar = new ad();
        PeriscopeCapiModel periscopeCapiModel = new PeriscopeCapiModel();
        return new x(activity, displayMode, hVar, bVar, adVar, periscopeCapiModel, new w(activity.getApplicationContext(), adVar, "3691233323:periscope_broadcast"), new y(activity), new z(activity, adVar, periscopeCapiModel, new m()));
    }
}
