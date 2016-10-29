package com.twitter.model.json.people;

import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.json.common.e;
import com.twitter.model.people.ModuleTitle;
import com.twitter.model.people.aj;
import com.twitter.model.people.h;
import com.twitter.model.people.l;
import com.twitter.model.people.n;
import com.twitter.util.object.f;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
/* compiled from: Twttr */
public class JsonModuleHeader extends e<l> {
    @JsonField
    public ModuleTitle a;
    @JsonField
    public ModuleTitle b;
    @JsonField
    public aj c;
    @JsonField
    public h d;

    public /* synthetic */ f c() {
        return a();
    }

    public n a() {
        return new n().a(this.a).b(this.b).a(this.c).a(this.d);
    }
}
