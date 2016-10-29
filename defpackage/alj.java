package defpackage;

import com.twitter.model.core.TwitterUser;
import com.twitter.util.object.e;
import java.util.Map;

/* compiled from: Twttr */
/* renamed from: alj */
final class alj implements ctc<TwitterUser, TwitterUser> {
    final /* synthetic */ Map a;

    alj(Map map) {
        this.a = map;
    }

    public TwitterUser a(TwitterUser twitterUser) {
        e.a((Object) twitterUser);
        TwitterUser twitterUser2 = (TwitterUser) this.a.get(Long.valueOf(twitterUser.bf_()));
        return twitterUser2 == null ? twitterUser : twitterUser2;
    }
}
