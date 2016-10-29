package com.twitter.android.av.audio;

import android.content.Context;
import android.content.Intent;
import com.twitter.android.av.AVCardCanvasActivity;
import com.twitter.android.av.g;
import com.twitter.model.av.Partner;
import com.twitter.util.collection.CollectionUtils;
import java.util.Collections;
import java.util.Map;

/* compiled from: Twttr */
public class f extends g {
    private Partner b;
    private Map<String, String> c;

    public f() {
        this.b = Partner.a;
        this.c = Collections.emptyMap();
    }

    protected Class<? extends AVCardCanvasActivity> a() {
        return AudioCardViewerActivity.class;
    }

    public f a(Partner partner) {
        this.b = partner;
        return this;
    }

    public f a(Map<String, String> map) {
        this.c = map;
        return this;
    }

    public Intent a(Context context) {
        Intent a = super.a(context);
        a.putExtra("extra_partner", this.b);
        a.putExtra("extra_metadata", CollectionUtils.c(this.c));
        return a;
    }
}
