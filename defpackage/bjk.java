package defpackage;

import bgv;
import com.twitter.model.dms.Participant;
import com.twitter.util.serialization.n;
import java.util.List;

/* compiled from: Twttr */
/* renamed from: bjk */
public class bjk extends bgv<bjn> {
    public static final n<bjk> d;

    static {
        d = new bjq();
    }

    private bjk(bjm bjm) {
        super(bjm);
    }

    public final List<Participant> h() {
        return ((bjn) c()).b;
    }

    public final List<String> i() {
        return ((bjn) c()).d;
    }

    public n<bjn> a() {
        return bjn.a;
    }

    public int g() {
        return 10;
    }
}
