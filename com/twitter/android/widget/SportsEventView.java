package com.twitter.android.widget;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.twitter.model.topic.a;
import com.twitter.model.topic.d;
import com.twitter.model.topic.g;
import com.twitter.util.serialization.m;
import defpackage.bcu;

/* compiled from: Twttr */
public class SportsEventView extends EventView {
    protected TextView a;
    protected TextView b;
    protected SportsTeamRowView c;
    protected SportsTeamRowView d;
    protected LinearLayout e;
    protected int f;

    public SportsEventView(Context context) {
        super(context);
    }

    public SportsEventView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public SportsEventView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        this.a = (TextView) findViewById(2131951929);
        this.b = (TextView) findViewById(2131951928);
        this.c = (SportsTeamRowView) findViewById(2131951926);
        this.d = (SportsTeamRowView) findViewById(2131951927);
        this.e = (LinearLayout) findViewById(2131951925);
        Resources resources = getResources();
        this.f = (int) TypedValue.applyDimension(0, (float) resources.getDimensionPixelSize(2131690544), resources.getDisplayMetrics());
    }

    protected void a(g gVar, Resources resources, String str, long j, String str2) {
        TopicView.a(this.a, gVar.f);
    }

    public void a(String str, int i, String str2, String str3, String str4, String str5, String str6, int i2, long j, String str7, String str8, byte[] bArr, boolean z, boolean z2, Long l, String str9, String str10, String str11, String str12) {
        super.a(str, i, str2, str3, str4, str5, str6, i2, j, str7, str8, bArr, z, z2, l, str9, str10, null, str12);
        g gVar = (g) m.a(bArr, d.a);
        this.c.b((a) gVar.h.get(0), str);
        this.d.b((a) gVar.h.get(1), str);
        Resources resources = getResources();
        TopicView.a(this.b, EventView.a(str6, i2, resources));
        a(gVar, resources, str, j, str12);
        if (this.e != null) {
            int i3;
            if (z2) {
                this.e.setBackgroundDrawable(resources.getDrawable(2130840204));
                i3 = this.f;
            } else {
                this.e.setBackgroundColor(resources.getColor(bcu.white));
                i3 = 0;
            }
            this.e.setPadding(i3, i3, i3, i3);
        }
    }
}
