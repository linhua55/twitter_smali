package com.twitter.database.internal;

import com.twitter.database.model.f;
import java.util.LinkedHashSet;
import java.util.Set;

/* compiled from: Twttr */
public class e implements f {
    private final Set<l> a;
    private int b;
    private boolean c;

    public e() {
        this.a = new LinkedHashSet();
    }

    public void a() {
        this.c = true;
    }

    public void close() {
        this.b--;
        if (this.b == 0) {
            if (!this.c) {
                for (l k : this.a) {
                    k.k();
                }
            }
            this.a.clear();
        }
    }

    void b() {
        this.b++;
    }

    boolean a(l lVar) {
        return this.a.add(lVar);
    }
}
