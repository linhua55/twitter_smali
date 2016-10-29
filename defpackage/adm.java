package defpackage;

import com.twitter.android.moments.ui.fullscreen.cg;
import com.twitter.util.z;

/* compiled from: Twttr */
/* renamed from: adm */
public class adm implements z<Boolean> {
    private final cg a;
    private final adi b;

    public adm(cg cgVar, adi adi) {
        this.a = cgVar;
        this.b = adi;
        this.a.c().a((z) this);
    }

    public void a(Boolean bool) {
        if (bool.booleanValue()) {
            this.b.a(7);
        } else {
            this.b.a(8);
        }
    }

    public void a() {
        this.a.c().b(this);
    }
}
