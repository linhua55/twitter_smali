package com.twitter.model.json.media.stickers;

import bbn;
import ckb;
import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.json.common.InvalidJsonFormatException;
import com.twitter.model.json.common.f;
import com.twitter.util.aj;
import com.twitter.util.math.Size;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
/* compiled from: Twttr */
public class JsonStickerImage extends f<ckb> {
    @JsonField
    public int a;
    @JsonField
    public int b;
    @JsonField
    public long c;
    @JsonField
    public String d;
    @JsonField
    public String e;

    public /* synthetic */ Object b() {
        return a();
    }

    public ckb a() {
        if (this.a <= 0 && !aj.a(this.e, "svg")) {
            bbn.a(new InvalidJsonFormatException("JsonStickerImage must have a height > 0"));
            return null;
        } else if (this.b <= 0 && !aj.a(this.e, "svg")) {
            bbn.a(new InvalidJsonFormatException("JsonStickerImage must have a width > 0"));
            return null;
        } else if (this.c <= 0) {
            bbn.a(new InvalidJsonFormatException("JsonStickerImage must have a byteCount > 0"));
            return null;
        } else if (aj.a(this.d)) {
            bbn.a(new InvalidJsonFormatException("JsonStickerImage must have a url"));
            return null;
        } else if (!aj.a(this.e)) {
            return new ckb(Size.a(this.b, this.a), this.d, this.e);
        } else {
            bbn.a(new InvalidJsonFormatException("JsonStickerImage must have a type"));
            return null;
        }
    }
}
