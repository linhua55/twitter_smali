package com.twitter.android;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.twitter.library.api.PromotedEvent;
import com.twitter.model.core.Tweet;

/* compiled from: Twttr */
class th implements OnClickListener {
    final /* synthetic */ Tweet a;
    final /* synthetic */ sn b;

    th(sn snVar, Tweet tweet) {
        this.b = snVar;
        this.a = tweet;
    }

    public void onClick(DialogInterface dialogInterface, int i) {
        sn.a(this.b, this.a, PromotedEvent.i, TtmlNode.ANONYMOUS_REGION_ID, "dismiss");
    }
}
