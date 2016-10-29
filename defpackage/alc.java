package defpackage;

import com.twitter.model.core.TwitterUser;
import com.twitter.util.object.e;

/* compiled from: Twttr */
/* renamed from: alc */
class alc implements ctc<TwitterUser, Long> {
    final /* synthetic */ alb a;

    alc(alb alb) {
        this.a = alb;
    }

    public Long a(TwitterUser twitterUser) {
        return Long.valueOf(((TwitterUser) e.a((Object) twitterUser)).bf_());
    }
}
