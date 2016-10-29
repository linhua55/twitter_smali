package com.twitter.model.json.card;

import bbn;
import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.card.property.ImageSpec;
import com.twitter.model.json.common.f;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
/* compiled from: Twttr */
public class JsonImageSpec extends f<ImageSpec> {
    @JsonField
    public String a;
    @JsonField
    public float b;
    @JsonField
    public float c;
    @JsonField(name = {"alt"})
    public String d;

    public /* synthetic */ Object b() {
        return a();
    }

    public ImageSpec a() {
        try {
            if (this.a == null) {
                return null;
            }
            ImageSpec imageSpec = new ImageSpec(this.c, this.b);
            imageSpec.c = a.a(this.a);
            imageSpec.e = this.d;
            return imageSpec;
        } catch (Throwable e) {
            bbn.a(e);
            return null;
        }
    }
}
