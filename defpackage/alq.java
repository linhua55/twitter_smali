package defpackage;

import com.twitter.model.json.people.JsonModule;
import com.twitter.model.json.people.JsonModulePage;
import com.twitter.util.collection.n;
import com.twitter.util.object.e;

/* compiled from: Twttr */
/* renamed from: alq */
final class alq implements ctc<JsonModule, Iterable<JsonModulePage>> {
    alq() {
    }

    public Iterable<JsonModulePage> a(JsonModule jsonModule) {
        e.a((Object) jsonModule);
        return cto.a(n.b(jsonModule.c.b), e.a(jsonModule.c.b.a));
    }
}
