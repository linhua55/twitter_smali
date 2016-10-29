package com.twitter.app.common.base;

import android.os.Bundle;

/* compiled from: Twttr */
public class d {
    public static d a;
    protected final Bundle b;

    static {
        a = new d(Bundle.EMPTY);
    }

    protected d(Bundle bundle) {
        if (bundle == null) {
            bundle = new Bundle();
        }
        this.b = bundle;
    }

    public static d d(Bundle bundle) {
        return new d(bundle);
    }

    public int J() {
        return this.b.getInt("twitter:id");
    }

    final boolean K() {
        return (this.b.getInt("twitter:forward_events") & 1) != 0;
    }

    final boolean L() {
        return (this.b.getInt("twitter:forward_events") & 2) != 0;
    }

    final boolean M() {
        return (this.b.getInt("twitter:forward_events") & 4) != 0;
    }
}
