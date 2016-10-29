package com.twitter.model.json.timeline;

import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.json.common.b;
import com.twitter.model.timeline.aj;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
/* compiled from: Twttr */
public class JsonTimelineMessage extends b {
    @JsonField
    public aj a;
    @JsonField
    public boolean b;
    @JsonField
    public JsonInlinePromptTwoActions c;
    @JsonField
    public JsonInlinePrompt d;
}
