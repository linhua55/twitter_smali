package com.twitter.android.revenue.card;

import android.content.Context;
import android.widget.TextView;
import caw;
import cmb;
import cmc;
import com.twitter.android.card.a;
import com.twitter.android.card.f;
import com.twitter.library.util.ao;
import com.twitter.library.widget.tweet.content.DisplayMode;
import com.twitter.util.collection.n;
import java.util.List;

/* compiled from: Twttr */
public class ay extends az {
    private static final List<String> v;
    private TextView w;

    static {
        v = (List) n.d().c("summary_photo_image").q();
    }

    public ay(Context context, DisplayMode displayMode, f fVar, a aVar) {
        super(context, displayMode, fVar, aVar, 2130969088);
    }

    protected List<String> d() {
        return v;
    }

    protected float a(cmc cmc) {
        if (this.s) {
            return cmc.a(2.0f);
        }
        return 1.91f;
    }

    protected void a(Context context) {
        super.a(context);
        this.w = (TextView) this.q.findViewById(2131952867);
    }

    public void a(long j, cmb cmb) {
        super.a(j, cmb);
        if (this.w != null) {
            CharSequence a = caw.a("description", cmb);
            this.w.setTextSize(0, ao.a);
            if (a != null) {
                this.w.setVisibility(0);
                this.w.setText(a);
                this.w.setTag("description");
                this.w.setOnTouchListener(this.r);
            }
        }
    }
}
