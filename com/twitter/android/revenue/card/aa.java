package com.twitter.android.revenue.card;

import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import com.twitter.internal.android.service.ab;
import com.twitter.internal.network.HttpOperation;
import com.twitter.internal.network.HttpOperation.RequestMethod;
import com.twitter.library.api.as;
import com.twitter.library.client.az;
import com.twitter.library.client.bb;
import com.twitter.library.client.bc;
import com.twitter.library.client.bg;
import com.twitter.library.network.w;
import com.twitter.library.service.b;
import com.twitter.library.service.c;
import com.twitter.library.service.d;
import com.twitter.library.service.e;
import com.twitter.library.service.x;
import com.twitter.library.service.z;
import com.twitter.model.core.Tweet;
import com.twitter.util.a;
import com.twitter.util.aj;
import java.util.Locale;

/* compiled from: Twttr */
class aa extends b<as> implements bb {
    private final Context a;
    private final String b;
    private final long c;
    private final String g;
    private final String h;
    private ab i;
    private z j;
    private String k;

    protected /* synthetic */ c f() {
        return b();
    }

    aa(Context context, String str, Tweet tweet, ab abVar) {
        this(context, str, null, tweet, abVar);
    }

    aa(Context context, String str, String str2, Tweet tweet, ab abVar) {
        super(context, aa.class.getName(), bg.a().c());
        this.a = context;
        this.g = str;
        this.c = tweet.H;
        this.b = tweet.f != null ? tweet.f.c : null;
        this.i = abVar;
        this.h = str2;
    }

    protected d a() {
        e a = K().a(RequestMethod.b).a(null);
        if (this.b != null) {
            a.a("impression_id", this.b);
        }
        if (aj.b(this.h)) {
            a.a("zipcode", this.h);
        }
        a.a("tweet_id", this.c);
        Locale locale = this.a.getResources().getConfiguration().locale;
        if (locale != null) {
            a.a("lang", a.b(locale));
        }
        a.a(new w(bg.a().c().h()));
        Uri parse = Uri.parse(this.g);
        a.c(parse.getScheme()).b(parse.getAuthority()).b(parse.getPath());
        return a.a();
    }

    protected as b() {
        return as.a(95);
    }

    void e() {
        az a = az.a(this.a);
        this.j = new bc(0, this);
        a.a(this, this.j);
    }

    public void a(int i, x xVar) {
    }

    public void a(int i, Bundle bundle, x xVar) {
    }

    protected void a(HttpOperation httpOperation, com.twitter.library.service.aa aaVar, as asVar) {
        super.a(httpOperation, aaVar, asVar);
        if (httpOperation.j()) {
            this.k = (String) asVar.b();
        }
    }

    public void b(int i, x xVar) {
        ab l = xVar.l();
        com.twitter.library.service.aa aaVar = l != null ? (com.twitter.library.service.aa) l.b() : null;
        boolean b = aaVar != null ? aaVar.b() : false;
        ab abVar = this.i;
        if (abVar != null) {
            abVar.a(b, this.k);
        }
        h();
        this.i = null;
    }

    void g() {
        h();
        this.i = null;
    }

    void h() {
        az.a(this.a).b(this.j);
    }
}
