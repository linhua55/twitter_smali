package defpackage;

import android.content.Context;
import bms;
import com.twitter.library.api.PromotedEvent;
import com.twitter.library.api.z;
import com.twitter.library.provider.di;
import com.twitter.library.service.aa;
import com.twitter.library.service.ab;
import com.twitter.library.service.x;
import com.twitter.model.account.OAuthToken;
import java.util.Map;

/* compiled from: Twttr */
/* renamed from: bmt */
public class bmt extends x {
    private static final Object a;
    private final long b;
    private final OAuthToken c;
    private final String g;

    static {
        a = new Object();
    }

    public bmt(Context context, long j, String str, OAuthToken oAuthToken) {
        super(context, bmt.class.getName());
        this.b = j;
        this.c = oAuthToken;
        this.g = str;
    }

    protected void a_(aa aaVar) {
        synchronized (a) {
            di a = di.a(this.p, this.b);
            Map a2 = PromotedEvent.a();
            for (z zVar : a.e()) {
                PromotedEvent promotedEvent = (PromotedEvent) a2.get(zVar.b);
                if (promotedEvent != null) {
                    new bms(this.p, new ab(this.b, this.g, this.c, true), promotedEvent).b(zVar.a).a(zVar.c).a(zVar.d).a(zVar.e).b(true).c(zVar.g).d(zVar.h).e(zVar.i).f(zVar.j).g(zVar.k).h(zVar.l).i(zVar.m).j(zVar.n).a(this).P();
                } else {
                    bbn.a(new bbl(new Exception("Unexpected promoted event stored")).a(NotificationCompatApi21.CATEGORY_EVENT, promotedEvent));
                }
            }
        }
    }
}
