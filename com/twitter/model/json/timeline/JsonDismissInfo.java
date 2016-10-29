package com.twitter.model.json.timeline;

import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.json.common.f;
import com.twitter.model.timeline.i;
import com.twitter.model.timeline.l;
import com.twitter.util.h;
import com.twitter.util.object.e;
import java.util.List;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
/* compiled from: Twttr */
public class JsonDismissInfo extends f<l> {
    @JsonField
    public i a;
    @JsonField
    public List<i> b;

    public /* synthetic */ Object b() {
        return a();
    }

    public l a() {
        h.b(this.a != null);
        if (this.a == null) {
            return null;
        }
        return l.a(this.a, e.a(this.b));
    }
}
