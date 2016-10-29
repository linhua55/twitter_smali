package com.twitter.model.json.core;

import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.core.am;
import com.twitter.model.json.common.f;
import com.twitter.util.aj;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
/* compiled from: Twttr */
public class JsonMediaVideoVariant extends f<am> {
    @JsonField
    public String a;
    @JsonField
    public String b;
    @JsonField
    public int c;

    public /* synthetic */ Object b() {
        return a();
    }

    public am a() {
        if (aj.b(this.a) && aj.b(this.b)) {
            return new am(this.a, this.b, this.c);
        }
        return null;
    }
}
