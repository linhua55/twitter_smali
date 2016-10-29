package com.twitter.android.moments.ui.maker.navigation;

import acx;
import aio;
import ajh;
import android.app.Activity;
import com.twitter.util.object.d;

/* compiled from: Twttr */
public class j implements d<t, k, i> {
    private final acx a;
    private final Activity b;
    private final ajh c;

    public j(Activity activity, acx acx, ajh ajh) {
        this.b = activity;
        this.a = acx;
        this.c = ajh;
    }

    public i a(t tVar, k kVar) {
        return new i(this.b, kVar, aio.a(this.b, this.a, this.c));
    }
}
