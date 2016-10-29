package com.twitter.rufous.thriftandroid;

import com.twitter.rufous.thriftandroid.RufousScribeLogCollection._Fields;
import java.nio.ByteBuffer;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import tv.periscope.android.library.p;

/* compiled from: Twttr */
public class b {
    private Map<String, List<ByteBuffer>> a;

    public b a(_Fields com_twitter_rufous_thriftandroid_RufousScribeLogCollection__Fields, Object obj, Object obj2) {
        switch (a.a[com_twitter_rufous_thriftandroid_RufousScribeLogCollection__Fields.ordinal()]) {
            case p.View_android_focusable /*1*/:
                if ((obj instanceof String) && (obj2 instanceof List)) {
                    if (this.a == null) {
                        this.a = new HashMap();
                    }
                    this.a.put((String) obj, (List) obj2);
                    break;
                }
                throw new IllegalArgumentException("[String,List<ByteBuffer>] is expected, but [" + obj.getClass().toString() + ", " + obj2.getClass().toString() + "] type found.");
        }
        return this;
    }

    public RufousScribeLogCollection a() {
        if (this.a != null) {
            return new RufousScribeLogCollection(this.a);
        }
        throw new IllegalArgumentException("Required field 'logs' was not present! Struct: " + toString());
    }
}
