package com.twitter.android.widget;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.widget.TextView;
import com.twitter.util.aj;
import com.twitter.util.t;

/* compiled from: Twttr */
public class EventView extends TopicView {
    private TextView a;
    private TextView b;
    private TextView c;
    private TextView d;
    private String e;
    private String f;
    private int g;
    private int h;
    private String i;
    private Context j;

    public EventView(Context context) {
        super(context);
    }

    public EventView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public EventView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    protected void a(Context context, AttributeSet attributeSet, int i) {
        this.j = context;
    }

    public String getTopicId() {
        return this.e;
    }

    public int getTopicType() {
        return this.g;
    }

    public String getSeedHashtag() {
        return this.i;
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        this.a = (TextView) findViewById(2131952467);
        this.b = (TextView) findViewById(2131952468);
        this.c = (TextView) findViewById(2131952469);
        this.d = (TextView) findViewById(2131952470);
    }

    public int getTweetCount() {
        return this.h;
    }

    public void a(String str, int i, String str2, String str3, String str4, String str5, String str6, int i2, long j, String str7, String str8, byte[] bArr, boolean z, boolean z2, Long l, String str9, String str10, String str11, String str12) {
        super.a(str, i, str2, str3, str4, str5, str6, i2, j, str7, str8, bArr, z, z2, l, str9, str10, str11, str12);
        this.e = str;
        this.g = i;
        this.i = str5;
        this.f = str8;
        this.h = i2;
        Resources resources = getResources();
        String a = a(str6, i2, resources);
        TopicView.a(this.a, str3);
        TopicView.a(this.b, str4);
        TopicView.a(this.c, a);
        if (this.d == null) {
            return;
        }
        if (z) {
            CharSequence string;
            if (str3 == null || str3.length() > 20) {
                string = resources.getString(2131362667);
            } else {
                string = resources.getString(2131362668, new Object[]{str3});
            }
            this.d.setText(string);
            this.d.setVisibility(0);
            return;
        }
        this.d.setVisibility(8);
    }

    public String getViewUrl() {
        return this.f;
    }

    protected static String a(String str, int i, Resources resources) {
        if (aj.b(str)) {
            return str;
        }
        if (i <= 0) {
            return null;
        }
        return resources.getString(2131362666, new Object[]{t.a(resources, (long) i)});
    }
}
