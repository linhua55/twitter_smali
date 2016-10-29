package com.twitter.android.dialog;

import android.os.Bundle;

/* compiled from: Twttr */
public class f extends l {
    protected f(Bundle bundle) {
        super(bundle);
    }

    public static f a(Bundle bundle) {
        return new f(bundle);
    }

    public String a() {
        return this.b.getString("logged_out_dialog_scribe");
    }
}
