package com.twitter.model.dms;

import com.twitter.model.core.TwitterUser;
import com.twitter.util.collection.n;
import com.twitter.util.collection.r;
import java.util.List;
import java.util.Map;

/* compiled from: Twttr */
public class bd {
    public final Map<Long, ad> a;
    public final Map<String, ad> b;
    public final List<TwitterUser> c;

    public bd(Map<Long, ad> map, Map<String, ad> map2, List<TwitterUser> list) {
        this.a = r.a(map);
        this.b = r.a(map2);
        this.c = n.a(list);
    }
}
