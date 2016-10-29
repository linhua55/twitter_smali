package com.twitter.model.json.dms;

import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.dms.an;
import com.twitter.model.dms.ap;
import com.twitter.model.dms.aq;
import com.twitter.model.dms.ay;
import com.twitter.model.json.common.f;
import java.util.List;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
/* compiled from: Twttr */
public class JsonDeleteMessageEvent extends f<an> {
    @JsonField
    public long a;
    @JsonField(name = {"time"})
    public long b;
    @JsonField
    public String c;
    @JsonField
    public boolean d;
    @JsonField
    public String e;
    @JsonField
    public List<ay> f;

    public /* synthetic */ Object b() {
        return a();
    }

    public an a() {
        return (an) ((ap) ((ap) ((ap) ((aq) new aq().a(an.a(this.f))).b(this.a)).b(this.c)).c(this.b)).q();
    }
}
