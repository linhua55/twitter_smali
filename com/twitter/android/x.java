package com.twitter.android;

import android.content.Intent;
import android.net.Uri;
import android.view.View;
import android.view.View.OnClickListener;

/* compiled from: Twttr */
class x implements OnClickListener {
    final /* synthetic */ AgeGateActivity a;

    x(AgeGateActivity ageGateActivity) {
        this.a = ageGateActivity;
    }

    public void onClick(View view) {
        this.a.startActivity(new Intent(this.a, WebViewActivity.class).setData(Uri.parse(this.a.getString(2131364350))));
    }
}
