package defpackage;

import blz;
import com.twitter.model.moments.d;
import com.twitter.util.collection.ao;
import com.twitter.util.object.b;
import com.twitter.util.object.e;

/* compiled from: Twttr */
/* renamed from: acm */
public class acm extends atn<Long, ao<Long, d>, blz> {
    private final b<Long, blz> a;

    public acm(b<Long, blz> bVar) {
        this.a = bVar;
    }

    protected ao<Long, d> a(blz blz) {
        if (blz.e() != null) {
            return ao.b(blz.e());
        }
        return ao.a(Long.valueOf(blz.a));
    }

    protected blz a(Long l) {
        return (blz) this.a.a(e.a((Object) l));
    }
}
