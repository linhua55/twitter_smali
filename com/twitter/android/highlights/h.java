package com.twitter.android.highlights;

import bbu;
import com.twitter.internal.android.service.AsyncOperation;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.library.service.ac;

/* compiled from: Twttr */
final class h extends ac<Void, AsyncOperation<Void, Void>> {
    final /* synthetic */ long a;
    final /* synthetic */ String b;

    h(long j, String str) {
        this.a = j;
        this.b = str;
    }

    public void a(AsyncOperation<Void, Void> asyncOperation) {
        bbu.a(new TwitterScribeLog(this.a).b(new String[]{this.b}));
    }
}
