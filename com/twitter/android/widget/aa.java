package com.twitter.android.widget;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.twitter.android.client.tweetuploadmanager.TweetUploadManager;

/* compiled from: Twttr */
class aa implements OnClickListener {
    final /* synthetic */ ConfirmCancelPendingTweetDialog a;

    aa(ConfirmCancelPendingTweetDialog confirmCancelPendingTweetDialog) {
        this.a = confirmCancelPendingTweetDialog;
    }

    public void onClick(DialogInterface dialogInterface, int i) {
        TweetUploadManager.a(this.a.getActivity(), this.a.a);
    }
}
