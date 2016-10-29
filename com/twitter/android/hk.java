package com.twitter.android;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;

/* compiled from: Twttr */
class hk implements OnClickListener {
    final /* synthetic */ Intent a;
    final /* synthetic */ ImageActivity b;

    hk(ImageActivity imageActivity, Intent intent) {
        this.b = imageActivity;
        this.a = intent;
    }

    public void onClick(View view) {
        this.b.setResult(-1, this.a);
        this.b.finish();
    }
}
