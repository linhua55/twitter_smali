package com.twitter.model.json.timeline.urt;

import bbn;
import coi;
import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.twitter.model.json.common.f;

@JsonObject
/* compiled from: Twttr */
public class JsonTimelineTweet extends f<coi> {
    @JsonField(name = {"id"})
    public String a;
    @JsonField(name = {"displayType"})
    public String b;

    public /* synthetic */ Object b() {
        return a();
    }

    public coi a() {
        if (this.a != null && coi.a.contains(this.b)) {
            return new coi(this.a, this.b, null, null);
        }
        bbn.a(new IllegalStateException(String.format("A JsonTimelineTweet must have a non-null IDand a valid display type. ID: %s, DisplayType: %s", new Object[]{this.a, this.b})));
        return null;
    }
}
