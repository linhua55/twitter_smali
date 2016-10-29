package com.twitter.android.ads;

import android.view.View;
import android.view.View.OnClickListener;

/* compiled from: Twttr */
class d implements OnClickListener {
    final /* synthetic */ AdsCompanionWebViewActivity a;

    d(AdsCompanionWebViewActivity adsCompanionWebViewActivity) {
        this.a = adsCompanionWebViewActivity;
    }

    public void onClick(View view) {
        this.a.finish();
    }
}
