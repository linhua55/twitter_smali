package com.twitter.android.moments.ui.fullscreen;

import android.app.Activity;
import android.util.LruCache;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.twitter.android.moments.ui.maker.navigation.NavigationKey;
import com.twitter.android.moments.ui.maker.navigation.d;
import com.twitter.android.moments.ui.maker.navigation.k;
import com.twitter.android.moments.ui.maker.navigation.l;
import com.twitter.android.moments.ui.maker.navigation.o;
import com.twitter.android.moments.ui.maker.navigation.q;
import com.twitter.android.moments.ui.maker.navigation.r;
import com.twitter.android.moments.ui.maker.navigation.t;
import com.twitter.app.common.inject.v;
import defpackage.acx;
import defpackage.ajh;
import defpackage.ajk;

/* compiled from: Twttr */
public class de extends v {
    private final t a;

    public static de a(Activity activity, acx acx, long j, String str) {
        ajk a = ajk.a(activity);
        ajh ajh = new ajh(activity, a.a(), a.b(), new LruCache(12));
        ViewGroup viewGroup = (ViewGroup) LayoutInflater.from(activity).inflate(2130969005, null);
        ViewGroup viewGroup2 = (ViewGroup) viewGroup.findViewById(2131952736);
        l lVar = new l(activity, viewGroup2, new k(j, str), o.a(activity, acx, ajh, viewGroup2), new d(new q()));
        return new de(viewGroup, lVar, r.a(viewGroup, lVar));
    }

    public de(ViewGroup viewGroup, t tVar, r rVar) {
        a((View) viewGroup);
        this.a = tVar;
        this.a.a(NavigationKey.a);
    }

    public boolean d() {
        return this.a.a();
    }
}
