package com.twitter.model.json.timeline;

import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.twitter.model.json.common.f;
import com.twitter.model.timeline.ag;
import com.twitter.model.timeline.ai;
import com.twitter.util.collection.CollectionUtils;
import java.util.List;

@JsonObject
/* compiled from: Twttr */
public class JsonRichTimelineResponseCursor extends f<ag> {
    @JsonField(name = {"top"})
    public String a;
    @JsonField(name = {"bottom"})
    public String b;
    @JsonField(name = {"gaps"})
    public List<String> c;

    public /* synthetic */ Object b() {
        return a();
    }

    public ag a() {
        return (ag) new ai().a(this.a).b(this.b).c((String) CollectionUtils.b(this.c)).q();
    }
}
