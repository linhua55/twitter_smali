package com.twitter.model.json.timeline;

import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.twitter.model.json.common.e;
import com.twitter.model.timeline.aj;
import com.twitter.model.timeline.al;
import com.twitter.util.object.f;

@JsonObject
/* compiled from: Twttr */
public class JsonScribeInfo extends e<aj> {
    @JsonField(name = {"suggestion_type"})
    public String a;
    @JsonField(name = {"controller_data"})
    public String b;
    @JsonField(name = {"source_data"})
    public String c;
    @JsonField(name = {"scribe_component"})
    public String d;
    @JsonField(name = {"type_id"})
    public String e;

    public /* synthetic */ f c() {
        return a();
    }

    public al a() {
        return new al().a(this.a).b(this.b).d(this.c).c(this.d).e(this.e);
    }
}
