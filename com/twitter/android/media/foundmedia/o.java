package com.twitter.android.media.foundmedia;

import android.support.v7.recyclerview.BuildConfig;
import android.text.Editable;
import com.twitter.android.media.widget.FoundMediaSearchView;
import com.twitter.android.media.widget.ae;

/* compiled from: Twttr */
class o implements ae {
    final /* synthetic */ GifGalleryActivity a;

    o(GifGalleryActivity gifGalleryActivity) {
        this.a = gifGalleryActivity;
    }

    public void a(FoundMediaSearchView foundMediaSearchView) {
        Editable text = foundMediaSearchView.getText();
        if (text == null || text.length() <= 0) {
            this.a.a(false);
        } else {
            foundMediaSearchView.setText(BuildConfig.VERSION_NAME);
        }
    }
}
