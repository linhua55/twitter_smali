package com.twitter.android.communities.header;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.twitter.util.aj;
import rx.o;

/* compiled from: Twttr */
public class TextHeaderView extends LinearLayout implements k {
    private TextView a;
    private TextView b;
    private View c;
    private o<Void> d;

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
        b();
    }

    private void b(Context context) {
        setBackgroundColor(-1);
        setOrientation(1);
        LayoutInflater.from(context).inflate(2130968706, this, true);
    }

    private void b() {
        this.a = (TextView) findViewById(2131952215);
        this.b = (TextView) findViewById(2131952216);
        this.c = findViewById(2131952217);
        this.d = o.a(new i(this));
        this.c.setVisibility(8);
    }

    public o<Void> a() {
        return this.d;
    }

    public void a(String str, String str2) {
        this.a.setText(str);
        this.b.setText(str2);
        this.b.setVisibility(aj.a((CharSequence) str2) ? 8 : 0);
    }

    public void setIsMember(boolean z) {
        this.c.setVisibility(z ? 8 : 0);
    }

    public TextView getTitleView() {
        return this.a;
    }

    public TextView getSubtitleView() {
        return this.b;
    }

    public View getJoinButtonView() {
        return this.c;
    }
}
