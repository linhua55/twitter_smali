package com.twitter.model.moments;

import com.twitter.util.object.e;
import java.util.List;

/* compiled from: Twttr */
public class f {
    private final List<d> a;

    public f(List<d> list) {
        this.a = e.a(list);
    }

    public d a() {
        for (d dVar : this.a) {
            if (dVar.b != null) {
                return dVar;
            }
        }
        return null;
    }
}
