package com.google.android.gms.internal;

import android.content.Context;
import java.util.Map;

@oi
public class rr {
    public static final rv<Void> a;
    private static ua b;
    private static final Object c;

    static {
        c = new Object();
        a = new rs();
    }

    public rr(Context context) {
        b = a(context);
    }

    private static ua a(Context context) {
        ua uaVar;
        synchronized (c) {
            if (b == null) {
                b = c.a(context.getApplicationContext());
            }
            uaVar = b;
        }
        return uaVar;
    }

    public <T> sm<T> a(String str, rv<T> rvVar) {
        ry ryVar = new ry(this, null);
        b.a(new rw(str, rvVar, ryVar));
        return ryVar;
    }

    public sm<String> a(String str, Map<String, String> map) {
        ry ryVar = new ry(this, null);
        b.a(new ru(this, str, ryVar, new rt(this, str, ryVar), map));
        return ryVar;
    }
}
