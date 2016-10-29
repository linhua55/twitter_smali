package com.twitter.android.profilecompletionmodule;

import android.content.Context;
import android.support.annotation.StringRes;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.twitter.util.object.e;
import defpackage.bcx;

/* compiled from: Twttr */
public abstract class BaseProfileStepScreen<P extends a> extends LinearLayout implements OnClickListener {
    private P a;

    @StringRes
    protected abstract int getSubtitle();

    @StringRes
    protected abstract int getTitle();

    protected BaseProfileStepScreen(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        int title = getTitle();
        int subtitle = getSubtitle();
        TextView textView = (TextView) findViewById(2131952427);
        TextView textView2 = (TextView) findViewById(2131953286);
        View findViewById = findViewById(2131952009);
        View findViewById2 = findViewById(bcx.skip);
        if (textView != null && title > 0) {
            textView.setText(title);
        }
        if (textView2 != null && subtitle > 0) {
            textView2.setVisibility(0);
            textView2.setText(subtitle);
        }
        if (findViewById != null) {
            findViewById.setOnClickListener(this);
        }
        if (findViewById2 != null) {
            findViewById2.setOnClickListener(this);
        }
    }

    public void onClick(View view) {
        if (view.getId() == 2131952009) {
            getPresenter().s();
        } else if (view.getId() == bcx.skip) {
            getPresenter().r();
        }
    }

    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        getPresenter().m();
    }

    public final void setPresenter(P p) {
        this.a = p;
    }

    protected final P getPresenter() {
        return (a) e.a(this.a);
    }

    protected void a(boolean z) {
        findViewById(2131952009).setEnabled(z);
    }
}
