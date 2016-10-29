package com.twitter.android;

import android.content.Intent;
import com.twitter.util.concurrent.e;

/* compiled from: Twttr */
class oh implements e<Intent> {
    static final /* synthetic */ boolean a;
    final /* synthetic */ SearchActivity b;

    static {
        a = !SearchActivity.class.desiredAssertionStatus();
    }

    oh(SearchActivity searchActivity) {
        this.b = searchActivity;
    }

    public void a(Intent intent) {
        if (a || intent != null) {
            this.b.startActivity(Intent.createChooser(intent, null));
            return;
        }
        throw new AssertionError();
    }
}
