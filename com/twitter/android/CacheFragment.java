package com.twitter.android;

import com.twitter.app.common.base.BaseFragment;
import com.twitter.util.collection.e;
import java.util.Collection;

/* compiled from: Twttr */
public class CacheFragment<K, V> extends BaseFragment {
    private bg<K, V> a;
    private e<K, V> b;

    public CacheFragment() {
        setRetainInstance(true);
    }

    public void onLowMemory() {
        super.onLowMemory();
        if (this.b != null) {
            this.b.a();
        }
    }

    public void onDestroy() {
        super.onDestroy();
        if (this.b != null) {
            Collection<Object> c = this.b.c();
            this.b.a();
            for (Object a : c) {
                this.a.a(a);
            }
        }
    }
}
