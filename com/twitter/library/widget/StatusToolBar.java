package com.twitter.library.widget;

import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnClickListener;
import bcv;
import bcy;
import com.twitter.internal.android.widget.ToolBar;
import com.twitter.library.client.br;
import com.twitter.library.client.bs;
import com.twitter.library.view.ScrollingMarqueeTextView;
import com.twitter.util.c;
import defpackage.bcx;

/* compiled from: Twttr */
public class StatusToolBar extends ToolBar implements OnClickListener, bs {
    private View a;
    private boolean b;
    private int c;
    private ScrollingMarqueeTextView d;
    private br e;
    private al f;
    private boolean g;

    public StatusToolBar(Context context) {
        this(context, null);
    }

    public StatusToolBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.g = true;
        a(context);
    }

    public StatusToolBar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.g = true;
        a(context);
    }

    public void setStatusToolBarListener(al alVar) {
        this.f = alVar;
    }

    public void setDisplayShowStatusBarEnabled(boolean z) {
        this.g = z;
    }

    private void a(Context context) {
        k();
        this.c = context.getResources().getDimensionPixelSize(bcv.status_toolbar_message_height);
    }

    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        if (z) {
            this.e.a(this);
            a(this.e.b());
        }
    }

    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.b = true;
    }

    protected void onDetachedFromWindow() {
        this.b = false;
        super.onDetachedFromWindow();
    }

    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.a != null && this.a.getVisibility() != 8) {
            int i3 = this.a.getLayoutParams().height;
            this.a.measure(i, MeasureSpec.makeMeasureSpec(i3, 1073741824));
            setMeasuredDimension(MeasureSpec.getSize(i), i3 + MeasureSpec.getSize(i2));
        }
    }

    public int getStatusBarMessageHeight() {
        return this.e.b() ? this.c : 0;
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5;
        if (this.a == null || this.a.getVisibility() == 8) {
            i5 = 0;
        } else {
            i5 = this.a.getMeasuredHeight();
            this.a.layout(0, 0, i3, i5);
        }
        setOffsetLayoutTopPx(i5);
        super.onLayout(z, i, i2, i3, i4);
    }

    public void a(boolean z) {
        if (c.a()) {
            b(z);
        } else {
            post(new aj(this, z));
        }
    }

    private void b(boolean z) {
        if (this.b && j()) {
            if (z && this.g) {
                k();
                if (this.f != null) {
                    this.f.a();
                }
            } else if (this.a != null) {
                this.a.setVisibility(8);
                if (this.f != null) {
                    this.f.b();
                }
            }
            requestLayout();
        }
    }

    private boolean j() {
        Drawable background = getBackground();
        return background == null || (background instanceof ColorDrawable);
    }

    private void k() {
        this.e = br.a();
        ak f = this.e.f();
        if (this.e.b()) {
            if (this.a == null) {
                this.a = LayoutInflater.from(getContext()).inflate(bcy.status_bar, this, false);
                addView(this.a, 0);
                this.d = (ScrollingMarqueeTextView) this.a.findViewById(bcx.campaign_text_view);
                this.d.setOnClickListener(this);
            }
            this.d.a(this.e.e(), this.e.c(), this.e.d());
            this.a.setVisibility(0);
            if (f != null) {
                f.a(this);
            }
        } else if (f != null) {
            f.b(this);
        }
    }

    public void onClick(View view) {
        ak f = this.e.f();
        if (f != null) {
            f.c(this);
        }
    }
}
