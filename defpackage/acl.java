package defpackage;

import com.twitter.model.moments.d;
import com.twitter.util.collection.ao;
import rx.o;

/* compiled from: Twttr */
/* renamed from: acl */
class acl implements cyw<ao<Long, d>, o<ao<com.twitter.model.moments.viewmodels.d, d>>> {
    final /* synthetic */ long a;
    final /* synthetic */ ack b;

    acl(ack ack, long j) {
        this.b = ack;
        this.a = j;
    }

    public o<ao<com.twitter.model.moments.viewmodels.d, d>> a(ao<Long, d> aoVar) {
        if (aoVar.c()) {
            return this.b.b.a_(Long.valueOf(this.a));
        }
        return o.b(ao.b(aoVar.b()));
    }
}
