package defpackage;

import android.content.Context;
import bms;
import cbp;
import com.twitter.library.client.az;
import com.twitter.library.client.bg;
import com.twitter.library.service.ab;

/* compiled from: Twttr */
/* renamed from: cbs */
public class cbs implements cbo<cbp> {
    private final Context a;
    private final az b;
    private final bg c;

    public cbs(Context context, az azVar, bg bgVar) {
        this.a = context.getApplicationContext();
        this.b = azVar;
        this.c = bgVar;
    }

    public void a(cbp cbp) {
        this.b.a(new bms(this.a, new ab(this.c.c()), cbp.a).b(cbp.b).a(cbp.e).a(cbp.c).a(cbp.d).c(cbp.f).d(cbp.g).e(cbp.h).f(cbp.i).g(cbp.j).h(cbp.k).i(cbp.l).j(cbp.m));
    }

    public static cbo<cbp> a(Context context) {
        return new cbs(context, az.a(context), bg.a());
    }
}
