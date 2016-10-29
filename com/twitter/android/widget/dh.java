package com.twitter.android.widget;

import android.os.Bundle;
import com.twitter.android.dialog.p;

/* compiled from: Twttr */
public class dh extends p {
    protected dh(Bundle bundle) {
        super(bundle);
    }

    public static dh a(Bundle bundle) {
        return new dh(bundle);
    }

    public String a() {
        return this.b.getString("pending_email");
    }
}
