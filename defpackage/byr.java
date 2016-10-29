package defpackage;

import atf;
import auc;
import com.twitter.database.model.i;
import com.twitter.database.model.j;
import com.twitter.database.model.l;
import com.twitter.database.model.q;
import com.twitter.util.collection.n;
import com.twitter.util.collection.r;
import java.io.IOException;
import java.util.List;
import java.util.Map;
import rx.o;

/* compiled from: Twttr */
/* renamed from: byr */
public class byr implements atf<List<Long>, Map<Long, Long>> {
    private final q<axz> a;

    public /* synthetic */ o a_(Object obj) {
        return a((List) obj);
    }

    public static byr a(l lVar) {
        return new byr(((axy) lVar.a(axy.class)).f());
    }

    public byr(q<axz> qVar) {
        this.a = qVar;
    }

    public o<Map<Long, Long>> a(List<Long> list) {
        j a = this.a.a(new i().a(auc.a("section_id", list)).a());
        try {
            r d = r.d();
            while (a.c()) {
                d.b(Long.valueOf(((axz) a.a).b()), Long.valueOf(((axz) a.a).c()));
            }
            o<Map<Long, Long>> a2 = o.a((Iterable) n.d().c((Map) d.q()).q());
            return a2;
        } finally {
            a.close();
        }
    }

    public void close() throws IOException {
    }
}
