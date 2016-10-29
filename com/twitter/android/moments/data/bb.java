package com.twitter.android.moments.data;

import com.twitter.util.collection.MutableList;
import cyw;
import defpackage.cll;
import java.util.List;

/* compiled from: Twttr */
class bb implements cyw<List<cll>, List<cll>> {
    final /* synthetic */ List a;
    final /* synthetic */ ay b;

    bb(ay ayVar, List list) {
        this.b = ayVar;
        this.a = list;
    }

    public List<cll> a(List<cll> list) {
        List<cll> a = MutableList.a(this.a.size());
        for (cll cll : list) {
            if (this.a.contains(cll.b)) {
                a.add(cll);
            }
        }
        return a;
    }
}
