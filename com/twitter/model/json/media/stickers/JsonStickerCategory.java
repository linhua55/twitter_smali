package com.twitter.model.json.media.stickers;

import bbn;
import ckb;
import ckp;
import ckr;
import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.json.common.InvalidJsonFormatException;
import com.twitter.model.json.common.f;
import com.twitter.util.aj;
import com.twitter.util.collection.ImmutableList;
import java.util.List;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
/* compiled from: Twttr */
public class JsonStickerCategory extends f<ckp> {
    @JsonField
    public long a;
    @JsonField
    public String b;
    @JsonField
    public ckb c;
    @JsonField
    public long d;
    @JsonField
    public List<ckr> e;
    @JsonField
    public String f;

    public /* synthetic */ Object b() {
        return a();
    }

    public ckp a() {
        if (this.a == 0) {
            bbn.a(new InvalidJsonFormatException("JsonStickerCategory must have an annotation id"));
            return null;
        } else if (this.d == 0) {
            bbn.a(new InvalidJsonFormatException("JsonStickerCategory must have an id"));
            return null;
        } else {
            if (aj.a(this.b)) {
                this.b = "";
            }
            return new ckp(this.d, this.a, ImmutableList.a(this.e), this.b, this.c, 0, "promoted".equals(this.f));
        }
    }
}
