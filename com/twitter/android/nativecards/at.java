package com.twitter.android.nativecards;

import android.app.Activity;
import cmb;
import com.twitter.android.card.a;
import com.twitter.android.card.b;
import com.twitter.android.card.f;
import com.twitter.android.card.h;
import com.twitter.android.card.l;
import com.twitter.android.card.m;
import com.twitter.android.revenue.card.az;
import com.twitter.android.revenue.y;
import com.twitter.library.widget.tweet.content.DisplayMode;
import defpackage.bzp;
import defpackage.cah;
import defpackage.caj;

/* compiled from: Twttr */
public class at extends caj {
    public bzp b(Activity activity, DisplayMode displayMode, cmb cmb) {
        Class cls;
        if (y.a(cmb, az.a)) {
            cls = ap.class;
        } else {
            cls = az.class;
        }
        return new bzp(cls, displayMode);
    }

    public boolean a(DisplayMode displayMode, cmb cmb) {
        return y.a(displayMode, cmb, az.a);
    }

    public cah a(Activity activity, DisplayMode displayMode, cmb cmb) {
        f mVar;
        a lVar;
        if (displayMode == DisplayMode.COMPOSE) {
            mVar = new m();
            lVar = new l();
        } else {
            mVar = new h(activity);
            lVar = new b(activity);
        }
        if (y.a(cmb, az.a)) {
            return new ap(activity, displayMode, mVar, lVar);
        }
        return new az(activity, displayMode, mVar, lVar);
    }
}
