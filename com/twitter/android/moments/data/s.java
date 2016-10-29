package com.twitter.android.moments.data;

import cym;
import rx.o;

/* compiled from: Twttr */
public class s extends av<Long, Boolean> {
    public s() {
        super(Boolean.valueOf(false));
    }

    public boolean a(long j) {
        return containsKey(Long.valueOf(j)) && ((Boolean) get(Long.valueOf(j))).booleanValue();
    }

    public o<Boolean> a(Long l) {
        return super.a(l).a(cym.a());
    }
}
