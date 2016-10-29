package com.twitter.android.smartfollow;

import android.content.Context;
import android.content.res.Resources;
import android.support.annotation.StringRes;
import android.support.v4.view.GravityCompat;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.twitter.ui.widget.TwitterButton;
import com.twitter.util.object.e;
import defpackage.bcx;

/* compiled from: Twttr */
public abstract class BaseSmartFollowScreen<P extends b> extends LinearLayout implements OnClickListener {
    protected TextView a;
    private TwitterButton b;
    private TwitterButton c;
    private P d;

    public BaseSmartFollowScreen(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        int title = getTitle();
        int subtitle = getSubtitle();
        TextView textView = (TextView) findViewById(2131952427);
        this.a = (TextView) findViewById(2131953286);
        if (textView != null && title > 0) {
            textView.setText(title);
            textView.setGravity(getTitleGravity());
        }
        if (this.a != null && subtitle > 0) {
            this.a.setVisibility(0);
            this.a.setText(subtitle);
        }
        this.b = (TwitterButton) findViewById(2131952009);
        this.c = (TwitterButton) findViewById(bcx.skip);
        if (this.b != null) {
            this.b.setOnClickListener(this);
        }
        if (this.c != null) {
            this.c.setOnClickListener(this);
        }
    }

    public void onClick(View view) {
        if (view.getId() == 2131952009) {
            getPresenter().t();
        } else if (view.getId() == bcx.skip) {
            getPresenter().s();
        }
    }

    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        getPresenter().a(this);
    }

    public final void setPresenter(P p) {
        this.d = p;
    }

    protected final P getPresenter() {
        return (b) e.a(this.d);
    }

    protected void b(boolean z) {
        this.b.setEnabled(z);
    }

    @StringRes
    protected int getTitle() {
        return 0;
    }

    @StringRes
    protected int getSubtitle() {
        return 0;
    }

    protected int getTitleGravity() {
        return GravityCompat.START;
    }

    public void setCtaCopy(@StringRes int i) {
        this.b.setText(i);
    }

    public void setCtaCopy(String str) {
        this.b.setText(str);
    }

    public void setSkipCopy(@StringRes int i) {
        this.c.setText(i);
    }

    protected static void a(Resources resources, TextView textView, @StringRes int i) {
        textView.animate().alpha(0.0f).setDuration(200).setListener(new a(resources, i, textView));
    }
}
