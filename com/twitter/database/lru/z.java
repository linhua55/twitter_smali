package com.twitter.database.lru;

import com.twitter.database.lru.LruPolicy.Type;
import java.util.concurrent.Callable;

/* compiled from: Twttr */
class z implements Callable<Void> {
    final /* synthetic */ LruPolicy a;
    final /* synthetic */ int b;
    final /* synthetic */ y c;

    z(y yVar, LruPolicy lruPolicy, int i) {
        this.c = yVar;
        this.a = lruPolicy;
        this.b = i;
    }

    public /* synthetic */ Object call() throws Exception {
        return a();
    }

    public Void a() {
        if (this.a.a == Type.ENTRY_COUNT) {
            this.c.b.b(this.b, this.a.b);
        }
        if (this.a.a == Type.ENTRY_SIZE) {
            this.c.b.a(this.b, this.a.b);
        }
        return null;
    }
}
