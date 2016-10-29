package com.twitter.android;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.net.Uri;
import com.twitter.library.util.aq;

/* compiled from: Twttr */
class ed implements OnClickListener {
    final /* synthetic */ DialogActivity a;

    ed(DialogActivity dialogActivity) {
        this.a = dialogActivity;
    }

    public void onClick(DialogInterface dialogInterface, int i) {
        if (i == -1) {
            aq.a(this.a, Uri.parse(this.a.getString(2131364404)));
        }
    }
}
