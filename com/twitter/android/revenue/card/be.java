package com.twitter.android.revenue.card;

import android.app.Activity;
import android.content.Context;
import cmb;
import com.twitter.android.card.b;
import com.twitter.android.card.h;
import com.twitter.android.revenue.x;
import com.twitter.library.widget.tweet.content.DisplayMode;
import defpackage.cah;
import defpackage.caj;
import ua;

/* compiled from: Twttr */
public class be extends caj {
    public boolean a(DisplayMode displayMode, cmb cmb) {
        return true;
    }

    public cah a(Activity activity, DisplayMode displayMode, cmb cmb) {
        if (DisplayMode.FULL == displayMode) {
            return new ua(activity, displayMode, true);
        }
        float dimension = activity.getResources().getDimension(2131689727);
        boolean a = x.a(activity, displayMode);
        float[] fArr = new float[]{0.0f, 0.0f, 0.0f, 0.0f};
        cah bdVar = new bd(activity, displayMode, new h(activity), new b(activity), a(a), a(a, dimension), fArr);
        bdVar.a((Context) activity);
        return bdVar;
    }

    public int a(boolean z) {
        return z ? 2130969106 : 2130969105;
    }

    public float[] a(boolean z, float f) {
        if (z) {
            return new float[]{0.0f, 0.0f, f, f, f, f, 0.0f, 0.0f};
        }
        return new float[]{0.0f, 0.0f, 0.0f, 0.0f, f, f, f, f};
    }
}
