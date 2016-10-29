package com.twitter.model.json.account;

import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.account.LoginResponse;
import com.twitter.model.json.common.f;
import com.twitter.util.aj;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
/* compiled from: Twttr */
public class JsonLoginResponse extends f<LoginResponse> {
    @JsonField
    public String a;
    @JsonField
    public String b;
    @JsonField(name = {"login_verification_request_id"})
    public String c;
    @JsonField(name = {"login_verification_request_url"})
    public String d;
    @JsonField
    public String e;
    @JsonField(name = {"login_verification_user_id"})
    public long f;
    @JsonField(name = {"login_verification_request_type"})
    public int g;
    @JsonField(name = {"login_verification_request_cause"})
    public int h;

    public /* synthetic */ Object b() {
        return a();
    }

    public LoginResponse a() {
        if (aj.b(this.a)) {
            return new LoginResponse(1, this.a, this.b, this.e);
        }
        return new LoginResponse(2, this.f, this.c, this.g, this.d, this.h);
    }
}
