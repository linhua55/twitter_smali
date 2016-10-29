package com.twitter.android.nativecards;

import android.app.Activity;
import caw;
import cmb;
import com.twitter.config.c;
import com.twitter.library.util.aq;
import com.twitter.library.widget.tweet.content.DisplayMode;
import defpackage.cah;
import defpackage.caj;
import uj;

/* compiled from: Twttr */
public class az extends caj {
    public boolean a(DisplayMode displayMode, cmb cmb) {
        return aq.d(caw.a("player_url", cmb));
    }

    public cah a(Activity activity, DisplayMode displayMode, cmb cmb) {
        if (DisplayMode.FULL == displayMode) {
            return new ax(activity, displayMode);
        }
        if (c.d("vine_forward_card_4391")) {
            return new ba(activity, displayMode);
        }
        return new uj(activity, displayMode);
    }
}
