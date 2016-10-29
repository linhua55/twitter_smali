package com.twitter.library.util;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.view.View;
import com.twitter.ui.view.a;

/* compiled from: Twttr */
final class as extends a {
    final /* synthetic */ Context a;
    final /* synthetic */ Class b;
    final /* synthetic */ int c;

    as(int i, Context context, Class cls, int i2) {
        this.a = context;
        this.b = cls;
        this.c = i2;
        super(i);
    }

    public void onClick(View view) {
        this.a.startActivity(new Intent(this.a, this.b).setData(Uri.parse(this.a.getString(this.c))));
    }
}
