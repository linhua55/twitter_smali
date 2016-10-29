package com.twitter.library.client.navigation;

import com.twitter.util.collection.MutableList;
import java.util.List;

/* compiled from: Twttr */
class ab {
    public final w a;
    public final List<x> b;
    public final List<y> c;
    public int d;

    ab(w wVar) {
        this.b = MutableList.a(2);
        this.c = MutableList.a(2);
        this.d = 0;
        this.a = wVar;
    }

    public void a(int i) {
        this.d = ae.a(this.d, i);
    }
}
