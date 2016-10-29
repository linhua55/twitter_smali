package com.twitter.android.profiles;

import com.twitter.android.ads.c;
import com.twitter.internal.android.widget.ToolBar;
import com.twitter.model.ads.e;
import com.twitter.model.core.TwitterUser;
import com.twitter.model.core.cx;
import com.twitter.model.core.p;
import defpackage.bca;

/* compiled from: Twttr */
public class q extends ar {
    private final boolean a;
    private final boolean b;
    private final boolean c;
    private final boolean d;
    private final boolean e;
    private final boolean f;
    private final boolean g;
    private final boolean h;
    private final boolean i;
    private final boolean j;
    private final boolean k;

    public q(TwitterUser twitterUser, TwitterUser twitterUser2, int i, boolean z, e eVar, boolean z2) {
        boolean z3 = true;
        this.a = as.a(z, i);
        this.b = p.d(i);
        boolean c = p.c(i);
        boolean z4 = (twitterUser2 == null || this.b || z) ? false : true;
        this.d = z4;
        if (twitterUser2 == null || !cx.b(twitterUser2.K) || z) {
            z4 = false;
        } else {
            z4 = true;
        }
        this.e = z4;
        if (twitterUser2 == null || !z) {
            z4 = false;
        } else {
            z4 = true;
        }
        this.f = z4;
        if (twitterUser2 == null || as.a(z, twitterUser2, i)) {
            z4 = false;
        } else {
            z4 = true;
        }
        this.g = z4;
        if (twitterUser2 == null || !p.a(i) || c) {
            z4 = false;
        } else {
            z4 = true;
        }
        this.h = z4;
        this.c = p.f(i);
        if (twitterUser2 == null || z) {
            z4 = false;
        } else {
            z4 = true;
        }
        this.i = z4;
        if (twitterUser2 == null || !as.b(twitterUser2, i, z)) {
            z3 = false;
        }
        this.j = z3;
        this.k = c.b(twitterUser, twitterUser2, eVar, z2);
    }

    public void a(ToolBar toolBar) {
        boolean z = true;
        toolBar.a(2131953462).b(this.j);
        bca a = toolBar.a(2131953477);
        boolean z2 = this.d && !this.a;
        a.b(z2);
        a = toolBar.a(2131953478);
        if (!this.g || this.a) {
            z2 = false;
        } else {
            z2 = true;
        }
        a.b(z2);
        a = toolBar.a(2131953474);
        if (this.h && this.c && !this.a) {
            z2 = true;
        } else {
            z2 = false;
        }
        a.b(z2);
        a = toolBar.a(2131953475);
        if (!this.h || this.c || this.a) {
            z2 = false;
        } else {
            z2 = true;
        }
        a.b(z2);
        a = toolBar.a(2131953480);
        if (this.e && this.b) {
            z2 = true;
        } else {
            z2 = false;
        }
        a.b(z2);
        toolBar.a(2131953476).b(this.f);
        bca a2 = toolBar.a(2131953414);
        if (!this.e || this.b) {
            z = false;
        }
        a2.b(z);
        toolBar.a(2131953481).b(this.i);
        toolBar.a(2131953482).b(this.k);
    }
}
