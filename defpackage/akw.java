package defpackage;

import com.twitter.model.core.Tweet;
import com.twitter.util.collection.CollectionUtils;
import java.util.List;
import java.util.Map;

/* compiled from: Twttr */
/* renamed from: akw */
class akw implements cyw<List<Tweet>, Map<Long, Tweet>> {
    final /* synthetic */ akv a;

    akw(akv akv) {
        this.a = akv;
    }

    public Map<Long, Tweet> a(List<Tweet> list) {
        return CollectionUtils.a((Iterable) list, new akx(this));
    }
}
