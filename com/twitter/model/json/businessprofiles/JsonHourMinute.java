package com.twitter.model.json.businessprofiles;

import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.businessprofiles.ab;
import com.twitter.model.json.common.f;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
/* compiled from: Twttr */
public class JsonHourMinute extends f<ab> {
    @JsonField
    public int a;
    @JsonField
    public int b;

    public /* synthetic */ Object b() {
        return a();
    }

    public ab a() {
        return new ab(this.a, this.b);
    }
}
