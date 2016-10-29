package com.twitter.model.json.card;

import cgh;
import cgp;
import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.card.property.ImageSpec;
import com.twitter.model.json.common.f;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
/* compiled from: Twttr */
public class JsonBindingValue extends f<cgh> {
    @JsonField
    public ImageSpec a;
    @JsonField
    public cgp b;
    @JsonField
    public String c;
    @JsonField
    public Boolean d;
    @JsonField
    public String e;

    public /* synthetic */ Object b() {
        return a();
    }

    public cgh a() {
        cgh cgh = new cgh();
        if (this.a != null) {
            cgh.c = this.a;
        }
        if (this.b != null) {
            cgh.c = this.b;
        }
        if (this.c != null) {
            cgh.c = this.c;
        }
        if (this.d != null) {
            cgh.c = this.d;
        }
        cgh.d = this.e;
        if (cgh.c == null) {
            return null;
        }
        return cgh;
    }
}
