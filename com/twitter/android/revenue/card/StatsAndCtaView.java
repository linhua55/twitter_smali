package com.twitter.android.revenue.card;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import caw;
import cmb;
import com.twitter.android.revenue.w;
import com.twitter.android.revenue.x;
import com.twitter.library.util.ab;
import com.twitter.ui.widget.TwitterButton;
import com.twitter.util.aj;
import defpackage.caa;

/* compiled from: Twttr */
public class StatsAndCtaView extends RelativeLayout {
    private static final Double a;
    private ab b;
    private TextView c;
    private TwitterButton d;
    private ViewGroup e;
    private LinearLayout f;
    private TextView g;
    private TextView h;
    private boolean i;

    static {
        a = Double.valueOf(3.5d);
    }

    public StatsAndCtaView(Context context) {
        super(context);
        a(context, null);
    }

    public StatsAndCtaView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a(context, attributeSet);
    }

    public StatsAndCtaView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        a(context, attributeSet);
    }

    private void a(Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, new int[]{16842994});
        inflate(context, obtainStyledAttributes.getResourceId(0, 2130969417), this);
        obtainStyledAttributes.recycle();
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        this.c = (TextView) findViewById(2131952126);
        this.d = (TwitterButton) findViewById(2131952125);
        this.e = (ViewGroup) findViewById(2131953293);
        this.f = (LinearLayout) findViewById(2131953294);
        this.g = (TextView) findViewById(2131952927);
        this.h = (TextView) findViewById(2131953295);
    }

    public void setOnClickTouchListener(ab abVar) {
        this.b = abVar;
    }

    public void setShowBlankLine(boolean z) {
        this.i = z;
    }

    public void a(cmb cmb) {
        d(cmb);
        this.c.setText(caw.a("title", cmb));
        b(cmb);
        this.e.setOnTouchListener(this.b);
        this.e.setTag("stats_container");
        setTag("container");
        setOnTouchListener(this.b);
    }

    private void d(cmb cmb) {
        this.d.setText(w.a(caw.a("cta_key", cmb)));
        this.d.setTag("button");
        this.d.setOnTouchListener(new aw(this, this.d));
    }

    void b(cmb cmb) {
        int i = 8;
        Double a = caa.a("app_star_rating", cmb);
        if (a == null || a.compareTo(a) >= 0) {
            this.f.setVisibility(8);
            this.g.setVisibility(0);
            CharSequence a2 = caw.a("app_category", cmb);
            if (a2 != null) {
                this.g.setText(a2);
                return;
            }
            this.g.setText(2131362749);
            if (this.h != null) {
                TextView textView = this.h;
                if (this.i) {
                    i = 4;
                }
                textView.setVisibility(i);
                return;
            }
            return;
        }
        x.a(getContext(), this.f, 2130839898, 2130839902, 2130839900, getResources().getDimensionPixelOffset(2131690548), a.floatValue(), 5.0f);
        if (aj.b(caw.a("app_num_ratings", cmb))) {
            this.g.setText(getResources().getString(2131362047, new Object[]{r0}));
        }
        c(cmb);
    }

    void c(cmb cmb) {
        if (this.h != null) {
            CharSequence a = caw.a("app_category", cmb);
            if (a != null) {
                this.h.setText(a);
            }
        }
    }

    public void setRatingContainerTextVisibility(int i) {
        if (this.g != null) {
            this.g.setVisibility(i);
        }
    }

    public void setCtaVisibility(int i) {
        if (this.d != null) {
            this.d.setVisibility(i);
        }
    }

    public void a() {
        if (this.d != null) {
            LayoutParams layoutParams = (LayoutParams) this.d.getLayoutParams();
            layoutParams.addRule(8, -1);
            layoutParams.addRule(13, -1);
        }
    }
}
