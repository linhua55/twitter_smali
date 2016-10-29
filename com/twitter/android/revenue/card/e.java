package com.twitter.android.revenue.card;

import android.app.Activity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.FrameLayout;
import android.widget.TextView;
import cmb;
import com.twitter.android.revenue.x;
import com.twitter.library.widget.tweet.content.DisplayMode;

/* compiled from: Twttr */
public class e extends ac {
    e(Activity activity, DisplayMode displayMode) {
        super(activity, displayMode);
        View findViewById = this.a.findViewById(2131952851);
        if (findViewById != null) {
            findViewById.setBackground(x.a(this.q.getResources()));
        }
        this.d.a(findViewById);
    }

    protected View d() {
        ViewGroup viewGroup = (ViewGroup) LayoutInflater.from(this.q).inflate(2130969082, new FrameLayout(this.q), false);
        a((ViewStub) viewGroup.findViewById(2131952841));
        return viewGroup;
    }

    protected void a(ViewStub viewStub) {
        viewStub.setLayoutResource(2130969069);
        this.e = (TextView) viewStub.inflate().findViewById(2131952126);
    }

    protected void a(cmb cmb) {
        super.a(cmb);
        if (this.b != null) {
            this.b.setVisibility(0);
        }
    }
}
