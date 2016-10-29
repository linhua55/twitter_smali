package com.twitter.android.eventtimelines;

import com.twitter.util.collection.x;
import com.twitter.util.collection.z;
import com.twitter.util.object.f;

/* compiled from: Twttr */
public class c extends f<a> {
    private x<String> a;
    private String b;
    private x<z<Integer, Integer>> c;

    public /* synthetic */ Object c() {
        return d();
    }

    public c a(x<String> xVar) {
        this.a = xVar;
        return this;
    }

    public c a(String str) {
        this.b = str;
        return this;
    }

    public c b(x<z<Integer, Integer>> xVar) {
        this.c = xVar;
        return this;
    }

    public a d() {
        return new a(this.b, this.c, null);
    }
}
