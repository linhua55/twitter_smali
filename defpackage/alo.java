package defpackage;

import com.twitter.model.core.Tweet;
import com.twitter.model.core.TwitterUser;
import com.twitter.model.core.cm;
import com.twitter.model.json.people.JsonModule;
import com.twitter.model.json.people.JsonModulePage;
import com.twitter.model.people.aa;
import com.twitter.model.people.am;
import com.twitter.model.people.g;
import com.twitter.model.people.l;
import com.twitter.util.collection.n;
import java.util.List;

/* compiled from: Twttr */
/* renamed from: alo */
public class alo {
    public static Iterable<TwitterUser> a(List<JsonModule> list) {
        Iterable f = alo.f(list);
        Iterable c = cto.c(f, new alp());
        f = alo.a(f);
        return cto.a(c, f);
    }

    private static Iterable<TwitterUser> a(Iterable<JsonModulePage> iterable) {
        return alo.b(cto.c((Iterable) iterable, new als()));
    }

    private static Iterable<TwitterUser> b(Iterable<am> iterable) {
        return cto.a((Iterable) iterable, new alt());
    }

    public static Iterable<cm> b(List<JsonModule> list) {
        return cto.c(alo.f(list), new alu());
    }

    private static Iterable<Tweet> e(List<g> list) {
        return cto.c(alo.g(list), new alv());
    }

    public static Iterable<Long> c(List<g> list) {
        Iterable g = alo.g(list);
        Iterable b = alo.b(cto.c(g, new alw()));
        g = cto.c(g, new alx());
        return cto.a(cto.a(b, g), new aly());
    }

    public static Iterable<Long> d(List<g> list) {
        return cto.a(alo.e(list), new alz());
    }

    private static Iterable<JsonModulePage> f(List<JsonModule> list) {
        return cto.c((Iterable) list, new alq());
    }

    private static Iterable<aa> g(List<g> list) {
        return cto.c((Iterable) list, new alr());
    }

    private static Iterable<TwitterUser> b(l lVar) {
        if (lVar == null) {
            return n.g();
        }
        return n.a(lVar.f.c);
    }
}
