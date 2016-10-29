package com.twitter.library.network.narc;

import java.util.Date;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: Twttr */
public class l extends b {
    public String a;
    public long b;

    public l() {
        this.a = TtmlNode.ANONYMOUS_REGION_ID;
    }

    protected JSONObject a() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("comment", this.a);
        jSONObject.put(TtmlNode.ATTR_ID, "twitter_android");
        jSONObject.put("pageTimings", new JSONObject());
        jSONObject.put("startedDateTime", a(new Date(this.b)));
        jSONObject.put("title", "Android Request Group");
        return jSONObject;
    }
}
