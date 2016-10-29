package com.twitter.android.events.sports;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.widget.TextView;
import com.twitter.android.util.bn;
import com.twitter.android.widget.SportsTeamRowView;
import com.twitter.model.topic.a;
import defpackage.bcu;

/* compiled from: Twttr */
public class AdaptiveTeamRowView extends SportsTeamRowView {
    private final Context g;
    private TextView h;

    public AdaptiveTeamRowView(Context context) {
        this(context, null, 2130772099);
    }

    public AdaptiveTeamRowView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 2130772099);
    }

    public AdaptiveTeamRowView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.g = context;
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        this.h = (TextView) findViewById(2131952296);
        bn.a(this.a, 1);
        bn.a(this.c, 1);
        bn.a(this.h, 3);
    }

    protected void a(a aVar, String str) {
        super.a(aVar, str);
        b.a(aVar.d, this.c, this.h, str);
        this.b.setVisibility(8);
    }

    public void a() {
        Resources resources = this.g.getResources();
        this.a.setTypeface(Typeface.DEFAULT_BOLD);
        this.a.setTextColor(resources.getColor(bcu.text));
        this.c.setTextColor(resources.getColor(bcu.text));
    }

    public void b() {
        Resources resources = this.g.getResources();
        this.a.setTypeface(Typeface.DEFAULT);
        this.a.setTextColor(resources.getColor(bcu.deep_gray));
        this.c.setTextColor(resources.getColor(bcu.deep_gray));
    }

    public void b(a aVar, String str) {
        super.b(aVar, str);
        if (aVar != null) {
            SportsTeamRowView.a(this.a, aVar.c);
        }
    }
}
