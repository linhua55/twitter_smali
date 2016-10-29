package com.twitter.model.json.media.foundmedia;

import bbn;
import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.json.common.InvalidJsonFormatException;
import com.twitter.model.json.common.f;
import com.twitter.model.media.foundmedia.FoundMediaImageVariant;
import com.twitter.model.media.foundmedia.FoundMediaOrigin;
import com.twitter.model.media.foundmedia.FoundMediaProvider;
import com.twitter.util.aj;
import com.twitter.util.collection.CollectionUtils;
import java.util.List;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
/* compiled from: Twttr */
public class JsonFoundMediaItem extends f<com.twitter.model.media.foundmedia.f> {
    @JsonField
    public FoundMediaProvider a;
    @JsonField
    public String b;
    @JsonField
    public String c;
    @JsonField
    public FoundMediaOrigin d;
    @JsonField
    public String e;
    @JsonField
    public List<FoundMediaImageVariant> f;
    @JsonField
    public FoundMediaImageVariant g;

    public /* synthetic */ Object b() {
        return a();
    }

    public com.twitter.model.media.foundmedia.f a() {
        if (this.a == null) {
            bbn.a(new InvalidJsonFormatException("JsonFoundMediaItem has no provider"));
            return null;
        } else if (aj.a(this.b)) {
            bbn.a(new InvalidJsonFormatException("JsonFoundMediaItem has no item type"));
            return null;
        } else if (aj.a(this.c)) {
            bbn.a(new InvalidJsonFormatException("JsonFoundMediaItem has no id"));
            return null;
        } else if (this.d == null) {
            bbn.a(new InvalidJsonFormatException("JsonFoundMediaItem has no foundMediaOrigin"));
            return null;
        } else if (aj.a(this.e)) {
            bbn.a(new InvalidJsonFormatException("JsonFoundMediaItem has no url"));
            return null;
        } else if (CollectionUtils.b(this.f)) {
            bbn.a(new InvalidJsonFormatException("JsonFoundMediaItem has no thumbnail images"));
            return null;
        } else if (this.g == null) {
            bbn.a(new InvalidJsonFormatException("JsonFoundMediaItem has no original image"));
            return null;
        } else {
            return new com.twitter.model.media.foundmedia.f(this.a, this.b, this.c, this.d, this.e, FoundMediaImageVariant.a(this.f), this.g);
        }
    }
}
