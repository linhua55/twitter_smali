package com.twitter.model.json.login;

import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.twitter.model.json.common.f;
import com.twitter.model.login.a;
import com.twitter.util.aj;

@JsonObject
/* compiled from: Twttr */
public class JsonOneFactorAuthResponse extends f<a> {
    @JsonField(name = {"login_verification_request_id"})
    public String a;
    @JsonField(name = {"login_verification_request_type"})
    public int b;
    @JsonField(name = {"login_verification_request_cause"})
    public int c;

    public /* synthetic */ Object b() {
        return a();
    }

    public a a() {
        if (aj.b(this.a)) {
            return new a(this.a, this.b, this.c);
        }
        return null;
    }
}
