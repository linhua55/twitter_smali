package com.twitter.model.json.timeline.wtf;

import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.twitter.model.json.common.b;

@JsonObject
/* compiled from: Twttr */
public class JsonSocialProof extends b {
    @JsonField(name = {"proof_type"})
    public com.twitter.model.json.core.b a;
    @JsonField(name = {"users"})
    public String[] b;
}
