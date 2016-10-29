package defpackage;

import com.twitter.model.core.TwitterUser;
import com.twitter.util.object.e;

/* compiled from: Twttr */
/* renamed from: aly */
final class aly implements ctc<TwitterUser, Long> {
    aly() {
    }

    public Long a(TwitterUser twitterUser) {
        return Long.valueOf(((TwitterUser) e.a((Object) twitterUser)).bf_());
    }
}
