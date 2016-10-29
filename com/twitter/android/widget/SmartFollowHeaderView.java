package com.twitter.android.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.CheckBox;
import android.widget.LinearLayout;
import com.twitter.util.object.e;

/* compiled from: Twttr */
public class SmartFollowHeaderView extends LinearLayout implements OnClickListener {
    private CheckBox a;
    private eu b;

    public SmartFollowHeaderView(Context context) {
        this(context, null);
    }

    public SmartFollowHeaderView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SmartFollowHeaderView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        inflate(context, 2130969407, this);
    }

    public void onFinishInflate() {
        super.onFinishInflate();
        this.a = (CheckBox) e.a((CheckBox) findViewById(2131953264));
        this.a.setOnClickListener(this);
        setOnClickListener(this);
    }

    public void onClick(View view) {
        if (view.getId() == 2131953264) {
            view = this;
        } else {
            this.a.toggle();
        }
        if (this.b != null) {
            this.b.a(view);
        }
    }

    public void setOnCheckChangedListener(eu euVar) {
        this.b = euVar;
    }
}
