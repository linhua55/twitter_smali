package com.twitter.android.nativecards;

import android.app.Activity;
import cap;
import caw;
import cmb;
import com.twitter.library.util.aq;
import com.twitter.library.widget.tweet.content.DisplayMode;
import defpackage.cah;
import defpackage.caj;

/* compiled from: Twttr */
public class ag extends caj {
    private final ah a;

    public ag() {
        this(new ah());
    }

    ag(ah ahVar) {
        this.a = ahVar;
    }

    public boolean a(DisplayMode displayMode, cmb cmb) {
        return displayMode == DisplayMode.FULL || aq.d(caw.a("player_url", cmb));
    }

    public cah a(Activity activity, DisplayMode displayMode, cmb cmb) {
        if (aq.d(caw.a("player_url", cmb))) {
            caj a = cap.b().a("4889131224:vine", displayMode);
            if (a != null) {
                return a.a(activity, displayMode, cmb);
            }
        }
        if (DisplayMode.FULL == displayMode) {
            return this.a.a(activity, displayMode);
        }
        return this.a.b(activity, displayMode);
    }
}
