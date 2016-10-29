package com.twitter.model.json.media.stickers;

import bbn;
import cko;
import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.json.common.InvalidJsonFormatException;
import com.twitter.model.json.common.f;
import com.twitter.util.aj;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
/* compiled from: Twttr */
public class JsonStickerAuthor extends f<cko> {
    @JsonField
    public long a;
    @JsonField
    public String b;
    @JsonField
    public String c;
    @JsonField
    public boolean d;

    public /* synthetic */ Object b() {
        return a();
    }

    public cko a() {
        if (this.a == 0) {
            bbn.a(new InvalidJsonFormatException("JsonStickerAuthor must have an id"));
            return null;
        } else if (aj.a(this.b)) {
            bbn.a(new InvalidJsonFormatException("JsonStickerAuthor must have a name"));
            return null;
        } else if (!aj.a(this.c)) {
            return new cko(this.a, this.b, this.c, this.d);
        } else {
            bbn.a(new InvalidJsonFormatException("JsonStickerAuthor must have a screen name"));
            return null;
        }
    }
}
