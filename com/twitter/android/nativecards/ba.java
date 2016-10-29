package com.twitter.android.nativecards;

import android.app.Activity;
import android.support.v4.content.ContextCompat;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.ForegroundColorSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import caw;
import cmb;
import com.twitter.android.card.a;
import com.twitter.android.card.b;
import com.twitter.android.card.f;
import com.twitter.android.card.h;
import com.twitter.library.widget.tweet.content.DisplayMode;
import defpackage.bcu;
import defpackage.byy;

/* compiled from: Twttr */
public class ba extends ax {
    private byy A;
    private String C;

    public ba(Activity activity, DisplayMode displayMode) {
        this(activity, displayMode, new h(activity), new b(activity));
    }

    ba(Activity activity, DisplayMode displayMode, f fVar, a aVar) {
        this(activity, displayMode, fVar, aVar, (LinearLayout) LayoutInflater.from(activity).inflate(2130969114, new FrameLayout(activity), false), new ay());
    }

    ba(Activity activity, DisplayMode displayMode, f fVar, a aVar, LinearLayout linearLayout, b bVar) {
        super(activity, displayMode, fVar, aVar, linearLayout, bVar);
    }

    public void a(long j, cmb cmb) {
        this.k = caw.a("card_url", cmb);
        if (this.e != null) {
            Object a = caw.a("author", cmb);
            CharSequence a2 = caw.a("description", cmb);
            if (!TextUtils.isEmpty(a)) {
                a2 = new SpannableStringBuilder(a);
                a2.setSpan(new ForegroundColorSpan(ContextCompat.getColor(this.q, bcu.text_blue)), 0, a.length(), 34);
                a2.insert(0, this.q.getString(2131364170));
                this.e.setText(a2);
            } else if (!TextUtils.isEmpty(a2)) {
                this.e.setText(a2);
            }
            this.e.setOnClickListener(this);
            this.e.setOnLongClickListener(this);
            this.A = byy.a("app_url", "app_url_resolved", cmb);
            this.C = caw.a("app_id", cmb);
        }
    }

    public void onClick(View view) {
        if (view != this.e || this.C == null) {
            super.onClick(view);
        } else {
            this.v.a(this.A, this.C, this.k, null);
        }
    }
}
