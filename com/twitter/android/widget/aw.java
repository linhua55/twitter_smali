package com.twitter.android.widget;

import android.media.MediaScannerConnection.OnScanCompletedListener;
import android.net.Uri;

/* compiled from: Twttr */
class aw implements OnScanCompletedListener {
    final /* synthetic */ at a;

    aw(at atVar) {
        this.a = atVar;
    }

    public void onScanCompleted(String str, Uri uri) {
        this.a.notifyDataSetChanged();
    }
}
