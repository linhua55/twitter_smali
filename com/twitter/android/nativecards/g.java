package com.twitter.android.nativecards;

import android.app.Activity;
import defpackage.cgl;

/* compiled from: Twttr */
public class g {
    static g a;

    public static g a() {
        if (a == null) {
            a = new g();
        }
        return a;
    }

    private g() {
    }

    public e a(Activity activity, d dVar, cgl cgl) {
        return new CardPreviewControllerImpl(activity, dVar, cgl);
    }
}
