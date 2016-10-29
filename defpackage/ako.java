package defpackage;

import com.twitter.model.core.Tweet;
import com.twitter.model.people.g;
import com.twitter.util.collection.n;
import java.util.List;
import java.util.Map;
import rx.o;

/* compiled from: Twttr */
/* renamed from: ako */
class ako implements cyw<List<g>, o<Map<Long, Tweet>>> {
    final /* synthetic */ akj a;

    ako(akj akj) {
        this.a = akj;
    }

    public o<Map<Long, Tweet>> a(List<g> list) {
        return this.a.d.a((List) n.e().c(alo.d(list)).q());
    }
}
