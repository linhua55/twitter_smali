package com.twitter.model.json.people;

import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.json.common.f;
import com.twitter.model.people.aj;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
/* compiled from: Twttr */
public class JsonPivotAction extends f<aj> {
    @JsonField
    public String a;
    @JsonField
    public String b;

    public /* synthetic */ Object b() {
        return a();
    }

    public aj a() {
        return new aj(this.a, this.b);
    }
}
