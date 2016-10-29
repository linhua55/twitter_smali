package com.twitter.internal.android.widget;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import bcx;

/* compiled from: Twttr */
class at {
    public final TextView a;
    public final TextView b;
    public final ImageView c;

    at(View view) {
        this.a = (TextView) view.findViewById(bcx.overflow_item_title);
        this.b = (TextView) view.findViewById(bcx.overflow_item_subtitle);
        this.c = (ImageView) view.findViewById(bcx.overflow_item_icon);
    }
}
