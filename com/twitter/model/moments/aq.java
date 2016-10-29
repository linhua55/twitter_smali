package com.twitter.model.moments;

import com.twitter.model.timeline.aj;
import com.twitter.util.object.e;
import com.twitter.util.serialization.n;

/* compiled from: Twttr */
public class aq {
    public static final n<aq> a;
    public final String b;
    public final aj c;
    public final String d;

    static {
        a = new ar();
    }

    public aq(String str, aj ajVar, String str2) {
        this.b = e.b(str);
        this.c = ajVar;
        this.d = str2;
    }
}
