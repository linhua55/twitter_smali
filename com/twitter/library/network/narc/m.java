package com.twitter.library.network.narc;

import com.twitter.internal.network.HttpOperation;
import com.twitter.internal.network.HttpOperation.RequestMethod;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: Twttr */
public final class m extends a {
    public final RequestMethod e;
    public final String f;

    public m(HttpOperation httpOperation) {
        this.e = httpOperation.h();
        this.f = httpOperation.i().toString();
        this.d = httpOperation.p();
        this.b = httpOperation.f();
        a(httpOperation.m());
    }

    protected JSONObject a() throws JSONException {
        JSONObject a = super.a();
        a.put("postData", null);
        a.put("method", this.e.name());
        a.put("url", this.f);
        a.put("queryString", new JSONArray());
        return a;
    }
}
