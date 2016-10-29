package com.twitter.android.nativecards;

import android.app.Activity;
import cmb;
import com.twitter.android.card.a;
import com.twitter.android.card.b;
import com.twitter.android.card.f;
import com.twitter.android.card.h;
import com.twitter.android.card.l;
import com.twitter.android.card.m;
import com.twitter.android.revenue.card.ay;
import com.twitter.android.revenue.y;
import com.twitter.library.widget.tweet.content.DisplayMode;
import defpackage.cah;
import defpackage.caj;
import java.util.Arrays;
import java.util.List;

/* compiled from: Twttr */
public class av extends caj {
    private static final List<String> a;

    static {
        a = Arrays.asList(new String[]{"summary_photo_image"});
    }

    public boolean a(DisplayMode displayMode, cmb cmb) {
        return y.a(displayMode, cmb, a);
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
        if (y.a(cmb, a)) {
            return new au(activity, displayMode, mVar, lVar);
        }
        return new ay(activity, displayMode, mVar, lVar);
    }
}
