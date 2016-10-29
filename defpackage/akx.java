package defpackage;

import com.twitter.model.core.Tweet;
import com.twitter.util.object.e;

/* compiled from: Twttr */
/* renamed from: akx */
class akx implements ctc<Tweet, Long> {
    final /* synthetic */ akw a;

    akx(akw akw) {
        this.a = akw;
    }

    public Long a(Tweet tweet) {
        return Long.valueOf(((Tweet) e.a((Object) tweet)).H);
    }
}
