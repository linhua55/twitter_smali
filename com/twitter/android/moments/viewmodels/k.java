package com.twitter.android.moments.viewmodels;

import com.twitter.util.collection.n;
import com.twitter.util.collection.r;
import java.util.List;
import java.util.Map;

/* compiled from: Twttr */
public class k {
    public final Map<Long, Boolean> a;
    public final Map<Long, Boolean> b;
    public final List<MomentGuideSection> c;

    public k(Map<Long, Boolean> map, Map<Long, Boolean> map2, List<MomentGuideSection> list) {
        this.a = r.a(map);
        this.b = r.a(map2);
        this.c = n.a(list);
    }
}
