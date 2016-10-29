package com.twitter.model.json.people;

import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.json.common.e;
import com.twitter.model.people.ModuleTitle;
import com.twitter.model.people.ModuleTitle.Icon;
import com.twitter.model.people.ae;
import com.twitter.util.object.f;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
/* compiled from: Twttr */
public class JsonModuleTitle extends e<ModuleTitle> {
    @JsonField
    public String a;
    @JsonField
    public Icon b;

    public /* synthetic */ f c() {
        return a();
    }

    public ae a() {
        return new ae().a(this.a).a(this.b);
    }
}
