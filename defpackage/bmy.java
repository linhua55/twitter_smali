package defpackage;

import android.content.Context;
import com.twitter.library.provider.e;
import com.twitter.library.service.aa;
import com.twitter.library.service.ab;
import com.twitter.library.service.x;
import com.twitter.util.m;

/* compiled from: Twttr */
/* renamed from: bmy */
public class bmy extends x {
    public int a;
    private final bne b;
    private final long c;

    public bmy(Context context, ab abVar, bne bne) {
        super(context, bmy.class.getName(), abVar);
        this.b = bne;
        this.c = this.b.a();
        this.b.a(m.b());
    }

    protected void a_(aa aaVar) {
        boe boe = new boe(this.p, N(), 2);
        boe.a(400).a((x) this);
        aa P = boe.P();
        aaVar.a(P);
        if (P.b()) {
            this.a = boe.a().size();
            this.b.a(this.a);
            if (this.a > 0) {
                e eVar = new e(this.p.getContentResolver());
                S().d(N().c, eVar);
                eVar.a();
                return;
            }
            return;
        }
        this.b.a(this.c);
    }
}
