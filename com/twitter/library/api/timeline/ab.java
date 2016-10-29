package com.twitter.library.api.timeline;

import android.content.Context;
import android.support.annotation.CallSuper;
import android.support.annotation.VisibleForTesting;
import bvq;
import com.twitter.internal.network.HttpOperation;
import com.twitter.library.api.ai;
import com.twitter.library.api.as;
import com.twitter.library.api.timeline.TimelineHelper.PrefetchOrder;
import com.twitter.library.provider.ch;
import com.twitter.library.provider.ck;
import com.twitter.library.provider.di;
import com.twitter.library.service.aa;
import com.twitter.library.service.c;
import com.twitter.library.service.e;
import com.twitter.model.core.TwitterUser;
import com.twitter.model.timeline.ac;
import com.twitter.model.timeline.ae;
import com.twitter.model.timeline.av;
import com.twitter.model.timeline.bk;
import com.twitter.model.timeline.bn;
import com.twitter.model.timeline.cj;
import com.twitter.util.aj;
import com.twitter.util.object.ObjectUtils;
import java.util.List;
import java.util.Locale;
import tv.periscope.chatman.api.ControlMessage;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public abstract class ab extends ak<as> {
    private final TwitterUser a;
    protected final String b;
    protected final int c;
    protected ac h;
    protected List<av> i;
    private final long j;
    private long k;
    private bk l;

    protected abstract int g();

    protected /* synthetic */ c f() {
        return e();
    }

    protected ab(Context context, String str, com.twitter.library.service.ab abVar, TwitterUser twitterUser, int i) {
        this(context, str, abVar, twitterUser, -1, i);
    }

    protected ab(Context context, String str, com.twitter.library.service.ab abVar, long j, int i) {
        this(context, str, abVar, null, j, i);
    }

    private ab(Context context, String str, com.twitter.library.service.ab abVar, TwitterUser twitterUser, long j, int i) {
        super(context, str, abVar);
        if (twitterUser == null && j == -1) {
            throw new IllegalArgumentException(String.format("Either timelineOwner or timelineOwnerId must be valid. timelineOwner: %s timelineOwnerId: %d", new Object[]{twitterUser, Long.valueOf(j)}));
        }
        this.b = abVar.e;
        this.a = twitterUser;
        this.j = j;
        this.c = i;
    }

    public <T extends ab> T a(long j) {
        this.k = j;
        return (ab) ObjectUtils.a((Object) this);
    }

    public <T extends ab> T a(ac acVar) {
        this.h = acVar;
        return (ab) ObjectUtils.a((Object) this);
    }

    public final <T extends ab> T a(bk bkVar) {
        this.l = bkVar;
        return (ab) ObjectUtils.a((Object) this);
    }

    public final bk z() {
        return this.l;
    }

    public List<av> A() {
        return this.i;
    }

    @CallSuper
    protected e h() {
        e K = K();
        b(K);
        return K;
    }

    private void b(e eVar) {
        if (this.h == null) {
            this.h = a(this.c, B());
        }
        if (aj.b(this.h.b)) {
            eVar.a("up_cursor", this.h.b);
        }
        if (aj.b(this.h.c)) {
            eVar.a("down_cursor", this.h.c);
        }
    }

    protected al B() {
        return new ad(S(), cj.b(g()), C(), this.k);
    }

    protected void a(e eVar) {
        if (bvq.a(cj.a(g()))) {
            eVar.a("include_tweet_pivots", true);
        }
    }

    protected as e() {
        return as.a(44, this.a);
    }

    protected void a(HttpOperation httpOperation, aa aaVar, as asVar) {
        if (httpOperation.k() && asVar != null) {
            ai aiVar = (ai) asVar.b();
            this.i = aiVar.a;
            ac a = a(aiVar);
            a(a.b, a.a, a.c, a.e);
            aaVar.c.putInt("scribe_item_count", a.b);
        }
    }

    protected void a(int i, boolean z, boolean z2, bk bkVar) {
        if (i > 0 || z || z2) {
            y();
            this.p.getContentResolver().notifyChange(ck.a(g()), null);
        }
        d(i);
        a(bkVar);
    }

    protected void y() {
    }

    protected ac a(ai aiVar) {
        boolean z;
        boolean z2;
        di S = S();
        List list = aiVar.a;
        long C = C();
        int g = g();
        boolean z3 = this.c == 4 && S.a(g, this.k, C);
        if (this.c == 3 && list.isEmpty()) {
            z = true;
        } else {
            z = false;
        }
        boolean equals = "bottom".equals(aiVar.b.d);
        boolean z4;
        if (this.c == 2 || this.c == 4) {
            z4 = true;
        } else {
            z4 = false;
        }
        if (equals && r2) {
            equals = true;
        } else {
            equals = false;
        }
        if (O() || this.c != 2) {
            z2 = false;
        } else {
            z2 = true;
        }
        aiVar.a(new com.twitter.library.api.aj(this.c, (ac) com.twitter.util.object.e.a(this.h)));
        int a = S.a((ch) new com.twitter.library.provider.cj().a(aiVar).a(null).a(C).a(g).a(t()).a(z).b(equals).c(z2).d(true).e(O()).a(x()).q());
        boolean z5 = a > 0 && this.c == 2;
        return new ac(z3, a, z, z5, aiVar.d);
    }

    protected bn x() {
        return bn.a;
    }

    protected long C() {
        return this.a != null ? this.a.c : this.j;
    }

    protected String t() {
        return "unspecified";
    }

    protected PrefetchOrder D() {
        switch (this.c) {
            case WireMessage.WIRE_CHAT /*1*/:
            case WireMessage.WIRE_AUTH /*3*/:
                return PrefetchOrder.b;
            case WireMessage.WIRE_CONTROL /*2*/:
                return PrefetchOrder.c;
            default:
                return PrefetchOrder.a;
        }
    }

    @VisibleForTesting
    static ac a(int i, al alVar) {
        switch (i) {
            case WireMessage.WIRE_CHAT /*1*/:
                return (ac) new ae().q();
            case WireMessage.WIRE_CONTROL /*2*/:
                return (ac) new ae().a(alVar.a()).q();
            case WireMessage.WIRE_AUTH /*3*/:
                return (ac) new ae().b(alVar.b()).q();
            case ControlMessage.CONTROL_PRESENCE /*4*/:
                return (ac) new ae().a(alVar.d()).b(alVar.c()).q();
            default:
                throw new IllegalStateException(String.format(Locale.getDefault(), "Attempting to get the request cursor for an unsupported request type: %d", new Object[]{Integer.valueOf(i)}));
        }
    }
}
