package com.twitter.android.media.foundmedia;

import android.view.View;
import android.view.View.OnClickListener;

/* compiled from: Twttr */
class b implements OnClickListener {
    final /* synthetic */ FoundMediaAttributionDialogFragment a;

    b(FoundMediaAttributionDialogFragment foundMediaAttributionDialogFragment) {
        this.a = foundMediaAttributionDialogFragment;
    }

    public void onClick(View view) {
        this.a.dismiss();
    }
}
