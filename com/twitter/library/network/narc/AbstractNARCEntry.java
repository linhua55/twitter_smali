package com.twitter.library.network.narc;

import com.twitter.util.al;
import java.util.Date;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: Twttr */
public abstract class AbstractNARCEntry extends b {
    public String a;
    public long b;
    private final EntryType c;

    /* compiled from: Twttr */
    public enum EntryType {
        appState,
        criticalError,
        network
    }

    protected AbstractNARCEntry(EntryType entryType) {
        this.a = null;
        this.c = entryType;
        this.b = al.b();
    }

    protected synchronized JSONObject a() throws JSONException {
        JSONObject jSONObject;
        jSONObject = new JSONObject();
        jSONObject.put("comment", this.a);
        jSONObject.put("entryType", this.c.name());
        jSONObject.put("pageref", "twitter_android");
        jSONObject.put("startedDateTime", a(new Date(this.b)));
        return jSONObject;
    }
}
