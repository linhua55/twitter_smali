package com.twitter.library.network.narc;

import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: Twttr */
public class k extends b {
    public String a;
    public String b;
    public String c;

    protected JSONObject a() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("name", this.a);
        jSONObject.put("value", this.b);
        jSONObject.put("comment", this.c);
        return jSONObject;
    }
}
