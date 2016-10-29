package com.twitter.android.geo.places;

import android.net.Uri;
import android.view.View;
import android.view.View.OnClickListener;
import com.twitter.android.client.OpenUriHelper;

/* compiled from: Twttr */
class n implements OnClickListener {
    final /* synthetic */ Uri a;
    final /* synthetic */ m b;

    n(m mVar, Uri uri) {
        this.b = mVar;
        this.a = uri;
    }

    public void onClick(View view) {
        OpenUriHelper.a(this.b.a, this.a);
    }
}
