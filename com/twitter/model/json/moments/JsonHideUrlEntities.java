package com.twitter.model.json.moments;

import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.json.common.f;
import com.twitter.model.moments.u;
import java.util.List;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
/* compiled from: Twttr */
public class JsonHideUrlEntities extends f<u> {
    @JsonField
    public List<Integer> a;

    public /* synthetic */ Object b() {
        return a();
    }

    public u a() {
        if (this.a.size() != 2) {
            return null;
        }
        Integer num = (Integer) this.a.get(0);
        Integer num2 = (Integer) this.a.get(1);
        if (num == null || num2 == null) {
            return null;
        }
        return new u(num.intValue(), num2.intValue());
    }
}
