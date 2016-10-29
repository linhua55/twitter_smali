package com.twitter.model.json.dms;

import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.dms.ab;
import com.twitter.model.dms.ac;
import com.twitter.model.json.common.e;
import com.twitter.util.object.f;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
/* compiled from: Twttr */
public class JsonPartialDMAttachment extends e<ab> {
    @JsonField(typeConverter = e.class)
    public int a;
    @JsonField
    public String b;

    public /* synthetic */ f c() {
        return a();
    }

    public ac a() {
        return (ac) new ac().c(this.a).a(this.b);
    }
}
