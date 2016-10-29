package com.twitter.android.widget;

import android.os.Bundle;
import com.twitter.app.common.base.d;

/* compiled from: Twttr */
public class dp extends d {
    protected dp(Bundle bundle) {
        super(bundle);
    }

    public static dp a(Bundle bundle) {
        return new dp(bundle);
    }

    public int a() {
        return this.b.getInt("msg_res");
    }
}
