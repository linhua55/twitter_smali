package defpackage;

import com.twitter.model.core.TwitterUser;
import com.twitter.util.collection.n;
import com.twitter.util.object.f;
import java.util.List;
import java.util.Map;

/* compiled from: Twttr */
/* renamed from: cge */
public final class cge extends f<cgd> {
    long a;
    String b;
    int c;
    String d;
    List<TwitterUser> e;
    boolean f;
    private List<Long> g;
    private Map<String, TwitterUser> h;

    public cge() {
        this.c = 0;
        this.e = n.g();
        this.f = false;
    }

    protected /* synthetic */ Object c() {
        return d();
    }

    private static List<TwitterUser> a(List<Long> list, Map<String, TwitterUser> map) {
        if (list == null || map == null) {
            return n.g();
        }
        n d = n.d();
        for (Long valueOf : list) {
            d.c((TwitterUser) map.get(String.valueOf(valueOf)));
        }
        return (List) d.q();
    }

    public cge a(long j) {
        this.a = j;
        return this;
    }

    public cge a(String str) {
        this.b = str;
        return this;
    }

    public cge a(int i) {
        this.c = i;
        return this;
    }

    public cge a(List<Long> list) {
        this.g = list;
        return this;
    }

    public cge b(List<TwitterUser> list) {
        this.e = list;
        return this;
    }

    public cge b(String str) {
        this.d = str;
        return this;
    }

    public cge a(boolean z) {
        this.f = z;
        return this;
    }

    public cge a(Map<String, TwitterUser> map) {
        this.h = map;
        return this;
    }

    protected cgd d() {
        if (this.e.isEmpty()) {
            this.e = cge.a(this.g, this.h);
        }
        return new cgd(this);
    }
}
