package com.twitter.android.nativecards;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.FrameLayout;

/* compiled from: Twttr */
class y {
    private final Context a;

    y(Context context) {
        this.a = context;
    }

    ViewGroup a() {
        return (ViewGroup) LayoutInflater.from(this.a).inflate(2130969095, new FrameLayout(this.a), false);
    }
}
