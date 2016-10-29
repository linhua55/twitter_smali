package com.twitter.library.network.narc;

import com.twitter.internal.android.service.d;
import com.twitter.internal.network.HttpOperation;
import com.twitter.library.network.narc.AbstractNARCEntry.EntryType;
import com.twitter.util.al;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: Twttr */
public final class q extends AbstractNARCEntry {
    public m c;
    public int d;
    public n e;
    public String f;
    public long g;
    public p h;
    private HttpOperation i;
    private d j;

    public q(HttpOperation httpOperation, d dVar) {
        long j = -1;
        super(EntryType.network);
        this.f = null;
        this.g = -1;
        this.h = null;
        this.i = httpOperation;
        this.j = dVar;
        this.c = new m(httpOperation);
        if (this.j != null) {
            this.d = this.j.hashCode();
            j = this.j.a("blocking", -1);
        } else {
            this.d = httpOperation.hashCode();
        }
        if (j <= 0) {
            j = this.b;
        }
        this.b = j;
    }

    public synchronized void b() {
        try {
            this.e = new n(this.i);
            this.g = (this.j != null ? this.j.a() : 0) + this.i.l().e;
            this.h = new p(this.i, this.j);
            if (this.i.o()) {
                this.f = this.i.b("Server");
            }
            this.i = null;
            this.j = null;
        } catch (Throwable th) {
            this.i = null;
            this.j = null;
        }
    }

    protected synchronized JSONObject a() throws JSONException {
        JSONObject a;
        if (this.i != null) {
            this.g = al.b() - this.b;
            this.h = new p(this.i, this.j);
            this.e = new n(this.i);
            this.e.g = -1;
            this.h.f = ((((((this.g - this.h.f) - this.h.a) - this.h.c) - this.h.b) - this.h.d) - this.h.g) - this.h.e;
        }
        a = super.a();
        a.put("time", this.g);
        a.put("requestId", this.d);
        a.put("request", this.c.a());
        a.put("response", this.e.a());
        a.put("cache", new JSONObject());
        a.put("timings", this.h.a());
        a.put("serverIPAddress", this.f);
        return a;
    }
}
