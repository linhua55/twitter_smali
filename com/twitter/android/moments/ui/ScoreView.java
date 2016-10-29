package com.twitter.android.moments.ui;

import android.content.Context;
import android.content.res.TypedArray;
import android.support.annotation.ColorInt;
import android.support.annotation.ColorRes;
import android.support.annotation.StyleRes;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextSwitcher;
import android.widget.TextView;
import com.twitter.android.mx;
import com.twitter.util.object.e;

/* compiled from: Twttr */
public class ScoreView extends FrameLayout {
    @ColorRes
    private int a;
    @ColorInt
    private int b;
    @StyleRes
    private int c;
    @StyleRes
    private int d;

    public ScoreView(Context context) {
        this(context, null);
    }

    public ScoreView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ScoreView(Context context, AttributeSet attributeSet, @StyleRes int i) {
        super(context, attributeSet, i);
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, mx.ScoreView, i, 0);
            try {
                this.b = obtainStyledAttributes.getColor(3, -1);
                this.a = obtainStyledAttributes.getResourceId(0, 0);
                this.c = obtainStyledAttributes.getResourceId(2, 0);
                this.d = obtainStyledAttributes.getResourceId(1, 0);
            } finally {
                obtainStyledAttributes.recycle();
            }
        }
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        View view = (View) e.a(findViewById(2131952820));
        View view2 = (View) e.a(findViewById(2131952821));
        if (this.a != 0) {
            View view3 = (View) e.a(findViewById(2131952822));
            ((View) e.a(findViewById(2131952765))).setBackgroundColor(getResources().getColor(this.a));
            view3.setBackgroundColor(getResources().getColor(this.a));
        }
        if (this.d != 0) {
            TextView textView = (TextView) e.a((TextView) view2.findViewById(2131952807));
            TextSwitcher textSwitcher = (TextSwitcher) e.a((TextSwitcher) findViewById(2131952823));
            ((TextView) e.a((TextView) view.findViewById(2131952807))).setTextAppearance(getContext(), this.d);
            textView.setTextAppearance(getContext(), this.d);
            textSwitcher.setFactory(new i(this));
        }
        if (this.c != 0) {
            textView = (TextView) e.a((TextView) view2.findViewById(2131952808));
            ((TextView) e.a((TextView) view.findViewById(2131952808))).setTextAppearance(getContext(), this.c);
            textView.setTextAppearance(getContext(), this.c);
        }
        ImageView imageView = (ImageView) e.a((ImageView) view2.findViewById(2131952809));
        ((ImageView) e.a((ImageView) view.findViewById(2131952809))).setColorFilter(this.b);
        imageView.setColorFilter(this.b);
    }
}
