package com.twitter.library.network.narc;

import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: Twttr */
public class f extends b {
    static final /* synthetic */ boolean c;
    public String a;
    public String b;

    static {
        c = !f.class.desiredAssertionStatus();
    }

    public f() {
        this.a = null;
        this.b = "Twitter for Android";
    }

    protected JSONObject a() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        if (c || this.b != null) {
            jSONObject.put("name", this.b);
            jSONObject.put("version", "1.0");
            jSONObject.put("comment", this.a);
            return jSONObject;
        }
        throw new AssertionError("name was not set");
    }
}
