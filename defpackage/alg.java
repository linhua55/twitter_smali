package defpackage;

import com.twitter.model.people.g;
import com.twitter.util.object.e;
import java.util.Map;

/* compiled from: Twttr */
/* renamed from: alg */
final class alg implements ctc<g, g> {
    final /* synthetic */ Map a;
    final /* synthetic */ Map b;

    alg(Map map, Map map2) {
        this.a = map;
        this.b = map2;
    }

    public g a(g gVar) {
        e.a((Object) gVar);
        return alf.a(gVar, this.a, this.b);
    }
}
