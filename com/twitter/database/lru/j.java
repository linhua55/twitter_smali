package com.twitter.database.lru;

import cfb;
import com.twitter.database.lru.schema.LruSchema;
import com.twitter.database.lru.schema.a;
import com.twitter.database.lru.schema.b;
import com.twitter.database.lru.schema.c;
import com.twitter.database.lru.schema.d;
import com.twitter.database.model.k;
import com.twitter.database.model.q;
import com.twitter.database.model.r;

/* compiled from: Twttr */
public class j {
    private final q<b> a;
    private final r<c> b;

    public static j a(LruSchema lruSchema) {
        return new j(((a) lruSchema.a(a.class)).f(), lruSchema.c(d.class));
    }

    private j(q<b> qVar, r<c> rVar) {
        this.a = qVar;
        this.b = rVar;
    }

    public int a(String str) {
        k b = this.b.b();
        com.twitter.database.model.j a = this.a.a("category_name=?", new String[]{str});
        try {
            int a2;
            if (a.b()) {
                a2 = (int) ((b) a.a).a();
                a.close();
                return a2;
            }
            ((c) b.d).a(str);
            a2 = (int) b.b();
            return a2;
        } finally {
            a.close();
        }
    }

    public void a(int i) {
        if (this.b.a("_id=?", String.valueOf(i)) < 0) {
            cfb.e(getClass().getSimpleName(), "Failed to delete category id: " + i);
        }
    }
}
