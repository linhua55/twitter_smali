package com.twitter.model.json.timeline;

import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.json.common.f;
import com.twitter.model.timeline.i;
import com.twitter.util.aj;
import com.twitter.util.h;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
/* compiled from: Twttr */
public class JsonFeedbackAction extends f<i> {
    @JsonField
    public String a;
    @JsonField
    public String b;
    @JsonField
    public String c;

    public /* synthetic */ Object b() {
        return a();
    }

    public i a() {
        h.b(aj.b(this.a));
        if (aj.a(this.a)) {
            return null;
        }
        return i.a(this.a, this.b, this.c);
    }
}
