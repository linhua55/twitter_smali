package defpackage;

import com.twitter.model.core.TwitterUser;
import com.twitter.util.collection.CollectionUtils;
import java.util.List;
import java.util.Map;

/* compiled from: Twttr */
/* renamed from: alb */
class alb implements cyw<List<TwitterUser>, Map<Long, TwitterUser>> {
    final /* synthetic */ ala a;

    alb(ala ala) {
        this.a = ala;
    }

    public Map<Long, TwitterUser> a(List<TwitterUser> list) {
        return CollectionUtils.a((Iterable) list, new alc(this));
    }
}
