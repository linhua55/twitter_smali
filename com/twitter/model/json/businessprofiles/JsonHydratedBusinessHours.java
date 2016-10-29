package com.twitter.model.json.businessprofiles;

import bbn;
import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.businessprofiles.ag;
import com.twitter.model.businessprofiles.an;
import com.twitter.model.businessprofiles.i;
import com.twitter.model.json.common.InvalidJsonFormatException;
import com.twitter.model.json.common.f;
import java.util.List;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
/* compiled from: Twttr */
public class JsonHydratedBusinessHours extends f<ag> {
    @JsonField
    public i a;
    @JsonField
    public List<an> b;
    @JsonField
    public boolean c;

    public /* synthetic */ Object b() {
        return a();
    }

    public ag a() {
        if (this.a != null) {
            return new ag(this.a, this.b, this.c);
        }
        bbn.a(new InvalidJsonFormatException("HydratedBusinessHours missing hours"));
        return null;
    }
}
