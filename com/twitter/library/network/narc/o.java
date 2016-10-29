package com.twitter.library.network.narc;

import com.google.android.exoplayer.util.MimeTypes;
import com.twitter.internal.network.HttpOperation;
import com.twitter.internal.network.k;
import com.twitter.util.object.e;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: Twttr */
public class o extends b {
    public String a;
    public final String b;
    public final long c;
    public final String d;

    public o(HttpOperation httpOperation) {
        this.a = null;
        k l = httpOperation.l();
        this.b = e.b(l.l);
        this.c = (long) l.k;
        this.d = l.s;
    }

    protected JSONObject a() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("mimeType", this.b);
        jSONObject.put("size", this.c);
        jSONObject.put(MimeTypes.BASE_TYPE_TEXT, this.d);
        jSONObject.put("comment", this.a);
        return jSONObject;
    }
}
