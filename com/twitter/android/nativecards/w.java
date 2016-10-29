package com.twitter.android.nativecards;

import android.content.Context;
import defpackage.byw;
import defpackage.bzf;
import defpackage.bzy;
import defpackage.cas;
import defpackage.cat;

/* compiled from: Twttr */
public class w {
    private final Context a;
    private final ad b;
    private final String c;
    private cas d;

    public w(Context context, ad adVar, String str) {
        this.a = context;
        this.b = adVar;
        this.c = str;
    }

    public void a() {
        if (this.d != null && this.b.b() != null && this.b.a() != null && this.b.d() != null) {
            byw byw = new byw();
            byw.a("twitter:string:card_uri", this.b.a());
            byw.a("twitter:string:cards_platform", "Android-12");
            byw.a("twitter:string:response_card_name", this.c);
            byw.a("twitter:text:id", this.b.d());
            this.d.a(this.b.b(), byw);
        }
    }

    public void a(long j, cat cat) {
        if (this.d == null) {
            bzy a = bzf.a();
            this.d = new cas(a, a.a(this.a), j, cat);
        }
        this.d.a();
    }

    public void b() {
        if (this.d != null) {
            this.d.c();
            this.d.b();
        }
    }
}
