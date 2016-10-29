package com.twitter.android.eventtimelines.header;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.twitter.util.aj;

/* compiled from: Twttr */
public class TextHeaderView extends LinearLayout {
    private TextView a;
    private TextView b;

    public TextHeaderView(Context context) {
        this(context, null, 0);
    }

    public TextHeaderView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TextHeaderView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        a(context);
    }

    private void a(Context context) {
        b(context);
        a();
    }

    private void b(Context context) {
        setBackgroundColor(-1);
        setOrientation(1);
        LayoutInflater.from(context).inflate(2130968814, this, true);
    }

    private void a() {
        this.a = (TextView) findViewById(2131952464);
        this.b = (TextView) findViewById(2131952465);
    }

    public void a(String str, String str2) {
        this.a.setText(str);
        this.b.setText(str2);
        this.b.setVisibility(aj.a((CharSequence) str2) ? 8 : 0);
    }

    public TextView getTitleView() {
        return this.a;
    }

    public TextView getSubtitleView() {
        return this.b;
    }
}
