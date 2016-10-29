package com.twitter.android.eventtimelines;

import android.support.v7.recyclerview.BuildConfig;
import com.twitter.util.collection.x;
import com.twitter.util.collection.z;
import com.twitter.util.object.ObjectUtils;

/* compiled from: Twttr */
public class a {
    public static final a a;
    public final x<String> b;
    public final String c;
    public final x<z<Integer, Integer>> d;

    static {
        a = (a) new c().a(x.a()).a(BuildConfig.VERSION_NAME).b(x.a()).q();
    }

    private a(x<String> xVar, String str, x<z<Integer, Integer>> xVar2) {
        this.b = xVar;
        this.c = str;
        this.d = xVar2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        a aVar = (a) obj;
        if (ObjectUtils.a(this.b, aVar.b) && ObjectUtils.a(this.c, aVar.c) && ObjectUtils.a(this.d, aVar.d)) {
            return true;
        }
        return false;
    }

    public String toString() {
        return "ComposerConfiguration{composerSelection=" + this.d + ", hintText=" + this.b + ", prefillText='" + this.c + '\'' + '}';
    }

    public int hashCode() {
        return ObjectUtils.a(this.b, this.c, this.d);
    }
}
