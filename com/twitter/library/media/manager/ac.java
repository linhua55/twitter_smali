package com.twitter.library.media.manager;

import com.twitter.media.request.ResourceResponse;
import com.twitter.media.request.ResourceResponse.ResourceSource;
import com.twitter.media.request.g;
import com.twitter.util.aa;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Future;

/* compiled from: Twttr */
class ac<REQ extends g, RESP extends ResourceResponse> {
    public final List<ag<REQ, RESP>> a;
    public final aa<Double> b;
    private Future<?> c;

    ac(ag<REQ, RESP> agVar, aa<Double> aaVar) {
        this.a = new ArrayList(1);
        this.a.add(agVar);
        this.b = aaVar;
    }

    ac(Future<?> future, aa<Double> aaVar) {
        this.a = new ArrayList(4);
        this.c = future;
        this.b = aaVar;
    }

    public boolean a() {
        return this.c != null;
    }

    public void a(ag<REQ, RESP> agVar) {
        this.a.add(agVar);
    }

    public boolean b(ag<REQ, RESP> agVar) {
        if (!this.a.remove(agVar)) {
            return false;
        }
        agVar.b.e();
        if (this.a.isEmpty()) {
            c();
        }
        return true;
    }

    public void a(ResourceSource resourceSource) {
        for (ag agVar : this.a) {
            if (agVar.c == ResourceSource.a) {
                agVar.c = resourceSource;
            }
        }
    }

    public void b() {
        this.a.clear();
        this.c = null;
    }

    public void c() {
        for (ag agVar : this.a) {
            agVar.b.e();
        }
        this.a.clear();
        if (this.c != null) {
            this.c.cancel(false);
            this.c = null;
        }
    }
}
