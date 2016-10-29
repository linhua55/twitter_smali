package com.twitter.android.dm.widget;

import android.content.Context;
import android.support.annotation.ColorInt;
import android.support.v4.content.ContextCompat;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.twitter.model.dms.k;
import com.twitter.util.aj;
import com.twitter.util.object.ObjectUtils;
import com.twitter.util.object.e;
import java.util.Set;

/* compiled from: Twttr */
public class SentMessageBylineView extends RelativeLayout {
    private final TextView a;
    private final ImageView b;
    private final TextView c;
    private final View d;
    private g e;

    public SentMessageBylineView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SentMessageBylineView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        inflate(context, 2130968773, this);
        this.d = (View) ObjectUtils.a(findViewById(2131952347));
        this.a = (TextView) ObjectUtils.a(findViewById(2131952348));
        this.b = (ImageView) e.a(ObjectUtils.a(findViewById(2131952349)));
        this.c = (TextView) ObjectUtils.a(findViewById(2131952350));
    }

    public String getTimestampText() {
        return this.a.getText().toString();
    }

    public void setTimestampText(String str) {
        this.a.setText(str);
    }

    public void setTimestampTextColor(@ColorInt int i) {
        this.a.setTextColor(i);
    }

    public void a(boolean z) {
        this.b.setVisibility(z ? 0 : 8);
    }

    public void a(k kVar, long j, boolean z) {
        if (kVar != null && j == kVar.a()) {
            this.b.setVisibility(0);
            this.b.setImageDrawable(ContextCompat.getDrawable(getContext(), 2130839230));
        } else if (z) {
            this.b.setVisibility(0);
            this.b.setImageDrawable(ContextCompat.getDrawable(getContext(), 2130839231));
        }
    }

    public void a(k kVar, long j, long j2, long j3) {
        Set a = kVar.a(j, j2, j3);
        a((Iterable) a, j2);
        a(a, j2);
    }

    private void a(Iterable<String> iterable, long j) {
        CharSequence a = aj.a(", ", iterable);
        if (!a.equals(this.c.getText().toString())) {
            this.c.setText(a);
            requestLayout();
        }
        if (((g) e.a(this.e)).a(j)) {
            b(j);
        } else {
            c(j);
        }
    }

    private void a(Set<String> set, long j) {
        this.d.setOnClickListener(new f(this, set, j));
    }

    public void a(long j) {
        if (this.c.isShown()) {
            c(j);
        } else {
            b(j);
        }
    }

    private void b(long j) {
        this.c.setVisibility(0);
        ((g) e.a(this.e)).c(j);
    }

    private void c(long j) {
        this.c.setVisibility(8);
        ((g) e.a(this.e)).b(j);
    }

    public void setBylineListener(g gVar) {
        this.e = gVar;
    }
}
