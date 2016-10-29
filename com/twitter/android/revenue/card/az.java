package com.twitter.android.revenue.card;

import android.content.Context;
import cmc;
import com.twitter.android.card.a;
import com.twitter.android.card.f;
import com.twitter.library.widget.tweet.content.DisplayMode;
import com.twitter.util.collection.n;
import java.util.List;

/* compiled from: Twttr */
public class az extends bi {
    public static final List<String> a;

    static {
        a = (List) n.d().c("thumbnail_image").c("summary_photo_image").q();
    }

    public az(Context context, DisplayMode displayMode, f fVar, a aVar) {
        this(context, displayMode, fVar, aVar, 2130969110);
    }

    az(Context context, DisplayMode displayMode, f fVar, a aVar, int i) {
        super(context, displayMode, fVar, aVar, i);
    }

    protected List<String> d() {
        return a;
    }

    protected String g() {
        return "card_url";
    }

    protected float a(cmc cmc) {
        return 1.0f;
    }

    protected boolean h() {
        return false;
    }
}
