package com.twitter.model.json.timeline.urt;

import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.twitter.model.json.common.f;
import com.twitter.model.timeline.aa;

@JsonObject
/* compiled from: Twttr */
public class JsonTimelineRequestCursor extends f<aa> {
    @JsonField(name = {"value"})
    public String a;
    @JsonField(name = {"cursorType"}, typeConverter = a.class)
    public int b;

    public /* synthetic */ Object b() {
        return a();
    }

    public aa a() {
        if (this.b == -1) {
            return null;
        }
        return new aa(this.a, this.b);
    }
}
