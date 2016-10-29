package com.twitter.model.json.media.foundmedia;

import bbn;
import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.json.common.InvalidJsonFormatException;
import com.twitter.model.json.common.f;
import com.twitter.model.media.foundmedia.FoundMediaImageVariant;
import com.twitter.util.math.Size;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
/* compiled from: Twttr */
public class JsonFoundMediaImageVariant extends f<FoundMediaImageVariant> {
    @JsonField
    public String a;
    @JsonField
    public String b;
    @JsonField
    public int c;
    @JsonField
    public int d;
    @JsonField
    public int e;

    public /* synthetic */ Object b() {
        return a();
    }

    public FoundMediaImageVariant a() {
        if (this.a != null && !this.a.isEmpty()) {
            return new FoundMediaImageVariant(this.a, Size.a(this.c, this.d), this.e, this.b);
        }
        bbn.a(new InvalidJsonFormatException("JsonFoundMediaImageVariant has no url"));
        return null;
    }
}
