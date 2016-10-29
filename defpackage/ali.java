package defpackage;

import com.twitter.model.core.TwitterUser;
import com.twitter.model.people.am;
import com.twitter.util.object.e;
import java.util.Map;

/* compiled from: Twttr */
/* renamed from: ali */
final class ali implements ctc<am, am> {
    final /* synthetic */ Map a;

    ali(Map map) {
        this.a = map;
    }

    public am a(am amVar) {
        e.a((Object) amVar);
        TwitterUser twitterUser = (TwitterUser) this.a.get(Long.valueOf(amVar.a.bf_()));
        return twitterUser == null ? amVar : new am(twitterUser, amVar.b, amVar.c);
    }
}
