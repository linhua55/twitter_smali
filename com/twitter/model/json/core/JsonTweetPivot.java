package com.twitter.model.json.core;

import bbn;
import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.core.EscherbirdAnnotation;
import com.twitter.model.core.bp;
import com.twitter.model.core.bt;
import com.twitter.model.json.common.InvalidJsonFormatException;
import com.twitter.model.json.common.f;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
/* compiled from: Twttr */
public class JsonTweetPivot extends f<bp> {
    @JsonField
    public EscherbirdAnnotation a;
    @JsonField
    public bt b;

    public /* synthetic */ Object b() {
        return a();
    }

    public bp a() {
        if (this.a == null) {
            bbn.a(new InvalidJsonFormatException("TweetPivot missing annotation"));
            return null;
        } else if (this.b != null) {
            return new bp(this.a, this.b);
        } else {
            bbn.a(new InvalidJsonFormatException("TweetPivot missing data"));
            return null;
        }
    }
}
