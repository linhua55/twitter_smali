package com.twitter.model.json.dms;

import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.dms.ad;
import com.twitter.model.json.common.f;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
/* compiled from: Twttr */
public class JsonDMPermission extends f<ad> {
    @JsonField
    public boolean a;
    @JsonField
    public boolean b;
    @JsonField
    public int c;

    public /* synthetic */ Object b() {
        return a();
    }

    public ad a() {
        return new ad(this.a, this.b, this.c);
    }
}
