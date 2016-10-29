package com.twitter.model.json.revenue;

import cno;
import cnp;
import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.json.common.e;
import com.twitter.util.collection.n;
import com.twitter.util.object.f;
import java.util.List;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
/* compiled from: Twttr */
public class JsonAdMetadata extends e<cno> {
    @JsonField
    public long a;
    @JsonField
    public String b;
    @JsonField
    public List<Long> c;
    @JsonField
    public String d;
    @JsonField
    public long e;
    @JsonField
    public long f;

    public /* synthetic */ f c() {
        return a();
    }

    public cnp a() {
        cnp c = new cnp().a(this.a).a(this.b).b(this.d).b(this.e).c(this.f);
        if ("tweet".equals(this.b)) {
            c.a(n.b(Long.valueOf(this.a)));
        } else if ("carousel".equals(this.b)) {
            c.a(this.c);
        }
        return c;
    }
}
