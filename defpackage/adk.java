package defpackage;

import com.twitter.library.scribe.MomentScribeDetails;
import com.twitter.library.scribe.MomentScribeDetails.Transition;
import com.twitter.library.scribe.j;
import com.twitter.library.scribe.p;
import com.twitter.model.moments.ab;

/* compiled from: Twttr */
/* renamed from: adk */
class adk extends acc<Long> {
    final /* synthetic */ ab a;
    final /* synthetic */ adi b;

    adk(adi adi, ab abVar) {
        this.b = adi;
        this.a = abVar;
    }

    public /* synthetic */ void b_(Object obj) {
        a((Long) obj);
    }

    public void a(Long l) {
        j a = new j().a(this.a.b).a(Boolean.valueOf(this.a.k)).a((Transition) new p().c(this.b.e.b).q());
        if (l != null) {
            a.c(l.longValue());
        }
        this.b.a("moments:capsule:pivot:moment:impression", (MomentScribeDetails) a.q());
    }
}
