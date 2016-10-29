package com.twitter.android.client;

import android.content.Context;
import android.support.v4.util.LongSparseArray;
import android.support.v4.util.LruCache;
import android.support.v7.widget.helper.ItemTouchHelper.Callback;
import com.twitter.model.core.p;
import java.util.ArrayList;

/* compiled from: Twttr */
public class r {
    private static Context a;
    private final LruCache<Long, Integer> b;
    private final LongSparseArray<ArrayList<s>> c;

    static void a(Context context) {
        a = context;
    }

    public r() {
        this.b = new LruCache(Callback.DEFAULT_SWIPE_ANIMATION_DURATION);
        this.c = new LongSparseArray();
    }

    public synchronized void a(long j, int i) {
        this.b.put(Long.valueOf(j), Integer.valueOf(i));
        c(j, i);
    }

    public synchronized void b(long j, int i) {
        Integer num = (Integer) this.b.get(Long.valueOf(j));
        int b = p.b(num == null ? 0 : num.intValue(), i);
        this.b.put(Long.valueOf(j), Integer.valueOf(b));
        c(j, b);
    }

    public synchronized int a(long j) {
        Integer num;
        num = (Integer) this.b.get(Long.valueOf(j));
        return num != null ? num.intValue() : 128;
    }

    protected void c(long j, int i) {
        ArrayList arrayList = (ArrayList) this.c.get(j);
        if (arrayList != null) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                ((s) arrayList.get(size)).a(j, i);
            }
        }
    }
}
