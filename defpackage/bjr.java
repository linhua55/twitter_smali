package defpackage;

import bgv;
import com.twitter.model.dms.Participant;
import com.twitter.util.collection.CollectionUtils;
import com.twitter.util.serialization.n;
import com.twitter.util.serialization.s;
import java.util.List;

/* compiled from: Twttr */
/* renamed from: bjr */
public class bjr extends bgv<List<Participant>> {
    public static final n<bjr> d;

    static {
        d = new bju();
    }

    private bjr(bjt bjt) {
        super(bjt);
    }

    public final List<Participant> h() {
        return (List) c();
    }

    public n<List<Participant>> a() {
        return s.a(Participant.a);
    }

    public boolean a(long j) {
        List h = h();
        return (CollectionUtils.b(h) || h.get(0) == null || ((Participant) h.get(0)).b == j) ? false : true;
    }

    public int g() {
        return 11;
    }
}
