package com.twitter.model.json.stratostore;

import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.core.ad;
import com.twitter.model.json.common.f;
import com.twitter.model.stratostore.b;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.FIELD_NAME)
/* compiled from: Twttr */
public class JsonMediaEntityRestrictions extends f<b> {
    @JsonField
    public boolean a;

    public /* synthetic */ Object b() {
        return a();
    }

    public b a() {
        return new b(new ad(this.a));
    }
}
