package com.twitter.android.moments.ui.fullscreen;

import com.twitter.util.r;
import java.util.Set;

/* compiled from: Twttr */
public class cd implements r {
    private final Set<r> a;

    public cd(Set<r> set) {
        this.a = set;
    }

    public void a() {
        for (r a : this.a) {
            a.a();
        }
    }

    public void b() {
        for (r b : this.a) {
            b.b();
        }
    }
}
