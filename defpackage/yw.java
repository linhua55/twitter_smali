package defpackage;

import bjv;
import com.twitter.util.aj;

/* compiled from: Twttr */
/* renamed from: yw */
public class yw extends xu<bjv> {
    private yw(yy yyVar) {
        super(yyVar);
    }

    public void a() {
        Object h = ((bjv) this.a).h();
        String a = aj.a(", ", h);
        if (h.size() == 1) {
            this.j.setText(this.g.getString(2131362493, new Object[]{a}));
        } else {
            this.j.setText(this.g.getString(2131362492, new Object[]{a}));
        }
        d();
        b();
    }
}
