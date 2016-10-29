package com.twitter.android;

import android.content.Intent;
import com.twitter.util.concurrent.e;

/* compiled from: Twttr */
class wt implements e<Intent> {
    final /* synthetic */ UrlInterpreterActivity a;

    wt(UrlInterpreterActivity urlInterpreterActivity) {
        this.a = urlInterpreterActivity;
    }

    public void a(Intent intent) {
        if (!this.a.isFinishing()) {
            if (intent != null) {
                this.a.startActivity(intent);
            }
            this.a.finish();
        }
    }
}
