package com.twitter.android.media.foundmedia;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.view.View;
import android.view.View.OnClickListener;

/* compiled from: Twttr */
class a implements OnClickListener {
    final /* synthetic */ FoundMediaAttributionDialogFragment a;

    a(FoundMediaAttributionDialogFragment foundMediaAttributionDialogFragment) {
        this.a = foundMediaAttributionDialogFragment;
    }

    public void onClick(View view) {
        ((ClipboardManager) this.a.getActivity().getSystemService("clipboard")).setPrimaryClip(ClipData.newPlainText(this.a.getResources().getString(2131362733), this.a.a));
        this.a.dismiss();
    }
}
