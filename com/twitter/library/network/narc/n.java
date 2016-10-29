package com.twitter.library.network.narc;

import com.twitter.internal.network.HttpOperation;
import com.twitter.internal.network.k;
import com.twitter.util.object.e;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.io.Writer;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: Twttr */
public final class n extends a {
    public o e;
    public String f;
    public int g;
    public String h;

    public n(HttpOperation httpOperation) {
        this.g = -1;
        this.h = null;
        this.e = new o(httpOperation);
        k l = httpOperation.l();
        this.g = l.a;
        this.h = e.b(l.b);
        this.b = (long) l.k;
        this.d = l.o;
        if (httpOperation.o()) {
            a(httpOperation.n());
        }
        if (l.c != null) {
            Writer stringWriter = new StringWriter();
            l.c.printStackTrace(new PrintWriter(stringWriter, true));
            this.f = stringWriter.getBuffer().toString();
        }
    }

    protected JSONObject a() throws JSONException {
        JSONObject a = super.a();
        a.put("content", this.e.a());
        a.put("exception", this.f);
        a.put("redirectURL", TtmlNode.ANONYMOUS_REGION_ID);
        a.put("status", this.g);
        a.put("statusText", this.h);
        return a;
    }
}
