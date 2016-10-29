package com.twitter.model.json.media.stickers;

import cjw;
import cke;
import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.twitter.model.json.common.f;
import com.twitter.util.collection.ImmutableList;
import java.util.List;

@JsonObject
/* compiled from: Twttr */
public class JsonStickerResponse extends f<cke> {
    @JsonField
    public List<cjw> a;

    public /* synthetic */ Object b() {
        return a();
    }

    public cke a() {
        return new cke(ImmutableList.a(this.a));
    }
}
