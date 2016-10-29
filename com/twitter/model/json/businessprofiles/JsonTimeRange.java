package com.twitter.model.json.businessprofiles;

import bbn;
import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.businessprofiles.an;
import com.twitter.model.json.common.InvalidJsonFormatException;
import com.twitter.model.json.common.f;
import com.twitter.util.m;
import java.text.ParseException;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
/* compiled from: Twttr */
public class JsonTimeRange extends f<an> {
    @JsonField
    public String a;
    @JsonField
    public String b;

    public /* synthetic */ Object b() {
        return a();
    }

    public an a() {
        try {
            if (this.a == null || this.b == null) {
                return null;
            }
            return new an(m.b.parse(this.a), m.b.parse(this.b));
        } catch (ParseException e) {
            bbn.a(new InvalidJsonFormatException("Invalid time range dates"));
            return null;
        }
    }
}
