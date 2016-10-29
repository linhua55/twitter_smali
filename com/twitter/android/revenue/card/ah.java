package com.twitter.android.revenue.card;

import android.app.Activity;
import cmb;
import cmc;
import com.twitter.android.revenue.x;
import com.twitter.config.c;
import com.twitter.library.widget.tweet.content.DisplayMode;
import defpackage.bzb;
import defpackage.cah;
import defpackage.caj;

/* compiled from: Twttr */
public class ah extends caj {
    public boolean a(DisplayMode displayMode, cmb cmb) {
        return true;
    }

    public cah a(Activity activity, DisplayMode displayMode, cmb cmb) {
        boolean a = bzb.a("promotion_zipcode_required", cmb, false);
        if (DisplayMode.FULL == displayMode) {
            if (!a) {
                if (!c.a("ad_formats_lead_gen_card_zip_code_android_3657", new String[]{"leadgen_zipcode_required"})) {
                    return new g(activity, displayMode);
                }
            }
            return new ai(activity, displayMode, a);
        }
        cmc a2 = cmc.a("promo_image", cmb);
        if (x.a(activity, displayMode) && x.a(a2)) {
            return new f(activity, displayMode);
        }
        return new e(activity, displayMode);
    }
}
