package com.twitter.library.network.narc;

import cfb;
import com.twitter.library.network.narc.AbstractNARCEntry.EntryType;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: Twttr */
public class c extends AbstractNARCEntry {
    private final String c;
    private final String d;
    private final String e;

    public c(String str, String str2, Throwable th) {
        super(EntryType.criticalError);
        this.c = str;
        this.d = str2;
        this.e = th != null ? cfb.a(th) : null;
    }

    protected synchronized JSONObject a() throws JSONException {
        JSONObject a;
        a = super.a();
        a.put("errorTypeName", this.c);
        a.put("errorMessage", this.d);
        if (this.e != null) {
            a.put("stackTrace", this.e);
        }
        return a;
    }
}
