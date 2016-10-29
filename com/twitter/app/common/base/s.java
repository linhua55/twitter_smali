package com.twitter.app.common.base;

import android.content.Intent;
import com.twitter.util.concurrent.e;

/* compiled from: Twttr */
class s implements e<Intent> {
    static final /* synthetic */ boolean a;
    final /* synthetic */ TwitterFragmentActivity b;

    static {
        a = !TwitterFragmentActivity.class.desiredAssertionStatus();
    }

    s(TwitterFragmentActivity twitterFragmentActivity) {
        this.b = twitterFragmentActivity;
    }

    public void a(Intent intent) {
        if (a || intent != null) {
            this.b.startActivity(Intent.createChooser(intent, null));
            return;
        }
        throw new AssertionError();
    }
}
