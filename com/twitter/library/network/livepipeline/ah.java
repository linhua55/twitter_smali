package com.twitter.library.network.livepipeline;

import android.content.Context;
import cfb;
import com.twitter.internal.network.HttpOperation;
import com.twitter.library.client.Session;
import com.twitter.library.service.aa;
import com.twitter.library.service.c;
import com.twitter.util.aj;
import com.twitter.util.collection.r;
import java.util.Collection;
import java.util.Map;
import java.util.Set;

/* compiled from: Twttr */
abstract class ah extends ag {
    private final ab b;
    private final Set<String> c;

    ah(Context context, String str, Session session, ab abVar, long j, Set<String> set) {
        super(context, str, session, ag.a(j));
        this.b = abVar;
        this.c = set;
    }

    protected boolean b(aa aaVar) {
        return this.b.a() != null;
    }

    protected void a(HttpOperation httpOperation, aa aaVar, c cVar) {
        String b = b();
        String u = u();
        if (aaVar.b()) {
            a(this.c);
            cfb.b("LivePipeline", "Operation " + u + " succeeded for topics: " + b);
            return;
        }
        b(this.c);
        cfb.b("LivePipeline", "Operation " + u + " failed for topics: " + b);
        cfb.b("LivePipeline", "Response Status: " + aaVar.d());
        cfb.b("LivePipeline", "Message: " + aaVar.e());
    }

    protected void a(Collection<String> collection) {
    }

    protected void b(Collection<String> collection) {
    }

    protected Map<String, String> g() {
        return (Map) r.d().b("LivePipeline-Session", this.b.a()).q();
    }

    protected Map<String, String> h() {
        return (Map) r.d().b("topic", b()).q();
    }

    protected String b() {
        return aj.a(",", this.c.toArray());
    }
}
