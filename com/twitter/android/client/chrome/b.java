package com.twitter.android.client.chrome;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.twitter.android.client.BrowserLoadingStatus;
import com.twitter.model.core.Tweet;

/* compiled from: Twttr */
final class b implements OnClickListener {
    final /* synthetic */ BrowserLoadingStatus a;
    final /* synthetic */ Activity b;
    final /* synthetic */ String c;
    final /* synthetic */ Tweet d;

    b(BrowserLoadingStatus browserLoadingStatus, Activity activity, String str, Tweet tweet) {
        this.a = browserLoadingStatus;
        this.b = activity;
        this.c = str;
        this.d = tweet;
    }

    public void onClick(DialogInterface dialogInterface, int i) {
        this.a.a(a.a(this.b, this.c, true, this.d), this.c, this.d, this.b);
        dialogInterface.dismiss();
    }
}
