package defpackage;

import com.twitter.model.dms.Participant;
import com.twitter.util.serialization.n;
import java.util.List;

/* compiled from: Twttr */
/* renamed from: bjn */
public class bjn {
    public static final n<bjn> a;
    public final List<Participant> b;
    public String c;
    public List<String> d;

    static {
        a = new bjp();
    }

    public bjn(bjo bjo) {
        this.b = bjo.a;
        this.c = bjo.b;
        this.d = bjo.c;
    }
}
