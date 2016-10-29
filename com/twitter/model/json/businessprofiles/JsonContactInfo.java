package com.twitter.model.json.businessprofiles;

import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.google.i18n.phonenumbers.Phonenumber.PhoneNumber;
import com.twitter.model.businessprofiles.a;
import com.twitter.model.businessprofiles.x;
import com.twitter.model.businessprofiles.z;
import com.twitter.model.json.common.e;
import com.twitter.util.object.f;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
/* compiled from: Twttr */
public class JsonContactInfo extends e<x> {
    @JsonField
    public a a;
    @JsonField
    public PhoneNumber b;

    public /* synthetic */ f c() {
        return a();
    }

    public z a() {
        return new z().a(this.a).a(this.b);
    }
}
