package com.twitter.library.util;

import android.content.Context;
import android.net.Uri;
import android.view.View;
import com.twitter.ui.view.a;

/* compiled from: Twttr */
final class ar extends a {
    final /* synthetic */ Context a;
    final /* synthetic */ int b;

    ar(int i, Context context, int i2) {
        this.a = context;
        this.b = i2;
        super(i);
    }

    public void onClick(View view) {
        aq.a(this.a, Uri.parse(this.a.getString(this.b)));
    }
}
