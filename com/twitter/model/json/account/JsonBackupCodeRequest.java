package com.twitter.model.json.account;

import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.account.a;
import com.twitter.model.json.common.f;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
/* compiled from: Twttr */
public class JsonBackupCodeRequest extends f<a> {
    @JsonField(name = {"codes"})
    public String[] a;

    public /* synthetic */ Object b() {
        return a();
    }

    public a a() {
        return new a(this.a);
    }
}
