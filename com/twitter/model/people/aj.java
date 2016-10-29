package com.twitter.model.people;

import com.twitter.util.object.e;
import com.twitter.util.serialization.n;

/* compiled from: Twttr */
public class aj {
    public static final n<aj> a;
    public static final aj b;
    public final String c;
    public final String d;

    static {
        a = new al();
        b = new aj(null, null);
    }

    public aj(String str, String str2) {
        this.c = e.b(str);
        this.d = e.b(str2);
    }
}
