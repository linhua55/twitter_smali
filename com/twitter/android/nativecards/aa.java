package com.twitter.android.nativecards;

import android.app.Activity;
import cmb;
import com.twitter.library.widget.tweet.content.DisplayMode;
import defpackage.bvd;
import defpackage.cah;
import defpackage.caj;

/* compiled from: Twttr */
public class aa extends caj {
    private final caj a;

    public aa() {
        if (bvd.b()) {
            this.a = new ac();
        } else {
            this.a = new av();
        }
    }

    public boolean a(DisplayMode displayMode, cmb cmb) {
        return this.a.a(displayMode, cmb);
    }

    public cah a(Activity activity, DisplayMode displayMode, cmb cmb) {
        return this.a.a(activity, displayMode, cmb);
    }
}
