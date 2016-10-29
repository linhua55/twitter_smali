package com.twitter.android.revenue.card;

import android.app.Activity;
import cmb;
import com.twitter.android.card.b;
import com.twitter.android.card.h;
import com.twitter.config.d;
import com.twitter.library.widget.tweet.content.DisplayMode;
import defpackage.cah;
import defpackage.caj;

/* compiled from: Twttr */
public class q extends caj {
    public boolean a(DisplayMode displayMode, cmb cmb) {
        return true;
    }

    public cah a(Activity activity, DisplayMode displayMode, cmb cmb) {
        if (a(cmb)) {
            return new ba(activity, displayMode, new h(activity), new b(activity), cmb);
        } else if (b(cmb)) {
            return new z(activity, displayMode, new h(activity), new b(activity), cmb);
        } else {
            return new bh(activity, displayMode, new h(activity), new b(activity), cmb);
        }
    }

    private boolean a() {
        return d.a("ad_formats_convo_card_tweet_to_unlock_enabled");
    }

    private boolean a(cmb cmb) {
        return a() && cmb.b("cover_promo_image");
    }

    private boolean b(cmb cmb) {
        return cmb.b("promo_image");
    }
}
