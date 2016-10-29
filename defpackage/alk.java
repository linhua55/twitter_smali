package defpackage;

import com.twitter.model.core.Tweet;
import com.twitter.util.object.e;
import java.util.Map;

/* compiled from: Twttr */
/* renamed from: alk */
final class alk implements ctc<Tweet, Tweet> {
    final /* synthetic */ Map a;

    alk(Map map) {
        this.a = map;
    }

    public Tweet a(Tweet tweet) {
        return (Tweet) e.b((Tweet) this.a.get(Long.valueOf(((Tweet) e.a((Object) tweet)).H)), tweet);
    }
}
