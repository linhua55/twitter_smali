package com.twitter.android;

import android.view.View;
import android.view.View.OnClickListener;
import com.twitter.android.client.OpenUriHelper;
import com.twitter.model.core.Tweet;
import com.twitter.util.x;

/* compiled from: Twttr */
class gn implements OnClickListener {
    final /* synthetic */ Tweet a;
    final /* synthetic */ GalleryActivity b;

    gn(GalleryActivity galleryActivity, Tweet tweet) {
        this.b = galleryActivity;
        this.a = tweet;
    }

    public void onClick(View view) {
        OpenUriHelper.a(this.b.getApplicationContext(), this.a, x.a(this.b.getApplicationContext(), "co.vine.android"), this.b.ab().g(), this.b.d(9), null, this.b.w);
    }
}
