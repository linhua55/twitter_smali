package com.twitter.database.lru;

import auc;
import com.twitter.database.lru.schema.LruSchema;
import com.twitter.database.lru.schema.e;
import com.twitter.database.lru.schema.f;
import com.twitter.database.lru.schema.g;
import com.twitter.database.model.i;
import com.twitter.database.model.j;
import com.twitter.database.model.k;
import com.twitter.database.model.l;
import com.twitter.database.model.q;
import com.twitter.database.model.r;
import com.twitter.database.model.w;
import com.twitter.util.collection.n;
import com.twitter.util.h;
import cyw;
import java.util.Collection;

/* compiled from: Twttr */
public class t {
    private final l a;

    public t(LruSchema lruSchema) {
        this.a = lruSchema;
    }

    public byte[] a(int i, String str, int i2, long j) {
        h.c();
        j a = c().a("category_id=? AND key=? AND version=? AND expiry_timestamp>?", new String[]{String.valueOf(i), str, String.valueOf(i2), String.valueOf(j)});
        try {
            if (a.b()) {
                byte[] b = ((f) a.a).b();
                return b;
            }
            a.close();
            return null;
        } finally {
            a.close();
        }
    }

    public void a(int i, String str, int i2, byte[] bArr, long j, long j2) {
        h.c();
        k b = b().b();
        ((com.twitter.database.lru.schema.h) b.d).a(bArr).b(j2 + j).a(j2).c((long) bArr.length);
        b.a("category_id=? AND key=? AND version=? AND expiry_timestamp>?", String.valueOf(i), str, String.valueOf(i2), String.valueOf(j2));
    }

    public void b(int i, String str, int i2, byte[] bArr, long j, long j2) {
        h.c();
        k b = b().b();
        ((com.twitter.database.lru.schema.h) b.d).a(bArr).b(j2 + j).a(j2).c((long) bArr.length).a(i).a(str).b(i2);
        b.b();
    }

    public void a(int i) {
        h.c();
        b().a("category_id=?", String.valueOf(i));
    }

    public void a(long j) {
        h.c();
        b().a("expiry_timestamp<?", String.valueOf(j));
    }

    public void a(int i, int i2) {
        a(i, i2, new u(this));
    }

    public void b(int i, int i2) {
        a(i, i2, new v(this));
    }

    private void a(int i, int i2, cyw<f, Integer> cyw_com_twitter_database_lru_schema_f__java_lang_Integer) {
        j a;
        int i3 = 0;
        b().b();
        w f = this.a.f();
        try {
            a = c().a(new i().a(auc.b("category_id", Integer.valueOf(i))).b("expiry_timestamp DESC").a());
            n d = n.d();
            if (a.b()) {
                do {
                    i3 = ((Integer) cyw_com_twitter_database_lru_schema_f__java_lang_Integer.a(a.a)).intValue() + i3;
                    if (i3 > i2) {
                        break;
                    }
                } while (a.c());
                if (!a.d()) {
                    do {
                        d.c(Long.valueOf(((f) a.a).a()));
                    } while (a.c());
                }
            }
            a.close();
            b().a(auc.a("_id", (Collection) d.q()), new String[0]);
            f.a();
            f.close();
        } catch (Throwable th) {
            f.close();
        }
    }

    private r<com.twitter.database.lru.schema.h> b() {
        return this.a.c(g.class);
    }

    private q<f> c() {
        return ((e) this.a.a(e.class)).f();
    }

    public w a() {
        h.c();
        return this.a.f();
    }
}
