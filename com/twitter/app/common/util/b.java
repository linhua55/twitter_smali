package com.twitter.app.common.util;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.util.SparseArray;
import com.twitter.util.collection.MutableList;
import com.twitter.util.h;
import java.util.List;

/* compiled from: Twttr */
public class b {
    private final List<a> a;
    private final SparseArray<w> b;

    public b() {
        this.a = MutableList.a();
        this.b = new SparseArray();
    }

    public void a(a aVar) {
        h.a();
        this.a.add(aVar);
    }

    public boolean b(a aVar) {
        h.a();
        return this.a.remove(aVar);
    }

    public void a(int i, w wVar) {
        h.a();
        if (this.b.indexOfKey(i) < 0) {
            this.b.put(i, wVar);
            return;
        }
        throw new IllegalStateException("The request code is duplicate: " + i);
    }

    public void a(Activity activity, Bundle bundle) {
        h.a();
        List list = this.a;
        for (int size = list.size() - 1; size >= 0; size--) {
            ((a) list.get(size)).onActivityCreated(activity, bundle);
        }
    }

    public void a(Activity activity, Intent intent) {
        h.a();
        List list = this.a;
        for (int size = list.size() - 1; size >= 0; size--) {
            ((a) list.get(size)).a(activity, intent);
        }
    }

    public void a(Activity activity) {
        h.a();
        List list = this.a;
        for (int size = list.size() - 1; size >= 0; size--) {
            ((a) list.get(size)).onActivityStarted(activity);
        }
    }

    public void b(Activity activity) {
        h.a();
        List list = this.a;
        for (int size = list.size() - 1; size >= 0; size--) {
            ((a) list.get(size)).onActivityResumed(activity);
        }
    }

    public void c(Activity activity) {
        h.a();
        List list = this.a;
        for (int size = list.size() - 1; size >= 0; size--) {
            ((a) list.get(size)).onActivityPaused(activity);
        }
    }

    public void d(Activity activity) {
        h.a();
        List list = this.a;
        for (int size = list.size() - 1; size >= 0; size--) {
            ((a) list.get(size)).onActivityStopped(activity);
        }
    }

    public void b(Activity activity, Bundle bundle) {
        h.a();
        List list = this.a;
        for (int size = list.size() - 1; size >= 0; size--) {
            ((a) list.get(size)).onActivitySaveInstanceState(activity, bundle);
        }
    }

    public void e(Activity activity) {
        h.a();
        List list = this.a;
        for (int size = list.size() - 1; size >= 0; size--) {
            ((a) list.get(size)).onActivityDestroyed(activity);
        }
    }

    public boolean a(Activity activity, int i, int i2, Intent intent) {
        h.a();
        w wVar = (w) this.b.get(i);
        if (wVar == null) {
            return false;
        }
        wVar.a(activity, i2, intent);
        return true;
    }

    public void a(Activity activity, Configuration configuration) {
        h.a();
        List list = this.a;
        for (int size = list.size() - 1; size >= 0; size--) {
            ((a) list.get(size)).a(activity, configuration);
        }
    }
}
