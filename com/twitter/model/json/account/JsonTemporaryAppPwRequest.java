package com.twitter.model.json.account;

import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.account.h;
import com.twitter.model.json.common.f;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
/* compiled from: Twttr */
public class JsonTemporaryAppPwRequest extends f<h> {
    @JsonField(name = {"temporary_password"})
    public String a;

    public /* synthetic */ Object b() {
        return a();
    }

    public h a() {
        return new h(this.a);
    }
}
