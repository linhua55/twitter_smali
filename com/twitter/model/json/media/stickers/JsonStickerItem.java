package com.twitter.model.json.media.stickers;

import bbn;
import cjw;
import ckr;
import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.json.common.InvalidJsonFormatException;
import com.twitter.model.json.common.f;
import com.twitter.util.collection.ImmutableList;
import com.twitter.util.collection.n;
import java.util.List;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
/* compiled from: Twttr */
public class JsonStickerItem extends f<ckr> {
    @JsonField
    public cjw a;
    @JsonField
    public List<cjw> b;

    public /* synthetic */ Object b() {
        return a();
    }

    public ckr a() {
        if (this.a == null) {
            bbn.a(new InvalidJsonFormatException("JsonStickerItem must contain a sticker"));
            return null;
        }
        if (this.b == null) {
            this.b = n.g();
        }
        return new ckr(this.a, ImmutableList.a(this.b));
    }
}
