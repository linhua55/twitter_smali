package com.twitter.android.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.twitter.android.mx;

/* compiled from: Twttr */
public class GapView extends RelativeLayout {
    private String a;
    private ProgressBar b;
    private TextView c;

    public GapView(Context context) {
        super(context, null);
        a(context, null, 0);
    }

    public GapView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        a(context, attributeSet, 0);
    }

    public GapView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        a(context, attributeSet, i);
    }

    private void a(Context context, AttributeSet attributeSet, int i) {
        inflate(context, 2130968844, this);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, mx.GapView, i, 0);
        this.a = obtainStyledAttributes.getString(0);
        obtainStyledAttributes.recycle();
    }

    public void onFinishInflate() {
        super.onFinishInflate();
        this.c = (TextView) findViewById(2131952510);
        this.b = (ProgressBar) findViewById(2131952471);
        if (this.c != null) {
            this.c.setText(this.a);
        }
    }

    public void setSpinnerActive(boolean z) {
        int i = 0;
        if (this.c != null) {
            this.c.setVisibility(z ? 4 : 0);
        }
        if (this.b != null) {
            ProgressBar progressBar = this.b;
            if (!z) {
                i = 4;
            }
            progressBar.setVisibility(i);
        }
    }
}
