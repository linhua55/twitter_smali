package com.twitter.android.widget;

import com.twitter.model.core.Tweet;
import com.twitter.util.object.ObjectUtils;
import java.util.ArrayList;

/* compiled from: Twttr */
public abstract class ef<T extends ef<T>> extends eb<T> {
    protected ef(int i) {
        super(i);
    }

    public T b(boolean z) {
        this.a.putBoolean("undo", z);
        return (ef) ObjectUtils.a(this);
    }

    public T a(Tweet tweet) {
        this.a.putParcelable("tweet", tweet);
        return (ef) ObjectUtils.a(this);
    }

    public T a(long j) {
        this.a.putLong("user_id", j);
        return (ef) ObjectUtils.a(this);
    }

    public T c(boolean z) {
        this.a.putBoolean("add_main", z);
        return (ef) ObjectUtils.a(this);
    }

    public T a(ArrayList<Integer> arrayList) {
        this.a.putIntegerArrayList("actions", arrayList);
        return (ef) ObjectUtils.a(this);
    }
}
