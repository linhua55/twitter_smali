package com.twitter.android.profiles;

import android.os.Bundle;
import com.twitter.util.ab;
import com.twitter.util.serialization.n;

/* compiled from: Twttr */
public abstract class av<T> implements at {
    protected T a;
    protected boolean b;

    protected abstract void b();

    protected abstract n<T> c();

    public final void d() {
        if (!this.b) {
            this.b = true;
            b();
        }
    }

    public Bundle e() {
        Bundle bundle = new Bundle();
        bundle.putBoolean("state_fetched", this.b);
        ab.a(bundle, "state_data", this.a, c());
        return bundle;
    }

    public void a(Bundle bundle) {
        if (bundle != null) {
            this.b = bundle.getBoolean("state_fetched");
            this.a = ab.a(bundle, "state_data", c());
        }
    }
}
