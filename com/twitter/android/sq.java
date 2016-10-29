package com.twitter.android;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.view.View;
import com.twitter.library.api.PromotedEvent;
import com.twitter.model.core.Tweet;

/* compiled from: Twttr */
class sq implements OnClickListener {
    final /* synthetic */ View a;
    final /* synthetic */ Tweet b;
    final /* synthetic */ long c;
    final /* synthetic */ Runnable d;
    final /* synthetic */ sn e;

    sq(sn snVar, View view, Tweet tweet, long j, Runnable runnable) {
        this.e = snVar;
        this.a = view;
        this.b = tweet;
        this.c = j;
        this.d = runnable;
    }

    public void onClick(DialogInterface dialogInterface, int i) {
        this.e.a(this.a, this.b, PromotedEvent.i, TtmlNode.ANONYMOUS_REGION_ID, "dismiss", this.c);
        if (this.d != null) {
            this.d.run();
        }
    }
}
