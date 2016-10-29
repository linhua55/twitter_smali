package defpackage;

import com.twitter.util.collection.n;
import com.twitter.util.collection.z;
import java.util.List;

/* compiled from: Twttr */
/* renamed from: cbl */
public class cbl implements cbn {
    private final int a;

    private cbl(int i) {
        this.a = i;
    }

    public List<z<String, ? extends Object>> a() {
        return (List) n.d().c(z.a("swipe_direction", Integer.valueOf(this.a))).q();
    }

    public String b() {
        return "advocate_carousel_details";
    }

    public static cbl a(int i) {
        return new cbl(i);
    }
}
