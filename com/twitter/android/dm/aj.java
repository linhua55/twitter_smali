package com.twitter.android.dm;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

/* compiled from: Twttr */
public class aj implements as {
    private final View b;

    public aj(Context context, ViewGroup viewGroup) {
        View inflate = LayoutInflater.from(context).inflate(2130969390, viewGroup, false);
        this.b = inflate.findViewById(2131951640);
        viewGroup.addView(inflate);
    }

    public void a(ao aoVar) {
        this.b.setVisibility(0);
    }

    public void b(ao aoVar) {
        this.b.setVisibility(8);
    }

    public boolean a() {
        return this.b.getVisibility() == 0;
    }
}
