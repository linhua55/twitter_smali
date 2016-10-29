package com.twitter.library.media.util;

import com.twitter.media.request.d;
import com.twitter.util.collection.CollectionUtils;
import com.twitter.util.math.Size;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
final class n extends d {
    n() {
    }

    public List<String> a(String str, Size size) {
        List<String> arrayList = new ArrayList(3);
        if (size.c()) {
            arrayList.add(str + HeaderImageVariant.i.postfix);
        } else {
            float e = size.e();
            for (HeaderImageVariant headerImageVariant : HeaderImageVariant.values()) {
                if (e <= headerImageVariant.maxAspectRatio && headerImageVariant.maxSize.b(size)) {
                    arrayList.add(str + headerImageVariant.postfix);
                }
            }
            if (CollectionUtils.b(arrayList)) {
                arrayList.add(str + (e <= 2.5f ? HeaderImageVariant.f.postfix : HeaderImageVariant.i.postfix));
            }
        }
        return arrayList;
    }
}
