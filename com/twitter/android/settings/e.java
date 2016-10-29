package com.twitter.android.settings;

import android.content.Context;
import android.support.annotation.StringRes;
import android.widget.Toast;

/* compiled from: Twttr */
class e implements Runnable {
    private final Context a;
    private final String b;

    e(Context context, @StringRes int i) {
        this.a = context;
        this.b = context.getString(i);
    }

    public void run() {
        Toast.makeText(this.a, this.b, 0).show();
    }
}
