package defpackage;

import com.twitter.model.core.TwitterUser;
import com.twitter.model.json.people.JsonModulePage;
import com.twitter.util.object.e;

/* compiled from: Twttr */
/* renamed from: alp */
final class alp implements ctc<JsonModulePage, Iterable<TwitterUser>> {
    alp() {
    }

    public Iterable<TwitterUser> a(JsonModulePage jsonModulePage) {
        return alo.b(((JsonModulePage) e.a((Object) jsonModulePage)).b);
    }
}
