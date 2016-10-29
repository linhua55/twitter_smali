package com.twitter.android.client.tweetuploadmanager;

import android.content.Context;
import bbn;
import com.twitter.library.client.bg;
import java.util.concurrent.Callable;

/* compiled from: Twttr */
final class e implements Callable<Boolean> {
    final /* synthetic */ Context a;
    final /* synthetic */ long b;
    final /* synthetic */ boolean c;

    e(Context context, long j, boolean z) {
        this.a = context;
        this.b = j;
        this.c = z;
    }

    public /* synthetic */ Object call() throws Exception {
        return a();
    }

    public Boolean a() throws Exception {
        Context applicationContext = this.a.getApplicationContext();
        c cVar = (c) TweetUploadManager.a().remove(Long.valueOf(this.b));
        if (cVar != null) {
            if (!cVar.c()) {
                TweetUploadManager.c(cVar);
            }
            return Boolean.valueOf(true);
        }
        if (this.c) {
            bbn.a(new Exception("Tweet request not found for pending tweet with draft ID: " + this.b));
        }
        TweetUploadManager.a(applicationContext, bg.a().c().g(), this.b);
        return Boolean.valueOf(false);
    }
}
