package com.twitter.android.av.video;

import android.app.Activity;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;

/* compiled from: Twttr */
public class j {
    private final View a;

    public j(View view) {
        this.a = view;
    }

    public j(Context context) {
        this.a = LayoutInflater.from(context).inflate(2130969523, null, false);
    }

    public i a(Activity activity) {
        return new i(activity, this.a);
    }
}
