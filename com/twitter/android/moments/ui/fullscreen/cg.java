package com.twitter.android.moments.ui.fullscreen;

import android.os.Bundle;
import com.twitter.util.y;

/* compiled from: Twttr */
public class cg {
    private final y<Boolean> a;
    private final eu b;
    private boolean c;

    public cg(eu euVar) {
        this.a = new y();
        this.b = euVar;
        a(this.b.b());
    }

    public boolean a() {
        return this.c;
    }

    public void a(boolean z) {
        if (this.c != z) {
            this.c = z;
            this.a.a(Boolean.valueOf(z));
        }
    }

    public void b() {
        this.b.a(this.c);
    }

    public y<Boolean> c() {
        return this.a;
    }

    public void a(Bundle bundle) {
        bundle.putBoolean("state_is_muted", this.c);
    }

    public void b(Bundle bundle) {
        a(bundle.getBoolean("state_is_muted", false));
    }
}
