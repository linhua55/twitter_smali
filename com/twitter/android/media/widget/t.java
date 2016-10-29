package com.twitter.android.media.widget;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.util.SparseArray;
import com.twitter.media.request.ImageResponse;
import com.twitter.media.request.c;
import com.twitter.media.ui.image.MediaImageView;

/* compiled from: Twttr */
class t implements c {
    final /* synthetic */ SparseArray a;
    final /* synthetic */ FilterFilmstripView b;

    t(FilterFilmstripView filterFilmstripView, SparseArray sparseArray) {
        this.b = filterFilmstripView;
        this.a = sparseArray;
    }

    public void a(ImageResponse imageResponse) {
        if (imageResponse.f() != null) {
            for (int i = 0; i < this.a.size(); i++) {
                ((MediaImageView) this.a.get(this.a.keyAt(i))).setDefaultDrawable(new BitmapDrawable(this.b.getResources(), (Bitmap) imageResponse.f()));
            }
        }
    }
}
