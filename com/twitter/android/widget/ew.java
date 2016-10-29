package com.twitter.android.widget;

import android.content.Context;
import cgu;
import com.twitter.android.timeline.ba;
import com.twitter.util.object.e;

/* compiled from: Twttr */
public class ew extends j<ba> {
    private ba b;

    public /* synthetic */ Object a(int i) {
        return b(i);
    }

    public ew(Context context, l<ba> lVar) {
        super(context, lVar);
    }

    public int getCount() {
        return super.getCount() + 1;
    }

    public ba b(int i) {
        if (i < getCount() - 1) {
            return (ba) super.a(i);
        }
        return b();
    }

    public ba b() {
        if (this.b == null) {
            e.a(b(0));
            this.b = new ex(b(0));
        }
        return this.b;
    }

    public void a(cgu<ba> cgu_com_twitter_android_timeline_ba) {
        super.a((cgu) cgu_com_twitter_android_timeline_ba);
        this.b = null;
    }
}
