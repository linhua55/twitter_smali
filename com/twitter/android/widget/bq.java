package com.twitter.android.widget;

import android.content.Context;
import android.view.ViewGroup;
import com.google.android.exoplayer.chunk.FormatEvaluator.AdaptiveEvaluator;

/* compiled from: Twttr */
public class bq<T> extends j<T> {
    public bq(Context context, l<T> lVar) {
        super(context, lVar);
    }

    public int getCount() {
        return Math.min(a() * ExoPlayerImplInternal.MSG_SEEK_COMPLETE, AdaptiveEvaluator.DEFAULT_MIN_DURATION_FOR_QUALITY_INCREASE_MS);
    }

    public Object instantiateItem(ViewGroup viewGroup, int i) {
        return super.instantiateItem(viewGroup, b(i));
    }

    public T a(int i) {
        return super.a(b(i));
    }

    public void destroyItem(ViewGroup viewGroup, int i, Object obj) {
        super.destroyItem(viewGroup, b(i), obj);
    }

    private int b(int i) {
        return i % a();
    }
}
