package com.twitter.android.smartfollow.waitingforsuggestions;

import android.content.Context;
import android.support.annotation.StringRes;
import android.util.AttributeSet;
import android.view.View;
import android.widget.TextView;
import com.twitter.android.smartfollow.BaseSmartFollowScreen;
import com.twitter.ui.widget.TwitterButton;
import com.twitter.util.object.e;

/* compiled from: Twttr */
public class WaitingForSuggestionsScreen extends BaseSmartFollowScreen<a> {
    private TextView b;
    private View c;
    private View d;

    public WaitingForSuggestionsScreen(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        this.b = (TextView) e.a(findViewById(2131953288));
        this.d = (View) e.a(findViewById(2131952613));
        this.c = (View) e.a(findViewById(2131952637));
        ((TwitterButton) e.a(findViewById(2131952570))).setOnClickListener(this);
    }

    protected void setDescription(@StringRes int i) {
        a(getResources(), this.b, i);
    }

    protected void a() {
        this.b.setText(TtmlNode.ANONYMOUS_REGION_ID);
    }

    protected void setView(boolean z) {
        int i;
        int i2 = 0;
        View view = this.d;
        if (z) {
            i = 8;
        } else {
            i = 0;
        }
        view.setVisibility(i);
        View view2 = this.c;
        if (!z) {
            i2 = 8;
        }
        view2.setVisibility(i2);
    }

    public void onClick(View view) {
        if (view.getId() == 2131952570) {
            ((a) getPresenter()).v();
        } else {
            super.onClick(view);
        }
    }
}
