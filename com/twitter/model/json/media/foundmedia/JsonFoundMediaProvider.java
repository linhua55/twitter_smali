package com.twitter.model.json.media.foundmedia;

import bbn;
import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.json.common.InvalidJsonFormatException;
import com.twitter.model.json.common.f;
import com.twitter.model.media.foundmedia.FoundMediaImageVariant;
import com.twitter.model.media.foundmedia.FoundMediaProvider;
import com.twitter.util.aj;
import java.util.List;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
/* compiled from: Twttr */
public class JsonFoundMediaProvider extends f<FoundMediaProvider> {
    @JsonField
    public String a;
    @JsonField
    public List<FoundMediaImageVariant> b;
    @JsonField
    public String c;

    public /* synthetic */ Object b() {
        return a();
    }

    public FoundMediaProvider a() {
        if (aj.a(this.c)) {
            bbn.a(new InvalidJsonFormatException("JsonFoundMediaProvider has no id"));
            return null;
        } else if (aj.a(this.a)) {
            bbn.a(new InvalidJsonFormatException("JsonFoundMediaProvider has no display name"));
            return null;
        } else if (this.b != null) {
            return new FoundMediaProvider(this.c, this.a, FoundMediaImageVariant.a(this.b));
        } else {
            bbn.a(new InvalidJsonFormatException("JsonFoundMediaProvider has no icon images"));
            return null;
        }
    }
}
