package defpackage;

import com.twitter.database.lru.ac;
import com.twitter.library.util.FriendshipCache;
import com.twitter.model.core.Tweet;
import com.twitter.model.core.TwitterUser;
import com.twitter.model.people.ag;
import com.twitter.model.people.g;
import cvq;
import java.io.Closeable;
import java.io.IOException;
import java.util.List;
import java.util.Map;
import rx.o;

/* compiled from: Twttr */
/* renamed from: akj */
public class akj implements Closeable {
    private final akt a;
    private final FriendshipCache b;
    private final ala c;
    private final akv d;
    private final ac<String, ag> e;
    private final akp f;

    public akj(FriendshipCache friendshipCache, akp akp, ala ala, akv akv, akt akt, ac<String, ag> acVar) {
        this.b = friendshipCache;
        this.f = akp;
        this.c = ala;
        this.d = akv;
        this.a = akt;
        this.e = acVar;
    }

    public boolean a() {
        return !this.f.a.isEmpty();
    }

    public o<List<g>> b() {
        o k = o.a(c(), this.a.a_(this.f.a)).e(cvq.d()).g(new akk(this)).k();
        o j = k.j(d());
        o<List<g>> a = o.a(o.a(k, j, new akl(this)), k.j(e()), new akm(this));
        k.a();
        return a;
    }

    private o<ag> c() {
        if (!this.f.a()) {
            return o.c();
        }
        return this.e.a(String.valueOf(this.f.a.hashCode())).b();
    }

    private cyw<List<g>, o<Map<Long, TwitterUser>>> d() {
        return new akn(this);
    }

    private cyw<List<g>, o<Map<Long, Tweet>>> e() {
        return new ako(this);
    }

    public void close() throws IOException {
        this.a.close();
        this.c.close();
        this.d.close();
    }
}
