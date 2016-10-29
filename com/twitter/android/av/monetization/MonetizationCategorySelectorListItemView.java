package com.twitter.android.av.monetization;

import android.content.Context;
import android.support.annotation.VisibleForTesting;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.CheckBox;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.twitter.model.av.MonetizationCategory;
import com.twitter.util.h;

/* compiled from: Twttr */
public class MonetizationCategorySelectorListItemView extends LinearLayout implements OnClickListener {
    @VisibleForTesting
    TextView a;
    @VisibleForTesting
    CheckBox b;
    private MonetizationCategory c;
    private o d;

    public MonetizationCategorySelectorListItemView(Context context) {
        super(context);
    }

    public MonetizationCategorySelectorListItemView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public MonetizationCategorySelectorListItemView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        this.a = (TextView) findViewById(2131952827);
        this.b = (CheckBox) findViewById(2131952828);
        setOnClickListener(this);
    }

    public void onClick(View view) {
        boolean z = !this.b.isChecked();
        this.b.setChecked(z);
        if (this.c != null && this.d != null) {
            this.d.a(this.c, z);
        }
    }

    public void a(MonetizationCategory monetizationCategory, boolean z) {
        this.c = monetizationCategory;
        this.a.setText(this.c.b());
        this.b.setChecked(z);
    }

    public void setListener(o oVar) {
        this.d = oVar;
    }

    MonetizationCategory getMonetizationCategory() {
        h.d();
        return this.c;
    }

    o getListener() {
        h.d();
        return this.d;
    }
}
