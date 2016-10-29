package com.twitter.model.json.media.stickers;

import bbn;
import ckb;
import ckl;
import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.json.common.InvalidJsonFormatException;
import com.twitter.model.json.common.f;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
/* compiled from: Twttr */
public class JsonStickerVariants extends f<ckl> {
    @JsonField
    public ckb a;
    @JsonField(name = {"size_1x"})
    public ckb b;
    @JsonField(name = {"size_2x"})
    public ckb c;
    @JsonField(name = {"size_3x"})
    public ckb d;
    @JsonField(name = {"size_4x"})
    public ckb e;
    @JsonField
    public float f;

    public /* synthetic */ Object b() {
        return a();
    }

    public ckl a() {
        if (this.a == null) {
            bbn.a(new InvalidJsonFormatException("JsonStickerVariants must include a raw size"));
            return null;
        } else if (this.f != 0.0f) {
            return new ckl(this.a, this.b, this.c, this.d, this.e, this.f);
        } else {
            bbn.a(new InvalidJsonFormatException("JsonStickerVariants must include an aspect ratio"));
            return null;
        }
    }
}
