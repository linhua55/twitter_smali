package defpackage;

import chd;
import com.twitter.library.api.TwitterLocation;
import com.twitter.util.aj;
import cvi;
import sw;

/* compiled from: Twttr */
/* renamed from: tc */
public class tc implements sw<String, TwitterLocation> {
    private final sy a;

    public tc(sy syVar) {
        this.a = syVar;
    }

    public void a(String str, sx<String, TwitterLocation> sxVar) {
        if (this.a.a()) {
            b(str, sxVar);
            return;
        }
        chd chd = new chd(this.a.a(str));
        if (chd.aU_() == 0 && aj.a(str)) {
            cvi.a(chd);
            b(str, sxVar);
            return;
        }
        sxVar.a(str, chd);
    }

    void b(String str, sx<String, TwitterLocation> sxVar) {
        this.a.a(new td(this, str, sxVar));
    }

    public void a() {
        this.a.b();
    }
}
