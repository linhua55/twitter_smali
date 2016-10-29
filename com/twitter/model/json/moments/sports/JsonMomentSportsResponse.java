package com.twitter.model.json.moments.sports;

import cll;
import clx;
import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.json.common.f;
import com.twitter.util.collection.n;
import java.util.List;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
/* compiled from: Twttr */
public class JsonMomentSportsResponse extends f<clx> {
    @JsonField
    public List<cll> a;

    public /* synthetic */ Object b() {
        return a();
    }

    public clx a() {
        return new clx(n.a(this.a));
    }
}
