package com.twitter.library.network.narc;

import com.twitter.internal.android.service.d;
import com.twitter.internal.network.HttpOperation;
import com.twitter.internal.network.k;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: Twttr */
public final class p extends b {
    public long a;
    public long b;
    public long c;
    public long d;
    public long e;
    public long f;
    public long g;
    public String h;

    public p(HttpOperation httpOperation, d dVar) {
        this.a = -1;
        this.b = -1;
        this.c = -1;
        this.d = -1;
        this.e = -1;
        this.f = 1;
        this.g = -1;
        this.h = null;
        k l = httpOperation.l();
        this.a = dVar != null ? dVar.a() : -1;
        this.c = (long) l.t[1];
        this.b = -1;
        this.f = (long) l.t[4];
        this.d = (long) l.t[2];
        this.g = -1;
        this.e = (long) l.t[3];
        this.h = TtmlNode.ANONYMOUS_REGION_ID;
    }

    protected JSONObject a() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("blocked", this.a);
        jSONObject.put("dns", this.b);
        jSONObject.put("connect", this.c);
        jSONObject.put("send", this.d);
        jSONObject.put("wait", this.e);
        jSONObject.put("receive", this.f);
        jSONObject.put("ssl", this.g);
        jSONObject.put("comment", this.h);
        return jSONObject;
    }
}
