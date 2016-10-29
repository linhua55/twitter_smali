package com.twitter.ui.view;

import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.support.design.widget.FloatingActionButton;
import android.view.View.OnClickListener;

/* compiled from: Twttr */
public class h {
    private final Drawable a;
    private final Drawable b;
    private final String c;
    private final String d;
    private final FloatingActionButton e;

    public h(FloatingActionButton floatingActionButton) {
        Resources resources = floatingActionButton.getResources();
        this.a = resources.getDrawable(2130839238);
        this.b = resources.getDrawable(2130839239);
        this.c = resources.getString(2131362013);
        this.d = resources.getString(2131362012);
        this.e = floatingActionButton;
    }

    public FloatingActionButton a() {
        return this.e;
    }

    public void a(int i) {
        this.e.setImageDrawable(i == 1 ? this.a : this.b);
        this.e.setContentDescription(i == 1 ? this.c : this.d);
    }

    public void a(OnClickListener onClickListener) {
        this.e.setOnClickListener(onClickListener);
    }
}
