package com.twitter.android.dialog;

import android.os.Bundle;

/* compiled from: Twttr */
public class p extends l {
    protected p(Bundle bundle) {
        super(bundle);
    }

    public static p c(Bundle bundle) {
        return new p(bundle);
    }

    public String t() {
        return this.b.getString("icon_url");
    }

    public int u() {
        return this.b.getInt("icon_scale_type");
    }

    public boolean v() {
        return this.b.containsKey("icon_scale_type");
    }
}
