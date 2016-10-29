package org.slf4j.helpers;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import org.slf4j.a;
import org.slf4j.b;

/* compiled from: Twttr */
public class c implements a {
    final ConcurrentMap<String, b> a;

    public c() {
        this.a = new ConcurrentHashMap();
    }

    public b a(String str) {
        b bVar = (b) this.a.get(str);
        if (bVar != null) {
            return bVar;
        }
        b bVar2 = new b(str);
        bVar = (b) this.a.putIfAbsent(str, bVar2);
        return bVar != null ? bVar : bVar2;
    }

    public List<b> a() {
        return new ArrayList(this.a.values());
    }

    public void b() {
        this.a.clear();
    }
}
