package com.twitter.library.provider;

import com.twitter.library.database.dm.ShareHistoryTable.Type;
import com.twitter.library.database.dm.d;
import com.twitter.model.core.TwitterUser;
import com.twitter.util.serialization.l;
import com.twitter.util.serialization.n;
import com.twitter.util.serialization.s;
import java.util.List;

/* compiled from: Twttr */
public abstract class k {
    public static final n<k> c;
    public final Type d;

    public abstract List<TwitterUser> a();

    public abstract boolean b();

    public abstract d c();

    public abstract String d();

    static {
        c = s.a(l.a(f.class, f.a), l.a(m.class, m.a));
    }

    protected k(l lVar) {
        this.d = l.a(lVar);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof k) || obj.getClass() != getClass()) {
            return super.equals(obj);
        }
        return d().equals(((k) obj).d());
    }

    public int hashCode() {
        return d().hashCode();
    }
}
