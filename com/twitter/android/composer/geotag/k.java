package com.twitter.android.composer.geotag;

import android.support.v7.widget.RecyclerView.ViewHolder;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.TextView;

/* compiled from: Twttr */
public class k extends ViewHolder {
    private final TextView a;

    public k(View view) {
        super(view);
        this.a = (TextView) view.findViewById(2131952665);
    }

    public void a(String str) {
        this.a.setText(str);
    }

    public void a(OnClickListener onClickListener) {
        this.a.setOnClickListener(onClickListener);
    }
}
