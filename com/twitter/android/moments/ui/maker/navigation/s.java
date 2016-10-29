package com.twitter.android.moments.ui.maker.navigation;

import android.support.annotation.DrawableRes;
import android.support.annotation.StringRes;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.TextView;

/* compiled from: Twttr */
public class s {
    private final View a;
    private final TextView b;
    private final TextView c;

    public static s a(View view) {
        return new s(view.findViewById(2131952737), (TextView) view.findViewById(2131952738), (TextView) view.findViewById(2131952739));
    }

    public s(View view, TextView textView, TextView textView2) {
        this.a = view;
        this.b = textView;
        this.c = textView2;
    }

    public void a() {
        this.c.setVisibility(0);
    }

    public void b() {
        this.c.setVisibility(8);
    }

    public void a(@DrawableRes int i, @StringRes int i2) {
        this.b.setCompoundDrawablesWithIntrinsicBounds(0, i, 0, 0);
        this.b.setText(i2);
    }

    public void a(OnClickListener onClickListener) {
        this.b.setOnClickListener(onClickListener);
    }
}
