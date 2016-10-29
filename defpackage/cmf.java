package defpackage;

import cmh;
import cmi;
import com.twitter.util.collection.r;
import com.twitter.util.serialization.n;
import com.twitter.util.serialization.s;
import java.util.List;
import java.util.Map;

/* compiled from: Twttr */
/* renamed from: cmf */
public class cmf {
    public static final n<cmf> a;
    public static final n<List<cmf>> b;
    public static final cmf c;
    public static final List<cmf> d;
    public static final List<cmf> e;
    public static final List<cmf> f;
    private static final Map<String, Integer> i;
    public final int g;
    public final String h;

    static {
        a = new cmi();
        b = s.a(a);
        c = (cmf) new cmh().a(5).b("follow").q();
        d = com.twitter.util.collection.n.a(new cmh().a(1).b("reply").q(), (cmf) new cmh().a(2).q(), (cmf) new cmh().a(3).b("favorite").q());
        e = com.twitter.util.collection.n.a(c, (cmf) new cmh().a(6).b("tweet_to").q());
        f = com.twitter.util.collection.n.a(new cmh().a(7).b("accept").q(), (cmf) new cmh().a(8).b("deny").q());
        i = (Map) r.d().b("reply", Integer.valueOf(1)).b("retweet", Integer.valueOf(2)).b("favorite", Integer.valueOf(3)).b("share", Integer.valueOf(4)).b("follow", Integer.valueOf(5)).b("tweet_to", Integer.valueOf(6)).b("accept", Integer.valueOf(7)).b("deny", Integer.valueOf(8)).q();
    }

    private cmf(cmh cmh) {
        this.g = cmh.a(cmh);
        this.h = cmh.b(cmh);
    }
}
