package defpackage;

import com.twitter.util.object.e;
import com.twitter.util.serialization.n;
import java.util.List;

/* compiled from: Twttr */
/* renamed from: chx */
public class chx {
    public static final n<chx> a;
    public final String b;
    public final Object c;
    public final List<Object> d;
    public final boolean e;

    static {
        a = new cia();
    }

    public chx(chz chz) {
        this.b = e.b(chz.a);
        this.c = chz.b;
        this.d = com.twitter.util.collection.n.a(chz.c);
        this.e = chz.d;
    }
}
