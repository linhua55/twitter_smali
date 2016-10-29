package defpackage;

import com.twitter.library.scribe.MomentScribeDetails;
import com.twitter.library.scribe.MomentScribeDetails.Transition;
import com.twitter.library.scribe.TwitterScribeItem;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.library.scribe.j;
import com.twitter.library.scribe.p;
import com.twitter.model.moments.ab;

/* compiled from: Twttr */
/* renamed from: adx */
class adx extends acc<Long> {
    final /* synthetic */ ab a;
    final /* synthetic */ ab b;
    final /* synthetic */ adw c;

    adx(adw adw, ab abVar, ab abVar2) {
        this.c = adw;
        this.a = abVar;
        this.b = abVar2;
    }

    public /* synthetic */ void b_(Object obj) {
        a((Long) obj);
    }

    public void a(Long l) {
        j a = new j().a((Transition) new p().c(this.a.b).q()).a(Boolean.valueOf(this.b.k)).a(this.b.b);
        if (l != null) {
            a.c(l.longValue());
        }
        bbu.a(new TwitterScribeLog(this.c.a, "moments:capsule:pivot:moment:open").a(TwitterScribeItem.a((MomentScribeDetails) a.q())));
    }
}
