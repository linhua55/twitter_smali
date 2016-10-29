package defpackage;

import bjk;
import com.twitter.util.aj;

/* compiled from: Twttr */
/* renamed from: yq */
public class yq extends xu<bjk> {
    private yq(ys ysVar) {
        super(ysVar);
    }

    public void a() {
        this.j.setText(e());
        d();
        b();
    }

    private String e() {
        CharSequence charSequence = this.b.d;
        String a = aj.a(", ", ((bjk) this.a).i());
        if (aj.a(charSequence)) {
            return this.g.getString(2131362494, new Object[]{a});
        } else if (c()) {
            return this.g.getString(2131362496, new Object[]{a});
        } else {
            return this.g.getString(2131362495, new Object[]{charSequence, a});
        }
    }
}
