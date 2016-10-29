package com.twitter.library.provider;

import com.twitter.library.database.dm.d;
import com.twitter.model.core.TwitterUser;
import com.twitter.util.serialization.n;
import java.util.List;

/* compiled from: Twttr */
public class m extends k {
    public static final n<m> a;
    public final TwitterUser b;

    static {
        a = new p(null);
    }

    private m(o oVar) {
        super(oVar);
        this.b = oVar.a;
    }

    public List<TwitterUser> a() {
        return com.twitter.util.collection.n.b(this.b);
    }

    public boolean b() {
        return false;
    }

    public d c() {
        return null;
    }

    public String d() {
        return String.valueOf(this.b.c);
    }
}
