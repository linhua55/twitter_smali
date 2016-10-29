package defpackage;

import byi;
import com.twitter.internal.network.HttpOperation;
import com.twitter.library.api.af;
import com.twitter.library.api.t;
import com.twitter.library.api.v;
import com.twitter.library.service.aa;
import com.twitter.library.service.c;
import com.twitter.library.service.d;
import com.twitter.model.core.cd;
import com.twitter.model.moments.s;

/* compiled from: Twttr */
/* renamed from: bma */
public class bma extends af<t<s, cd>> {
    private final byi b;

    protected /* synthetic */ c f() {
        return b();
    }

    protected d a() {
        return K().a("v", 1447995056).a("moments", "categories").a();
    }

    protected t<s, cd> b() {
        return v.a(s.class);
    }

    protected void a(HttpOperation httpOperation, aa aaVar, t<s, cd> tVar) {
        super.a(httpOperation, aaVar, tVar);
        if (httpOperation.j()) {
            s sVar = (s) tVar.b();
            if (sVar != null) {
                this.b.a(sVar);
            }
        }
    }

    public String e() {
        return "app:twitter_service:moments:categories_request";
    }
}
