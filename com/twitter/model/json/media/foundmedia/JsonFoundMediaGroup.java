package com.twitter.model.json.media.foundmedia;

import bbn;
import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.json.common.InvalidJsonFormatException;
import com.twitter.model.json.common.f;
import com.twitter.model.media.foundmedia.FoundMediaImageVariant;
import com.twitter.model.media.foundmedia.c;
import com.twitter.util.aj;
import com.twitter.util.collection.CollectionUtils;
import java.util.List;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
/* compiled from: Twttr */
public class JsonFoundMediaGroup extends f<c> {
    @JsonField
    public String a;
    @JsonField
    public String b;
    @JsonField
    public List<FoundMediaImageVariant> c;
    @JsonField
    public FoundMediaImageVariant d;

    public /* synthetic */ Object b() {
        return a();
    }

    public c a() {
        if (aj.a(this.a)) {
            bbn.a(new InvalidJsonFormatException("JsonFoundMediaGroup has no display name"));
            return null;
        } else if (aj.a(this.b)) {
            bbn.a(new InvalidJsonFormatException("JsonFoundMediaGroup has no id"));
            return null;
        } else if (CollectionUtils.b(this.c)) {
            bbn.a(new InvalidJsonFormatException("JsonFoundMediaGroup has no thumbnail images"));
            return null;
        } else if (this.d != null) {
            return new c(this.a, this.b, FoundMediaImageVariant.a(this.c), this.d);
        } else {
            bbn.a(new InvalidJsonFormatException("JsonFoundMediaGroup has no original image"));
            return null;
        }
    }
}
