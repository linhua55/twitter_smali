package com.twitter.library.provider;

import com.twitter.library.database.dm.d;
import com.twitter.model.core.TwitterUser;
import com.twitter.util.serialization.n;
import java.util.List;

/* compiled from: Twttr */
public class f extends k {
    public static final n<f> a;
    public final d b;

    static {
        a = new i();
    }

    private f(h hVar) {
        super(hVar);
        this.b = hVar.a;
    }

    public List<TwitterUser> a() {
        return this.b.j;
    }

    public boolean b() {
        return true;
    }

    public d c() {
        return this.b;
    }

    public String d() {
        return this.b.b;
    }
}
