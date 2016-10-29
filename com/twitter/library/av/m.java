package com.twitter.library.av;

import com.twitter.model.av.DynamicAdInfo;
import java.util.Map;

/* compiled from: Twttr */
final class m implements ag {
    final /* synthetic */ Map a;
    final /* synthetic */ Map b;
    final /* synthetic */ l c;

    m(Map map, Map map2, l lVar) {
        this.a = map;
        this.b = map2;
        this.c = lVar;
    }

    public boolean a(a aVar) {
        String l = Long.toString(aVar.a);
        return this.a.containsKey(l) || this.b.containsKey(l);
    }

    public void a(String str, a aVar, DynamicAdInfo dynamicAdInfo) {
        Map map = (aVar == null || aVar.b == null) ? this.b : this.a;
        map.put(str, dynamicAdInfo);
        this.c.a(str, dynamicAdInfo);
    }
}
