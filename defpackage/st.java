package defpackage;

import android.content.Context;
import biw;
import cey;
import cgu;
import chd;
import com.twitter.android.client.bu;
import com.twitter.android.provider.SuggestionsProvider;
import com.twitter.android.provider.f;
import com.twitter.library.api.search.TwitterTypeAhead;
import com.twitter.library.api.search.TwitterTypeAheadGroup;
import com.twitter.library.database.dm.d;
import com.twitter.library.provider.di;
import com.twitter.library.provider.ek;
import com.twitter.library.provider.j;
import com.twitter.library.util.aq;
import com.twitter.model.core.TwitterUser;
import com.twitter.util.aj;
import com.twitter.util.collection.CollectionUtils;
import com.twitter.util.collection.MutableSet;
import com.twitter.util.collection.n;
import com.twitter.util.object.e;
import cto;
import java.util.List;
import java.util.Set;
import java.util.regex.Pattern;

/* compiled from: Twttr */
/* renamed from: st */
public class st extends ti<String, Object> {
    private final long c;
    private List<d> d;

    protected /* synthetic */ cgu a(Object obj, boolean z) {
        return b((String) obj, z);
    }

    protected /* synthetic */ boolean a(Object obj) {
        return c((String) obj);
    }

    protected /* synthetic */ String b(Object obj) {
        return d((String) obj);
    }

    public static String a(String str) {
        return str.substring(0, str.length() - 1);
    }

    public static boolean b(String str) {
        return str.charAt(str.length() + -1) == '1';
    }

    public static String a(String str, boolean z) {
        return str + (z ? '0' : '1');
    }

    public st(Context context, te teVar, long j) {
        super(context, 1, bu.g(), true, teVar);
        this.c = j;
    }

    protected boolean c(String str) {
        return aj.b(str);
    }

    protected cgu<Object> b(String str, boolean z) {
        j a = di.a(this.a, this.c);
        a(a);
        return st.a(str, a, this.d, this.c, this.b);
    }

    static cgu<Object> a(String str, ek ekVar, List<d> list, long j, int i) {
        boolean b = st.b(str);
        String a = st.a(str);
        Iterable d = n.d();
        d.c(st.a(list, a, j, b));
        Set a2 = st.a(d);
        if (d.i() < i) {
            for (TwitterUser twitterUser : ekVar.a(a, 8, i - d.i())) {
                TwitterUser twitterUser2;
                if (!a2.contains(Long.valueOf(twitterUser2.c)) && biw.a(twitterUser2)) {
                    d.c(twitterUser2);
                    a2.add(Long.valueOf(twitterUser2.c));
                }
            }
        }
        Iterable b2 = SuggestionsProvider.b(a);
        if (b2 != null) {
            for (TwitterTypeAhead twitterTypeAhead : cto.a(b2, new f())) {
                if (d.i() < i) {
                    twitterUser2 = twitterTypeAhead.e;
                    if (!a2.contains(Long.valueOf(twitterUser2.c)) && biw.a(twitterUser2)) {
                        d.c(twitterUser2);
                    }
                }
            }
        }
        n c = i < d.i() ? n.d().c(cto.a(d, i)) : d;
        CharSequence a3 = aq.a(a);
        if (aj.b(a3) && cey.b.matcher(a3).matches()) {
            c.c(a3);
        }
        return new chd((Iterable) c.q());
    }

    private static List<Object> a(List<d> list, String str, long j, boolean z) {
        TwitterUser twitterUser;
        if (aj.a(str)) {
            n d = n.d();
            for (d dVar : list) {
                if (!dVar.j.isEmpty()) {
                    if (!dVar.i) {
                        twitterUser = (TwitterUser) e.a(CollectionUtils.b(dVar.j));
                        if (biw.a(twitterUser)) {
                            d.c(twitterUser);
                        }
                    } else if (z) {
                        d.c(dVar);
                    }
                }
            }
            return (List) d.q();
        }
        n d2 = n.d();
        n d3 = n.d();
        Pattern compile = Pattern.compile("(?i:.*\\b" + aq.a(str) + ".*)");
        for (d dVar2 : list) {
            if (!dVar2.j.isEmpty()) {
                Object obj;
                Object obj2 = (dVar2.i && compile.matcher(dVar2.d).matches()) ? 1 : null;
                if (obj2 == null) {
                    for (TwitterUser twitterUser2 : dVar2.j) {
                        if (twitterUser2.bf_() != j && (compile.matcher(twitterUser2.d).matches() || compile.matcher(twitterUser2.k).matches())) {
                            obj = 1;
                            break;
                        }
                    }
                }
                obj = obj2;
                if (obj != null) {
                    if (!dVar2.i) {
                        twitterUser = (TwitterUser) dVar2.j.get(0);
                        if (biw.a(twitterUser)) {
                            d2.c(twitterUser);
                        }
                    } else if (z) {
                        d3.c(dVar2);
                    }
                }
            }
        }
        return (List) n.d().c(d2).c(d3).q();
    }

    private static Set<Long> a(Iterable<Object> iterable) {
        Set<Long> a = MutableSet.a();
        for (Object next : iterable) {
            if (next instanceof TwitterUser) {
                a.add(Long.valueOf(((TwitterUser) next).c));
            }
        }
        return a;
    }

    protected String d(String str) {
        return st.a(str);
    }

    protected void a(String str, TwitterTypeAheadGroup twitterTypeAheadGroup) {
        SuggestionsProvider.a(d(str), twitterTypeAheadGroup.a);
    }

    private synchronized void a(j jVar) {
        if (this.d == null) {
            this.d = jVar.a(false);
        }
    }
}
