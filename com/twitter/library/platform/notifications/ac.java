package com.twitter.library.platform.notifications;

import android.content.Context;
import android.widget.Toast;

/* compiled from: Twttr */
class ac implements Runnable {
    private final Context a;
    private final String b;

    ac(Context context, int i) {
        this.a = context;
        this.b = context.getString(i);
    }

    public void run() {
        Toast.makeText(this.a, this.b, 0).show();
    }
}
