package com.twitter.model.json.stratostore;

import cjs;
import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.json.common.f;
import com.twitter.model.json.media.stickers.JsonStickerInfo;
import com.twitter.model.stratostore.c;
import com.twitter.util.collection.n;
import java.util.List;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.FIELD_NAME)
/* compiled from: Twttr */
public class JsonStickerInfoMetadata extends f<c> {
    @JsonField(name = {"stickers"})
    public JsonStickerInfo[] a;

    public /* synthetic */ Object b() {
        return c();
    }

    public List<cjs> a() {
        n d = n.d();
        for (JsonStickerInfo jsonStickerInfo : this.a) {
            long j = jsonStickerInfo.a;
            if (j > 0) {
                d.c(new cjs(j, jsonStickerInfo.b, jsonStickerInfo.f, jsonStickerInfo.g, jsonStickerInfo.h, jsonStickerInfo.i, jsonStickerInfo.j, jsonStickerInfo.k, jsonStickerInfo.l, jsonStickerInfo.c, jsonStickerInfo.d, jsonStickerInfo.e));
            }
        }
        return (List) d.q();
    }

    public c c() {
        return new c(a());
    }
}
