package com.twitter.android.widget;

import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.os.Bundle;
import android.support.v4.app.FragmentManager;
import bbn;
import com.twitter.app.common.base.BaseDialogFragment;
import com.twitter.model.core.Tweet;

/* compiled from: Twttr */
public class ConfirmCancelPendingTweetDialog extends BaseDialogFragment {
    private long a;

    public ConfirmCancelPendingTweetDialog a(long j) {
        this.a = j;
        return this;
    }

    public Dialog onCreateDialog(Bundle bundle) {
        return new Builder(getActivity()).setMessage(2131364019).setPositiveButton(2131362398, new aa(this)).setNegativeButton(2131362041, new z(this)).create();
    }

    public static ConfirmCancelPendingTweetDialog a(FragmentManager fragmentManager, Tweet tweet) {
        Long l = tweet.z;
        if (l == null) {
            bbn.a(new IllegalStateException("A pending tweet row was shown without am associated draft"));
            return null;
        }
        ConfirmCancelPendingTweetDialog confirmCancelPendingTweetDialog = new ConfirmCancelPendingTweetDialog();
        confirmCancelPendingTweetDialog.a(l.longValue());
        confirmCancelPendingTweetDialog.show(fragmentManager, "ConfirmCancelInFlightTweet");
        return confirmCancelPendingTweetDialog;
    }
}
