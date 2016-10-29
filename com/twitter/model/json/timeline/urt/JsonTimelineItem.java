package com.twitter.model.json.timeline.urt;

import cnt;
import cnw;
import cny;
import coi;
import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.twitter.model.json.common.b;

@JsonObject
/* compiled from: Twttr */
public class JsonTimelineItem extends b {
    @JsonField(name = {"content"})
    public JsonItemContent a;
    @JsonField(name = {"dismissInfo"})
    public cny b;
    @JsonField(name = {"clientEventInfo"})
    public cnw c;

    @JsonObject
    /* compiled from: Twttr */
    public class JsonItemContent extends b {
        @JsonField(name = {"tweet"})
        public coi a;
        @JsonField(name = {"conversationThread"})
        public cnt b;
    }
}
