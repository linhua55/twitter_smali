package com.twitter.model.json.businessprofiles;

import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.google.i18n.phonenumbers.Phonenumber.PhoneNumber;
import com.twitter.model.json.common.f;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
/* compiled from: Twttr */
public class JsonPhoneNumber extends f<PhoneNumber> {
    @JsonField
    public int a;
    @JsonField
    public long b;

    public /* synthetic */ Object b() {
        return a();
    }

    public PhoneNumber a() {
        PhoneNumber phoneNumber = new PhoneNumber();
        phoneNumber.a(this.a);
        phoneNumber.a(this.b);
        return phoneNumber;
    }
}
