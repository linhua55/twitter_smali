package com.twitter.library.media.util;

import com.twitter.media.request.d;
import com.twitter.util.math.Size;
import java.util.List;

/* compiled from: Twttr */
final class ae extends d {
    ae() {
    }

    public List<String> a(String str, Size size) {
        return TweetImageVariant.a(str, size);
    }

    public String a(String str) {
        return TweetImageVariant.a(str);
    }
}
