package com.twitter.library.api.geo;

import android.content.Context;
import com.twitter.internal.network.HttpOperation;
import com.twitter.library.client.Session;
import com.twitter.library.provider.ch;
import com.twitter.library.provider.cj;
import com.twitter.library.provider.di;
import com.twitter.library.service.aa;
import com.twitter.library.service.b;
import com.twitter.library.service.d;
import com.twitter.library.service.e;
import com.twitter.model.core.cm;
import com.twitter.model.geo.m;
import com.twitter.model.timeline.bw;
import com.twitter.model.timeline.by;
import com.twitter.util.collection.n;
import java.util.List;

/* compiled from: Twttr */
public class c extends b<j> {
    private m a;
    private final String b;
    private final String c;
    private final String g;
    private final String h;
    private final long i;
    private final boolean j;

    protected /* synthetic */ com.twitter.library.service.c f() {
        return b();
    }

    private c(Context context, Session session, String str, long j, String str2, String str3, String str4, boolean z) {
        super(context, c.class.getName(), session);
        this.b = str;
        this.i = j;
        this.c = str2;
        this.g = str3;
        this.h = str4;
        this.j = z;
    }

    protected d a() {
        e a = K().a("geo", "place_page").a("place_id", this.b);
        if (this.g != null) {
            a.a("request_type", this.g);
        }
        if (this.c != null) {
            a.a("cursor", this.c);
        }
        if (this.h != null) {
            a.a("cursor_type", this.h);
        }
        a.a("include_header", this.j);
        return a.a();
    }

    protected j b() {
        return new j();
    }

    protected void a(HttpOperation httpOperation, aa aaVar, j jVar) {
        if (aaVar.b()) {
            this.a = (m) jVar.b();
            if (this.a != null && this.a.c != null && this.a.c.b != null) {
                List<cm> list = this.a.c.b;
                di S = S();
                boolean z = this.c != null && list.isEmpty();
                com.twitter.library.provider.e T = T();
                n a = n.a(list.size());
                for (cm cmVar : list) {
                    a.c((bw) ((by) ((by) ((by) new by().a(cmVar).b(cmVar.bg_())).b(cmVar.J)).a(0)).q());
                }
                if (S.a((ch) new cj().a((List) a.q()).a(this.i).a(3).a(this.b).a(z).d(true).a(T).q()) > 0 || z) {
                    T.a();
                }
            }
        }
    }

    public m e() {
        return this.a;
    }
}
