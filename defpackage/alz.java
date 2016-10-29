package defpackage;

import com.twitter.model.core.Tweet;
import com.twitter.util.object.e;

/* compiled from: Twttr */
/* renamed from: alz */
final class alz implements ctc<Tweet, Long> {
    alz() {
    }

    public Long a(Tweet tweet) {
        return Long.valueOf(((Tweet) e.a((Object) tweet)).H);
    }
}
