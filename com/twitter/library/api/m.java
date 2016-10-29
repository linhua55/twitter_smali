package com.twitter.library.api;

import android.content.Context;
import com.twitter.internal.network.HttpOperation;
import com.twitter.library.provider.e;
import com.twitter.library.service.aa;
import com.twitter.library.service.ab;
import com.twitter.library.service.b;
import com.twitter.library.service.c;
import com.twitter.library.service.d;
import com.twitter.model.core.TwitterUser;
import com.twitter.model.core.cd;
import com.twitter.util.aj;
import java.util.List;

/* compiled from: Twttr */
public class m extends b<t<List<TwitterUser>, cd>> {
    private final String a;
    private final long b;
    private final int c;
    private final int g;
    private int h;
    private String i;
    private String j;

    protected /* synthetic */ c f() {
        return b();
    }

    public m(Context context, ab abVar, long j, String str, int i, int i2) {
        super(context, n.class.getName(), abVar);
        this.i = "-1";
        this.j = "0";
        this.a = str;
        this.b = j;
        this.c = i;
        this.g = i2;
        if (aj.a(str)) {
            throw new IllegalArgumentException("Query cannot be empty");
        }
    }

    protected d a() {
        return K().b("users").a("search").a("q", this.a).a("page", (long) this.c).a("count", (long) this.g).a();
    }

    protected t<List<TwitterUser>, cd> b() {
        return u.a(TwitterUser.class);
    }

    public void a(String str) {
        this.i = str;
    }

    public void b(String str) {
        this.j = str;
    }

    protected void a(HttpOperation httpOperation, aa aaVar, t<List<TwitterUser>, cd> tVar) {
        super.a(httpOperation, aaVar, tVar);
        if (httpOperation.j()) {
            List list = (List) tVar.b();
            if (list == null) {
                httpOperation.l().a = 0;
                return;
            }
            e T = T();
            int a = S().a(list, this.b > 0 ? this.b : N().c, 6, (long) this.a.hashCode(), this.i, this.j, true, T);
            T.a();
            this.h = a;
        }
    }

    public int e() {
        return this.h;
    }
}
