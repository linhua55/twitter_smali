package com.twitter.android.media.widget;

import android.view.View;
import android.view.View.OnClickListener;
import com.twitter.model.media.foundmedia.c;

/* compiled from: Twttr */
class ah implements OnClickListener {
    final /* synthetic */ GifCategoriesView a;

    ah(GifCategoriesView gifCategoriesView) {
        this.a = gifCategoriesView;
    }

    public void onClick(View view) {
        if (this.a.e != null) {
            this.a.e.a((c) view.getTag(2131951661));
        }
    }
}
