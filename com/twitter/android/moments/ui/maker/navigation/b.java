package com.twitter.android.moments.ui.maker.navigation;

import acx;
import aii;
import ajh;
import android.app.Activity;
import android.view.ViewGroup;
import com.twitter.util.object.d;

/* compiled from: Twttr */
public class b implements d<t, k, a> {
    private final Activity a;
    private final ajh b;
    private acx c;
    private final ViewGroup d;

    public b(Activity activity, acx acx, ajh ajh, ViewGroup viewGroup) {
        this.a = activity;
        this.c = acx;
        this.b = ajh;
        this.d = viewGroup;
    }

    public a a(t tVar, k kVar) {
        return new a(kVar, aii.a(this.a, this.c, this.b, this.d, tVar));
    }
}
