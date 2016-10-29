package defpackage;

import cfq;
import cga;
import com.twitter.model.core.TwitterUser;
import com.twitter.model.core.cm;
import com.twitter.util.object.e;
import java.util.List;

/* compiled from: Twttr */
/* renamed from: cfx */
public class cfx extends cfq {
    public cfr d;
    public String e;
    public String f;
    public String g;
    public List<TwitterUser> h;
    public List<cm> i;
    public List<TwitterUser> j;

    public /* synthetic */ int compareTo(Object obj) {
        return a((cga) obj);
    }

    public cfx(cfy cfy) {
        super(cfy.a, cfy.b, cfy.c);
        this.d = (cfr) e.a(cfy.d);
        this.f = e.a(cfy.f);
        this.e = cfy.e;
        this.g = (String) e.a(this.g);
        this.h = (List) e.a(cfy.h);
        this.i = cfy.i;
        this.j = cfy.j;
    }

    public long bf_() {
        return this.b;
    }

    public String bg_() {
        return String.valueOf(this.a);
    }

    public int a(cga cga) {
        return Long.valueOf(this.b).compareTo(Long.valueOf(cga.b));
    }
}
