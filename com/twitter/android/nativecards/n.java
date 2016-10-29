package com.twitter.android.nativecards;

import android.app.Activity;
import cmb;
import com.twitter.android.nativecards.ConsumerPollCard.Configuration;
import com.twitter.library.widget.tweet.content.DisplayMode;
import defpackage.cah;
import defpackage.caj;

/* compiled from: Twttr */
public class n extends caj {
    private final Configuration a;

    public n(Configuration configuration) {
        this.a = configuration;
    }

    public boolean a(DisplayMode displayMode, cmb cmb) {
        return true;
    }

    public cah a(Activity activity, DisplayMode displayMode, cmb cmb) {
        return new ConsumerPollCard(activity, displayMode, this.a);
    }
}
