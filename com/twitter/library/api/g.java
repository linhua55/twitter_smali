package com.twitter.library.api;

import android.content.Context;
import com.twitter.config.d;
import com.twitter.internal.network.HttpOperation;
import com.twitter.internal.network.i;
import com.twitter.library.client.Session;
import com.twitter.library.network.j;
import com.twitter.library.network.w;
import com.twitter.library.service.aa;
import com.twitter.library.service.x;
import java.util.List;

/* compiled from: Twttr */
public class g extends x {
    private List<q> a;

    public g(Context context, Session session) {
        super(context, g.class.getName(), session);
    }

    protected void a_(aa aaVar) {
        CharSequence b = d.b("avatar_set_href");
        i a = as.a(58);
        HttpOperation c = new j(this.p, b).a(new w(N().d)).a(a).a().c();
        if (c.j()) {
            this.a = (List) a.b();
        }
        aaVar.a(c);
    }

    public List<q> a() {
        return this.a;
    }
}
