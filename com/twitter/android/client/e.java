package com.twitter.android.client;

import android.app.SearchManager.OnCancelListener;
import bbu;
import com.twitter.library.scribe.TwitterScribeLog;

/* compiled from: Twttr */
class e implements OnCancelListener {
    final /* synthetic */ c a;

    e(c cVar) {
        this.a = cVar;
    }

    public void onCancel() {
        bbu.a(new TwitterScribeLog(c.a(this.a).c().g()).b(new String[]{"::search_box:cancel"}));
    }
}
