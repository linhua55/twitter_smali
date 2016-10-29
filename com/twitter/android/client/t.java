package com.twitter.android.client;

import android.content.Context;
import com.twitter.library.client.Session;
import java.util.HashMap;

/* compiled from: Twttr */
public class t {
    private static Context a;
    private static HashMap<String, r> b;
    private static r c;

    public static void a(Context context) {
        a = context;
        r.a(context);
        b = new HashMap();
    }

    public static r a(Session session) {
        if (c != null) {
            return c;
        }
        return a(session.c());
    }

    public static r a(String str) {
        if (c != null) {
            return c;
        }
        r rVar = (r) b.get(str);
        if (rVar != null) {
            return rVar;
        }
        rVar = new r();
        b.put(str, rVar);
        return rVar;
    }
}
