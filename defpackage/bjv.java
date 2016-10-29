package defpackage;

import bgv;
import com.twitter.util.serialization.n;
import com.twitter.util.serialization.s;
import java.util.List;

/* compiled from: Twttr */
/* renamed from: bjv */
public class bjv extends bgv<List<String>> {
    public static final n<bjv> d;

    static {
        d = new bjx();
    }

    bjv(bjw bjw) {
        super(bjw);
    }

    public final List<String> h() {
        return (List) c();
    }

    public int g() {
        return 18;
    }

    public n<List<String>> a() {
        return s.a(s.i);
    }
}
