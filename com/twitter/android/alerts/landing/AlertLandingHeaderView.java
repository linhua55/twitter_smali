package com.twitter.android.alerts.landing;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.twitter.media.ui.image.AspectRatioFrameLayout;
import defpackage.bcx;

/* compiled from: Twttr */
public class AlertLandingHeaderView extends LinearLayout {
    private ImageView a;
    private AspectRatioFrameLayout b;
    private ViewGroup c;
    private TextView d;
    private TextView e;
    private ViewGroup f;
    private Button g;

    public AlertLandingHeaderView(Context context) {
        this(context, null);
    }

    public AlertLandingHeaderView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public AlertLandingHeaderView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        a(context);
    }

    private void a(Context context) {
        b(context);
        a();
    }

    private void b(Context context) {
        setOrientation(1);
        LayoutInflater.from(context).inflate(2130968626, this, true);
    }

    private void a() {
        this.b = (AspectRatioFrameLayout) findViewById(bcx.header_container);
        this.a = (ImageView) findViewById(2131951945);
        this.c = (ViewGroup) findViewById(bcx.header_content);
        this.d = (TextView) findViewById(2131951946);
        this.e = (TextView) findViewById(2131951947);
        this.g = (Button) findViewById(2131951948);
        this.f = (ViewGroup) findViewById(2131951944);
    }

    public AspectRatioFrameLayout getHeaderImageGroup() {
        return this.b;
    }

    public ViewGroup getHeaderTextGroup() {
        return this.c;
    }

    public TextView getTitleView() {
        return this.d;
    }

    public TextView getSubtitleView() {
        return this.e;
    }

    public ImageView getHeaderImageView() {
        return this.a;
    }

    public Button getMuteView() {
        return this.g;
    }

    public ViewGroup getMapGroup() {
        return this.f;
    }

    public void setBlurredHeaderDrawable(Drawable drawable) {
        this.a.setImageDrawable(drawable);
    }
}
