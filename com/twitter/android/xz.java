package com.twitter.android;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

/* compiled from: Twttr */
class xz implements OnClickListener {
    final /* synthetic */ VideoEditorActivity a;

    xz(VideoEditorActivity videoEditorActivity) {
        this.a = videoEditorActivity;
    }

    public void onClick(DialogInterface dialogInterface, int i) {
        this.a.setResult(0);
        this.a.finish();
    }
}
