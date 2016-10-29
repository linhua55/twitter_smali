package com.twitter.android.widget;

import android.content.Intent;
import com.twitter.util.object.ObjectUtils;

/* compiled from: Twttr */
public abstract class dc<L extends dc<L>> extends ef<L> {
    protected dc(int i) {
        super(i);
    }

    public L a(Intent intent) {
        this.a.putParcelable("retweet_service_intent", intent);
        return (dc) ObjectUtils.a(this);
    }
}
