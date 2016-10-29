package com.twitter.android.geo.places;

import android.content.Context;
import android.net.Uri;
import android.support.annotation.StringRes;
import android.view.View;
import android.widget.Button;

/* compiled from: Twttr */
public abstract class m {
    private final Context a;
    private final Button b;
    private final View c;

    protected m(View view) {
        this.a = view.getContext();
        this.c = view;
        this.b = (Button) view.findViewById(2131953061);
    }

    public View a() {
        return this.c;
    }

    protected void a(@StringRes int i) {
        this.b.setText(i);
    }

    public void a(Uri uri) {
        this.b.setOnClickListener(new n(this, uri));
    }
}
