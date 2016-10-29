package com.twitter.model.json.timeline;

import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.twitter.model.json.common.b;
import com.twitter.model.timeline.aj;
import java.util.Map;

@JsonObject
/* compiled from: Twttr */
public class JsonSuggestsInfo extends b {
    @JsonField(name = {"module"})
    public aj a;
    @JsonField(name = {"tweets"})
    public Map<String, aj> b;
    @JsonField(name = {"users"})
    public Map<String, aj> c;
    @JsonField(name = {"moments"})
    public Map<String, aj> d;
}
