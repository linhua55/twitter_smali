package com.twitter.android.media.stickers;

import com.twitter.util.aj;
import com.twitter.util.collection.CollectionUtils;
import defpackage.ckf;
import java.security.SecureRandom;
import java.util.List;

/* compiled from: Twttr */
public class i {
    public static List<ckf> a(List<k> list) {
        return CollectionUtils.a(list, new j());
    }

    public static int a() {
        return 25;
    }

    public static long a(long j) {
        SecureRandom secureRandom = aj.a;
        secureRandom.setSeed(j);
        return secureRandom.nextLong();
    }
}
