package com.twitter.android.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.twitter.util.aj;

/* compiled from: Twttr */
public abstract class TopicView extends RelativeLayout {
    private TopicData a;

    protected abstract void a(Context context, AttributeSet attributeSet, int i);

    public abstract String getSeedHashtag();

    public abstract String getTopicId();

    public abstract int getTopicType();

    public TopicView(Context context) {
        super(context);
        a(context, null, 0);
    }

    public TopicView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a(context, attributeSet, 0);
    }

    public TopicView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        a(context, attributeSet, i);
    }

    public void a(String str, int i, String str2, String str3, String str4, String str5, String str6, int i2, long j, String str7, String str8, byte[] bArr, boolean z, boolean z2, Long l, String str9, String str10, String str11, String str12) {
        this.a = new TopicData(str, i, str3, str4, str2, str6, str7, str8, str5, i2, j, bArr, str12);
    }

    public TopicData getTopicData() {
        return this.a;
    }

    protected static void a(TextView textView, String str) {
        a(textView, str, 0);
    }

    protected static void a(TextView textView, String str, int i) {
        if (textView == null) {
            return;
        }
        if (aj.b(str)) {
            textView.setText(str);
            textView.setTypeface(null, i);
            textView.setVisibility(0);
            return;
        }
        textView.setVisibility(8);
    }
}
