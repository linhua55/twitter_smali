package com.twitter.android.media.foundmedia;

import android.support.v7.recyclerview.BuildConfig;
import com.twitter.android.media.widget.FoundMediaSearchView;
import com.twitter.android.media.widget.ae;

/* compiled from: Twttr */
class g implements ae {
    final /* synthetic */ GifCategoriesActivity a;

    g(GifCategoriesActivity gifCategoriesActivity) {
        this.a = gifCategoriesActivity;
    }

    public void a(FoundMediaSearchView foundMediaSearchView) {
        foundMediaSearchView.setText(BuildConfig.VERSION_NAME);
    }
}
