package com.twitter.model.moments.viewmodels;

import com.twitter.util.collection.r;
import java.util.Map;

/* compiled from: Twttr */
public class d {
    public final a a;
    public final Map<String, Long> b;

    public d(a aVar, Map<String, Long> map) {
        this.a = aVar;
        this.b = r.a(map);
    }

    public int a() {
        int i = 0;
        long j = 0;
        int size = this.a.d().size();
        int i2 = 0;
        while (i < size) {
            int i3;
            long j2;
            Long l = (Long) this.b.get(this.a.c(i).h());
            if (l == null || l.longValue() <= j) {
                long j3 = j;
                i3 = i2;
                j2 = j3;
            } else {
                j2 = l.longValue();
                i3 = i;
            }
            i++;
            i2 = i3;
            j = j2;
        }
        return i2;
    }
}
