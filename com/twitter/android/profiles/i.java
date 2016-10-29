package com.twitter.android.profiles;

import com.twitter.library.media.util.HeaderImageVariant;
import com.twitter.media.request.a;
import com.twitter.media.request.b;

/* compiled from: Twttr */
public class i {
    public static b a(String str) {
        return a.a(str).a(HeaderImageVariant.j);
    }

    public static b a(ao aoVar) {
        if (aoVar.g()) {
            return (b) a.a(aoVar.f()).g(true);
        }
        return a(aoVar.f());
    }
}
