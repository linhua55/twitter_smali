package com.twitter.library.av;

import android.support.annotation.VisibleForTesting;
import com.twitter.model.core.Tweet;
import java.util.List;

/* compiled from: Twttr */
public class ae implements ab {
    private int a;
    private final List<? extends ad> b;

    public ae(List<? extends ad> list) {
        this.a = 0;
        this.b = list;
    }

    public int a() {
        return this.a;
    }

    public long b() {
        return g().t;
    }

    public a c() {
        return new a(b(), g().f);
    }

    public void a(int i) {
        this.a = i;
    }

    public boolean d() {
        return g().T();
    }

    @VisibleForTesting
    Tweet g() {
        return ((ad) this.b.get(this.a)).a();
    }

    public boolean e() {
        return true;
    }

    public int f() {
        return this.b.size();
    }
}
