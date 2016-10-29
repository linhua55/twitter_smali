package com.twitter.android.revenue.card;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import cmb;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.android.card.b;
import com.twitter.android.card.h;
import com.twitter.android.revenue.x;
import com.twitter.library.widget.tweet.content.DisplayMode;
import defpackage.bzp;
import defpackage.cah;
import defpackage.caj;

/* compiled from: Twttr */
public class as extends caj {
    private static final bzp a;
    private static final bzp b;
    private static final bzp c;

    static {
        a = new bzp(aq.class, DisplayMode.FORWARD);
        b = new bzp(aq.class, DisplayMode.CAROUSEL);
        c = new bzp(aq.class, DisplayMode.MOMENTS);
    }

    public bzp b(Activity activity, DisplayMode displayMode, cmb cmb) {
        switch (at.a[displayMode.ordinal()]) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                return a;
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                return b;
            case Util.TYPE_OTHER /*3*/:
                return c;
            default:
                return null;
        }
    }

    public boolean a(DisplayMode displayMode, cmb cmb) {
        return true;
    }

    public cah a(Activity activity, DisplayMode displayMode, cmb cmb) {
        Resources resources = activity.getResources();
        float dimension = resources.getDimension(2131689727);
        float dimension2 = resources.getDimension(2131689730);
        boolean a = x.a(activity, displayMode);
        cah aqVar = new aq(activity, displayMode, new h(activity), new b(activity), a(displayMode, a), a(displayMode, dimension), a(displayMode, a, dimension2));
        aqVar.a((Context) activity);
        return aqVar;
    }

    public int a(DisplayMode displayMode, boolean z) {
        if ((DisplayMode.FORWARD == displayMode || DisplayMode.CAROUSEL == displayMode) && z) {
            return 2130969106;
        }
        return 2130969105;
    }

    public float[] a(DisplayMode displayMode, float f) {
        if (DisplayMode.CAROUSEL == displayMode) {
            return new float[]{0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f};
        }
        return new float[]{f, f, f, f, f, f, f, f};
    }

    public float[] a(DisplayMode displayMode, boolean z, float f) {
        if (DisplayMode.CAROUSEL == displayMode) {
            return new float[]{0.0f, 0.0f, 0.0f, 0.0f};
        }
        if (DisplayMode.FORWARD == displayMode && z) {
            return new float[]{f, 0.0f, 0.0f, f};
        }
        return new float[]{f, f, 0.0f, 0.0f};
    }
}
