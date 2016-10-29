package defpackage;

import android.content.Context;
import android.database.Cursor;
import android.database.CursorWrapper;
import android.net.Uri;
import bie;
import cdl;
import com.twitter.library.provider.ck;
import com.twitter.library.provider.cq;
import com.twitter.library.provider.di;
import com.twitter.model.core.TwitterUser;
import com.twitter.util.aj;
import com.twitter.util.collection.CollectionUtils;
import com.twitter.util.collection.MutableList;
import com.twitter.util.collection.MutableMap;
import com.twitter.util.collection.ar;
import com.twitter.util.collection.n;
import com.twitter.util.collection.r;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

/* compiled from: Twttr */
/* renamed from: cca */
public class cca extends CursorWrapper {
    private final Cursor a;
    private final long b;
    private final Context c;
    private final String d;
    private Cursor e;
    private final Map<String, List<TwitterUser>> f;
    private final Map<String, List<Long>> g;
    private final Map<String, bie> h;
    private final di i;
    private final boolean j;

    public cca(Cursor cursor, long j, Context context, String str, boolean z) {
        super(cursor);
        this.f = MutableMap.a();
        this.g = MutableMap.a();
        this.h = MutableMap.a();
        this.a = cursor;
        this.b = j;
        this.c = context;
        this.d = str;
        this.i = di.a(this.c, this.b);
        this.j = z;
        n();
    }

    private void n() {
        q();
        p();
        if (this.j) {
            o();
        }
    }

    private void o() {
        this.h.clear();
        for (bie bie : this.i.b(this.d)) {
            this.h.put(bie.a.h, bie);
        }
    }

    private void p() {
        this.f.clear();
        this.g.clear();
        ar d = ar.d();
        Map a = MutableMap.a();
        Uri a2 = ck.a(cq.a, this.b);
        if (this.d != null) {
            this.e = this.c.getContentResolver().query(a2, cdl.a, "conversation_id=?", new String[]{this.d}, null);
        } else {
            this.e = this.c.getContentResolver().query(a2, cdl.a, null, null, null);
        }
        if (this.e != null) {
            while (this.e.moveToNext()) {
                try {
                    String string = this.e.getString(0);
                    long j = this.e.getLong(1);
                    if (!a.containsKey(string)) {
                        a.put(string, MutableList.a());
                    }
                    ((List) a.get(string)).add(Long.valueOf(j));
                    d.c(Long.valueOf(j));
                } finally {
                    this.e.close();
                }
            }
        }
        a((Set) d.q(), a);
    }

    private void a(Set<Long> set, Map<String, List<Long>> map) {
        List<TwitterUser> a = this.i.a(CollectionUtils.e(set));
        r a2 = r.a(a.size());
        for (TwitterUser twitterUser : a) {
            a2.b(Long.valueOf(twitterUser.bf_()), twitterUser);
        }
        Map map2 = (Map) a2.q();
        for (Entry entry : map.entrySet()) {
            Object obj;
            String str = (String) entry.getKey();
            List<Object> list = (List) entry.getValue();
            n d = n.d();
            n d2 = n.d();
            Object obj2 = null;
            for (Object obj3 : list) {
                if (obj3.longValue() == this.b) {
                    obj3 = 1;
                } else {
                    Object obj4 = (TwitterUser) map2.get(obj3);
                    if (obj4 != null) {
                        d.c(obj4);
                        obj3 = obj2;
                    } else {
                        d2.c(obj3);
                        obj3 = obj2;
                    }
                }
                obj2 = obj3;
            }
            obj3 = (TwitterUser) map2.get(Long.valueOf(this.b));
            if (obj2 != null && obj3 != null) {
                d.c(obj3);
            } else if (obj3 == null) {
                d2.c(Long.valueOf(this.b));
            }
            this.f.put(str, d.q());
            this.g.put(str, d2.q());
        }
    }

    public List<TwitterUser> a() {
        List<TwitterUser> list = (List) this.f.get(d());
        return list == null ? Collections.emptyList() : list;
    }

    public List<Long> b() {
        List<Long> list = (List) this.g.get(d());
        return list == null ? Collections.emptyList() : list;
    }

    public bie c() {
        return (bie) this.h.get(d());
    }

    public String d() {
        return this.a.getString(1);
    }

    public String e() {
        return this.a.getString(3);
    }

    public String f() {
        CharSequence e = e();
        return aj.a(e) ? biw.a(this.c, a(), i(), this.b) : e;
    }

    public String g() {
        Collection a = a();
        if (i() || CollectionUtils.b(a) || a.size() != 2) {
            return null;
        }
        return '@' + ((TwitterUser) a.get(0)).k;
    }

    public String h() {
        return this.a.getString(8);
    }

    public boolean i() {
        return this.a.getInt(2) == 1;
    }

    public long j() {
        Collection a = a();
        if (CollectionUtils.b(a)) {
            return -1;
        }
        return ((TwitterUser) a.get(0)).c;
    }

    public boolean k() {
        return this.a.getInt(7) > 0;
    }

    public boolean l() {
        return this.a.getInt(5) > 0;
    }

    public String m() {
        Collection a = a();
        if (CollectionUtils.b(a)) {
            return null;
        }
        return ((TwitterUser) a.get(0)).e;
    }

    public boolean requery() {
        boolean requery = super.requery();
        if (requery) {
            n();
        }
        return requery;
    }

    public void close() {
        super.close();
        q();
    }

    private void q() {
        if (this.e != null) {
            this.e.close();
        }
    }
}
