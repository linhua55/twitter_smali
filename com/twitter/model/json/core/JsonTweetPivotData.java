package com.twitter.model.json.core;

import bbn;
import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.core.bt;
import com.twitter.model.json.common.InvalidJsonFormatException;
import com.twitter.model.json.common.f;
import com.twitter.util.aj;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
/* compiled from: Twttr */
public class JsonTweetPivotData extends f<bt> {
    @JsonField
    public String a;
    @JsonField
    public String b;
    @JsonField
    public double c;

    public /* synthetic */ Object b() {
        return a();
    }

    public bt a() {
        if (aj.a(this.a)) {
            bbn.a(new InvalidJsonFormatException("TweetPivotData missing name"));
            return null;
        } else if (!aj.a(this.b)) {
            return new bt(this.a, this.b, this.c);
        } else {
            bbn.a(new InvalidJsonFormatException("TweetPivotData missing url"));
            return null;
        }
    }
}
