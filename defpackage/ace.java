package defpackage;

import atq;
import axw;
import ayg;
import com.twitter.database.model.l;
import java.io.IOException;
import rx.o;

/* compiled from: Twttr */
/* renamed from: ace */
public class ace implements atf<Long, Boolean> {
    private static final Long a;
    private final atf<Long, Long> b;
    private final atf<Long, Long> c;

    public /* synthetic */ o a_(Object obj) {
        return a((Long) obj);
    }

    static {
        a = Long.valueOf(0);
    }

    public static ace a(l lVar) {
        return new ace(new aci(new atq(((axw) lVar.a(axw.class)).f(), new ach()), "_id"), new aci(new atq(((ayg) lVar.a(ayg.class)).f(), new acg()), "moment_id"));
    }

    public ace(atf<Long, Long> atf_java_lang_Long__java_lang_Long, atf<Long, Long> atf_java_lang_Long__java_lang_Long2) {
        this.b = atf_java_lang_Long__java_lang_Long;
        this.c = atf_java_lang_Long__java_lang_Long2;
    }

    public o<Boolean> a(Long l) {
        return o.b(this.b.a_(l).d(1), this.c.a_(l).d(1), new acf(this));
    }

    public void close() throws IOException {
        this.b.close();
        this.c.close();
    }
}
