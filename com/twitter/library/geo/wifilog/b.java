package com.twitter.library.geo.wifilog;

import com.twitter.library.platform.e;
import com.twitter.library.util.au;
import com.twitter.util.collection.CollectionUtils;
import com.twitter.util.collection.n;
import java.util.List;
import java.util.concurrent.TimeUnit;

/* compiled from: Twttr */
public class b {
    public static final long a;
    private List<e> b;

    public b() {
        this.b = n.g();
    }

    static {
        a = TimeUnit.MINUTES.toMillis(2);
    }

    public void a(List<e> list) {
        this.b = CollectionUtils.a(au.a((List) list, a), new c(this));
    }

    public List<e> a() {
        return this.b;
    }

    public boolean b() {
        return !this.b.isEmpty();
    }
}
