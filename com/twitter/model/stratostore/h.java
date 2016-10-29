package com.twitter.model.stratostore;

import bbn;
import com.twitter.util.collection.r;
import com.twitter.util.object.ObjectUtils;
import java.util.Map;
import tv.periscope.android.library.p;

/* compiled from: Twttr */
public class h {
    private final Map<Class<? extends f>, d> a;

    public h(Map<Class<? extends f>, d> map) {
        this.a = r.a(map);
    }

    public <T extends f> T a(Class<T> cls) {
        d b = b(cls);
        if (b != null) {
            switch (b.c) {
                case p.View_android_focusable /*1*/:
                    return (f) ObjectUtils.a(b.e);
                case p.View_paddingStart /*2*/:
                    bbn.a(new Exception("Stratostore extension " + b.a + " error:  " + b.d));
                    break;
            }
        }
        return null;
    }

    public <T extends f> d<T> b(Class<T> cls) {
        return (d) this.a.get(cls);
    }
}
