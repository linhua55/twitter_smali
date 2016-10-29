package defpackage;

import android.content.Context;
import bbw;
import com.twitter.library.client.az;
import com.twitter.library.client.bg;
import com.twitter.library.service.ab;

/* compiled from: Twttr */
/* renamed from: cbt */
public class cbt implements bbv {
    private final Context a;
    private final az b;
    private final bg c;

    public cbt(Context context, az azVar, bg bgVar) {
        this.a = context.getApplicationContext();
        this.b = azVar;
        this.c = bgVar;
    }

    public void b(bbw bbw) {
        if (a(bbw)) {
            cbp cbp = (cbp) bbw;
            this.b.a(new bms(this.a, new ab(this.c.c()), cbp.a).b(cbp.b).a(cbp.e).a(cbp.c).a(cbp.d).c(cbp.f).d(cbp.g).e(cbp.h).f(cbp.i).g(cbp.j).h(cbp.k).i(cbp.l).j(cbp.m));
            return;
        }
        throw new IllegalArgumentException("Event must be a PromotedLog, is a " + bbw.getClass().getCanonicalName());
    }

    public boolean a(bbw bbw) {
        return bbw instanceof cbp;
    }
}
