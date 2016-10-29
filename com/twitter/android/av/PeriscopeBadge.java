package com.twitter.android.av;

import android.content.Context;
import android.support.annotation.DrawableRes;
import android.support.annotation.StringRes;
import android.util.AttributeSet;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.twitter.library.widget.TightTextView;
import dcx;
import defpackage.bdc;

/* compiled from: Twttr */
public class PeriscopeBadge extends LinearLayout {
    private LinearLayout a;
    private LinearLayout b;
    private TightTextView c;
    private ImageView d;
    private TightTextView e;

    public PeriscopeBadge(Context context) {
        super(context);
    }

    public PeriscopeBadge(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public PeriscopeBadge(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        this.a = (LinearLayout) findViewById(2131953016);
        this.b = (LinearLayout) findViewById(2131953018);
        this.c = (TightTextView) findViewById(2131953017);
        this.d = (ImageView) findViewById(2131953019);
        this.e = (TightTextView) findViewById(2131953020);
    }

    public void a(int i) {
        if (i > 0) {
            this.d.setVisibility(0);
            a(dcx.a(getResources(), (long) i, false));
            a(2130837652, bdc.ps__broadcasting_live);
            return;
        }
        this.b.setVisibility(8);
        a(2130837653, bdc.ps__broadcasting_live);
    }

    public void b(int i) {
        if (i > 0) {
            this.d.setVisibility(8);
            String a = dcx.a(getResources(), (long) i, false);
            a(getResources().getString(2131363252, new Object[]{a}));
            a(2130837649, bdc.ps__ended_broadcast);
            return;
        }
        this.b.setVisibility(8);
        a(2130837651, bdc.ps__ended_broadcast);
    }

    private void a(String str) {
        this.e.setText(str);
        this.b.setVisibility(0);
    }

    private void a(@DrawableRes int i, @StringRes int i2) {
        this.a.setBackgroundResource(i);
        this.c.setText(getResources().getString(i2));
    }
}
