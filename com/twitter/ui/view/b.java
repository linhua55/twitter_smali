package com.twitter.ui.view;

import android.content.Context;
import com.twitter.android.composer.ba;
import com.twitter.android.dm.r;
import com.twitter.library.client.bg;
import com.twitter.library.scribe.TwitterScribeLog;
import defpackage.bbu;

/* compiled from: Twttr */
public class b implements e {
    private final ba a;
    private final bg b;
    private final Context c;

    public b(Context context, ba baVar, bg bgVar) {
        this.c = context;
        this.a = baVar;
        this.b = bgVar;
    }

    public void a(int i) {
        if (i == 1) {
            this.a.a(1);
        } else if (i == 2) {
            bbu.a(new TwitterScribeLog(this.b.c().g()).b("messages:navigation_bar::compose:click"));
            this.c.startActivity(r.a(this.c));
        }
    }
}
