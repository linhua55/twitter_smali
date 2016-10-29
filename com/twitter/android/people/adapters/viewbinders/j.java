package com.twitter.android.people.adapters.viewbinders;

import com.twitter.android.widget.n;

/* compiled from: Twttr */
public class j implements n<T> {
    public C a;
    final /* synthetic */ h b;
    private boolean d;

    public j(h hVar) {
        this.b = hVar;
    }

    public void a(T t, int i) {
        if (this.a != null) {
            this.b.a((Object) t, this.a);
        }
    }

    public void a(T t, boolean z) {
        if (!(this.a == null || this.d)) {
            this.b.a((Object) t, this.a, z);
        }
        this.d = false;
    }

    public boolean a(T t) {
        return true;
    }

    public void a() {
        this.d = true;
    }
}
