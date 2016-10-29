package com.twitter.android.media.stickers;

import aov;
import cjw;
import com.twitter.util.collection.CollectionUtils;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* compiled from: Twttr */
class d implements aov<List<cjw>> {
    final /* synthetic */ StickerMediaView a;

    d(StickerMediaView stickerMediaView) {
        this.a = stickerMediaView;
    }

    public void a(List<cjw> list) {
        if (!CollectionUtils.b(list)) {
            Map hashMap = new HashMap(list.size());
            for (cjw cjw : list) {
                hashMap.put(Long.valueOf(cjw.h), cjw);
            }
            this.a.a(hashMap);
        }
        this.a.j = false;
    }
}
