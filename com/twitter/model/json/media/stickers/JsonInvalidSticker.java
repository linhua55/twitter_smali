package com.twitter.model.json.media.stickers;

import bbn;
import cjq;
import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.json.common.InvalidJsonFormatException;
import com.twitter.model.json.common.f;
import com.twitter.util.object.e;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
/* compiled from: Twttr */
public class JsonInvalidSticker extends f<cjq> {
    @JsonField
    public String a;
    @JsonField
    public long b;

    public /* synthetic */ Object b() {
        return a();
    }

    public cjq a() {
        if (this.b != 0) {
            return new cjq(this.b, e.b(this.a));
        }
        bbn.a(new InvalidJsonFormatException("JsonInvalidStickers must have a sticker id"));
        return null;
    }
}
