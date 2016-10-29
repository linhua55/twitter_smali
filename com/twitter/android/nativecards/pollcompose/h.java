package com.twitter.android.nativecards.pollcompose;

import android.app.Activity;
import android.content.Intent;

/* compiled from: Twttr */
public class h {
    private final Activity a;

    h(Activity activity) {
        this.a = activity;
    }

    public void a(boolean z) {
        Intent intent = new Intent(this.a, AddImagePollActivity.class);
        intent.putExtra("has_image", z);
        this.a.startActivityForResult(intent, 769);
    }
}
