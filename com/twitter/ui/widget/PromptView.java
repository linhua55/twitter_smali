package com.twitter.ui.widget;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.support.annotation.StringRes;
import android.text.TextUtils;
import android.text.format.Time;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import crx;
import csa;
import csc;
import cse;

/* compiled from: Twttr */
public class PromptView extends RelativeLayout implements OnClickListener {
    private final TextView a;
    protected boolean b;
    protected Time c;
    private final TextView d;
    private final TwitterButton e;
    private final ImageView f;
    private final View g;
    private final View h;
    private r i;

    public PromptView(Context context) {
        this(context, null);
    }

    public PromptView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public PromptView(Context context, AttributeSet attributeSet, int i) {
        int i2;
        CharSequence charSequence;
        CharSequence charSequence2;
        CharSequence charSequence3 = null;
        boolean z = false;
        super(context, attributeSet, i);
        inflate(getContext(), csc.prompt_layout, this);
        this.h = findViewById(csa.prompt_icon);
        this.a = (TextView) findViewById(csa.prompt_title);
        this.d = (TextView) findViewById(csa.prompt_subtitle);
        this.e = (TwitterButton) findViewById(csa.prompt_btn);
        this.g = findViewById(csa.prompt_inner_container);
        this.e.setOnClickListener(this);
        this.f = (ImageView) findViewById(csa.dismiss);
        this.f.setOnClickListener(this);
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().getTheme().obtainStyledAttributes(attributeSet, cse.PromptView, i, 0);
            String string = obtainStyledAttributes.getString(cse.PromptView_titleText);
            String string2 = obtainStyledAttributes.getString(cse.PromptView_subtitleText);
            String string3 = obtainStyledAttributes.getString(cse.PromptView_buttonText);
            i2 = obtainStyledAttributes.getBoolean(cse.PromptView_showDismiss, false) ? 0 : 8;
            z = obtainStyledAttributes.getBoolean(cse.PromptView_isHeader, false);
            obtainStyledAttributes.recycle();
            charSequence = string3;
            charSequence3 = string2;
            charSequence2 = string;
        } else {
            i2 = 8;
            charSequence2 = null;
            charSequence = null;
        }
        setTitle(charSequence2);
        setSubtitle(charSequence3);
        setButtonText(charSequence);
        setDismissVisibility(i2);
        setIsHeader(z);
    }

    public void e() {
        setVisibility(8);
    }

    protected void onMeasure(int i, int i2) {
        if (getVisibility() == 8) {
            setMeasuredDimension(0, 0);
        } else {
            super.onMeasure(i, i2);
        }
    }

    public void onClick(View view) {
        if (view.getId() == csa.prompt_btn) {
            a();
        } else if (view.getId() == csa.dismiss) {
            f();
        }
    }

    protected void a() {
        if (this.i != null) {
            this.i.a(this);
        }
    }

    protected void b() {
        e();
        if (this.i != null) {
            this.i.b(this);
        }
    }

    protected void f() {
        a(this.h, -50.0f);
        a(getPromptHeader(), -50.0f);
        a(getPromptSubtitle(), -35.0f);
        a(getPromptButton(), -20.0f);
        c();
    }

    private static void a(View view, float f) {
        if (view.getVisibility() == 0) {
            view.animate().setDuration(200).translationYBy(f).scaleX(0.8f).scaleY(0.7f).alpha(0.0f);
        }
    }

    private void c() {
        int i = getLayoutParams().height;
        int measuredHeight = getMeasuredHeight();
        ValueAnimator ofFloat = ValueAnimator.ofFloat(new float[]{1.0f, 0.0f});
        ofFloat.setDuration(200);
        ofFloat.setStartDelay(300);
        ofFloat.addListener(new p(this, i));
        ofFloat.addUpdateListener(new q(this, measuredHeight));
        ofFloat.start();
    }

    protected float getAnimatingEndingHeight() {
        return 0.0f;
    }

    private static void b(View view) {
        view.setAlpha(1.0f);
        view.setScaleX(1.0f);
        view.setScaleY(1.0f);
        view.setTranslationY(0.0f);
    }

    public void setOnPromptClickListener(r rVar) {
        this.i = rVar;
    }

    private static void a(TextView textView, CharSequence charSequence) {
        if (TextUtils.isEmpty(charSequence)) {
            textView.setVisibility(8);
            return;
        }
        textView.setText(charSequence);
        textView.setVisibility(0);
    }

    public void setTitle(CharSequence charSequence) {
        a(this.a, charSequence);
    }

    public void setSubtitle(CharSequence charSequence) {
        a(this.d, charSequence);
    }

    public void setButtonText(CharSequence charSequence) {
        a(this.e, charSequence);
    }

    public void setTitle(@StringRes int i) {
        setTitle(getContext().getString(i));
    }

    public void setSubtitle(@StringRes int i) {
        setSubtitle(getContext().getString(i));
    }

    public void setButtonText(@StringRes int i) {
        setButtonText(getContext().getString(i));
    }

    public void setIsHeader(boolean z) {
        this.g.setPadding(this.g.getPaddingLeft(), (int) getResources().getDimension(z ? crx.prompt_vertical_top_padding : crx.prompt_padding), this.g.getPaddingRight(), this.g.getPaddingBottom());
    }

    public void setDismissVisibility(int i) {
        this.f.setVisibility(i);
    }

    public View getIconView() {
        return this.h;
    }

    protected TextView getPromptHeader() {
        return this.a;
    }

    protected TextView getPromptSubtitle() {
        return this.d;
    }

    public TwitterButton getPromptButton() {
        return this.e;
    }

    protected ImageView getDismissButton() {
        return this.f;
    }

    protected View getInnerContainer() {
        return this.g;
    }
}
