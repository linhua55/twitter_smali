package com.twitter.android.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.twitter.android.mx;
import com.twitter.library.media.widget.UserImageView;
import com.twitter.model.topic.a;
import com.twitter.util.aj;

/* compiled from: Twttr */
public class SportsTeamRowView extends RelativeLayout {
    protected TextView a;
    protected TextView b;
    protected TextView c;
    protected UserImageView d;
    protected int e;
    protected boolean f;

    public SportsTeamRowView(Context context) {
        this(context, null, 2130772099);
    }

    public SportsTeamRowView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 2130772099);
    }

    public SportsTeamRowView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, mx.SportsTeamRowView, i, 0);
        this.e = obtainStyledAttributes.getResourceId(0, 2130969415);
        this.f = obtainStyledAttributes.getBoolean(1, false);
        obtainStyledAttributes.recycle();
        c();
    }

    public void c() {
        ((LayoutInflater) getContext().getSystemService("layout_inflater")).inflate(this.e, this, true);
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        this.a = (TextView) findViewById(2131952293);
        this.b = (TextView) findViewById(2131952294);
        this.c = (TextView) findViewById(2131952295);
        this.d = (UserImageView) findViewById(2131952292);
    }

    public void b(a aVar, String str) {
        if (aVar != null) {
            String str2;
            if (this.f) {
                str2 = aVar.f;
            } else {
                str2 = aVar.c;
            }
            a(this.a, aVar.b);
            a(this.b, str2);
            a(aVar, str);
            if (this.d != null) {
                this.d.a(aVar.e);
            }
        }
    }

    protected void a(a aVar, String str) {
        a(this.c, aVar.d);
    }

    protected static void a(TextView textView, String str) {
        if (textView == null) {
            return;
        }
        if (aj.b(str)) {
            textView.setText(str);
            textView.setVisibility(0);
            return;
        }
        textView.setVisibility(8);
    }
}
