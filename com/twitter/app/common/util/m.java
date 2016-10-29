package com.twitter.app.common.util;

import android.content.res.Configuration;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import com.twitter.util.collection.MutableList;
import com.twitter.util.h;
import java.util.List;

/* compiled from: Twttr */
public class m {
    private final List<l> a;

    public m() {
        this.a = MutableList.a();
    }

    public void a(l lVar) {
        h.a();
        this.a.add(lVar);
    }

    public boolean b(l lVar) {
        h.a();
        return this.a.remove(lVar);
    }

    public void a(Fragment fragment, Bundle bundle) {
        h.a();
        List list = this.a;
        for (int size = list.size() - 1; size >= 0; size--) {
            ((l) list.get(size)).b(fragment, bundle);
        }
    }

    public void a(Fragment fragment) {
        h.a();
        List list = this.a;
        for (int size = list.size() - 1; size >= 0; size--) {
            ((l) list.get(size)).a(fragment);
        }
    }

    public void b(Fragment fragment) {
        h.a();
        List list = this.a;
        for (int size = list.size() - 1; size >= 0; size--) {
            ((l) list.get(size)).f(fragment);
        }
    }

    public void c(Fragment fragment) {
        h.a();
        List list = this.a;
        for (int size = list.size() - 1; size >= 0; size--) {
            ((l) list.get(size)).b(fragment);
        }
    }

    public void d(Fragment fragment) {
        h.a();
        List list = this.a;
        for (int size = list.size() - 1; size >= 0; size--) {
            ((l) list.get(size)).c(fragment);
        }
    }

    public void e(Fragment fragment) {
        h.a();
        List list = this.a;
        for (int size = list.size() - 1; size >= 0; size--) {
            ((l) list.get(size)).g(fragment);
        }
    }

    public void f(Fragment fragment) {
        h.a();
        List list = this.a;
        for (int size = list.size() - 1; size >= 0; size--) {
            ((l) list.get(size)).d(fragment);
        }
    }

    public void b(Fragment fragment, Bundle bundle) {
        h.a();
        List list = this.a;
        for (int size = list.size() - 1; size >= 0; size--) {
            ((l) list.get(size)).a(fragment, bundle);
        }
    }

    public void g(Fragment fragment) {
        h.a();
        List list = this.a;
        for (int size = list.size() - 1; size >= 0; size--) {
            ((l) list.get(size)).e(fragment);
        }
    }

    public void a(Fragment fragment, Configuration configuration) {
        h.a();
        List list = this.a;
        for (int size = list.size() - 1; size >= 0; size--) {
            ((l) list.get(size)).a(fragment, configuration);
        }
    }
}
