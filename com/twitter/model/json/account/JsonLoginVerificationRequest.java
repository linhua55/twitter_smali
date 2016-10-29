package com.twitter.model.json.account;

import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.account.LoginVerificationRequest;
import com.twitter.model.json.common.f;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.FIELD_NAME)
/* compiled from: Twttr */
public class JsonLoginVerificationRequest extends f<LoginVerificationRequest> {
    @JsonField
    public String a;
    @JsonField
    public String b;
    @JsonField
    public String c;
    @JsonField
    public String d;
    @JsonField(name = {"createdAt"})
    public long e;

    public /* synthetic */ Object b() {
        return a();
    }

    public LoginVerificationRequest a() {
        return new LoginVerificationRequest(this.a, this.b, this.c, this.d, this.e);
    }
}
