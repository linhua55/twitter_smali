package com.twitter.library.resilient;

import android.content.Context;
import com.twitter.library.client.Session;
import org.json.JSONException;

/* compiled from: Twttr */
public abstract class c<T extends b> {
    public final Class<T> a;
    public final String b;

    public abstract T b(Context context, Session session, d dVar) throws JSONException;

    public c(String str, Class<T> cls) {
        this.a = cls;
        this.b = str;
    }

    public String toString() {
        return "(" + this.b + ", " + this.a.getName() + ")";
    }
}
