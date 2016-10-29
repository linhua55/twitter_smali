package defpackage;

import bgv;
import com.twitter.util.aj;
import com.twitter.util.serialization.n;
import com.twitter.util.serialization.s;

/* compiled from: Twttr */
/* renamed from: bkc */
public class bkc extends bgv<String> {
    public static final n<bkc> d;

    static {
        d = new bkf();
    }

    private bkc(bke bke) {
        super(bke);
    }

    public boolean h() {
        return aj.a((CharSequence) c());
    }

    public boolean a(String str) {
        return !h() && ((String) c()).equals(str);
    }

    public int g() {
        return 20;
    }

    public n<String> a() {
        return s.i;
    }
}
