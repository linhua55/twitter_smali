package defpackage;

import android.content.Context;
import android.support.annotation.VisibleForTesting;
import com.twitter.database.model.j;
import com.twitter.database.model.k;
import com.twitter.database.model.l;
import com.twitter.database.model.w;
import com.twitter.library.provider.ar;
import com.twitter.util.collection.r;
import java.nio.ByteBuffer;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

/* compiled from: Twttr */
/* renamed from: bua */
public class bua {
    private static final Map<Long, bua> a;
    private final l b;
    private final long c;

    static {
        a = new HashMap();
    }

    public static bua a(Context context, long j) {
        bua bua;
        synchronized (a) {
            bua = (bua) a.get(Long.valueOf(j));
            if (bua == null) {
                bua = new bua(ar.a(context), j);
                a.put(Long.valueOf(j), bua);
            }
        }
        return bua;
    }

    @VisibleForTesting
    bua(ar arVar, long j) {
        this.b = arVar.b();
        this.c = j;
    }

    public Map<ByteBuffer, Long> a() {
        r d = r.d();
        j c = c();
        while (c.c()) {
            try {
                d.b(ByteBuffer.wrap(((auu) c.a).b()), Long.valueOf(((auu) c.a).c()));
            } finally {
                c.close();
            }
        }
        return (Map) d.q();
    }

    public int b() {
        return this.b.c(auv.class).a(null, new String[0]);
    }

    public void a(Map<ByteBuffer, Long> map) {
        k b = this.b.c(auv.class).b();
        w f = this.b.f();
        try {
            b.a(true);
            ((auw) b.d).a(this.c);
            for (Entry entry : map.entrySet()) {
                ((auw) b.d).a(((ByteBuffer) entry.getKey()).array()).b(((Long) entry.getValue()).longValue()).a(this.c);
                b.b();
            }
            f.a();
        } finally {
            f.close();
        }
    }

    private j<auu> c() {
        return ((aut) this.b.a(aut.class)).f().a("user_id=?", new String[]{String.valueOf(this.c)});
    }

    public void a(List<Long> list) {
        com.twitter.database.model.r c = this.b.c(auv.class);
        String valueOf = String.valueOf(this.c);
        w f = this.b.f();
        try {
            for (Long longValue : list) {
                long longValue2 = longValue.longValue();
                c.a("user_id=? AND remote_id=?", valueOf, String.valueOf(longValue2));
            }
            f.a();
        } finally {
            f.close();
        }
    }
}
