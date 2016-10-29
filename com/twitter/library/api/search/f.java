package com.twitter.library.api.search;

import android.content.Context;
import com.twitter.internal.network.HttpOperation;
import com.twitter.library.api.TwitterLocation;
import com.twitter.library.api.as;
import com.twitter.library.client.Session;
import com.twitter.library.service.aa;
import com.twitter.library.service.b;
import com.twitter.library.service.c;
import com.twitter.library.service.d;
import com.twitter.library.service.e;
import com.twitter.util.a;
import com.twitter.util.aj;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

/* compiled from: Twttr */
public class f extends b<as> {
    private final String a;
    private final String b;
    private final List<TwitterLocation> c;

    protected /* synthetic */ c f() {
        return b();
    }

    public f(Context context, Session session) {
        super(context, f.class.getName(), session);
        this.c = new ArrayList();
        Locale locale = this.p.getResources().getConfiguration().locale;
        if (locale != null) {
            this.b = locale.getCountry();
            this.a = a.b(locale);
            return;
        }
        this.b = null;
        this.a = null;
    }

    protected d a() {
        e a = K().a("trends", "available");
        if (aj.b(this.a)) {
            a.a("lang", this.a);
        }
        if (aj.b(this.b)) {
            a.a("country", this.b);
        }
        return a.a();
    }

    protected as b() {
        return as.a(40);
    }

    protected void a(HttpOperation httpOperation, aa aaVar, as asVar) {
        super.a(httpOperation, aaVar, asVar);
        if (httpOperation.j()) {
            List list = (List) asVar.b();
            if (list != null) {
                this.c.addAll(list);
                S().b(list);
            }
        }
    }

    public List<TwitterLocation> e() {
        return this.c;
    }

    public String g() {
        return this.a;
    }

    public String h() {
        return this.b;
    }
}
