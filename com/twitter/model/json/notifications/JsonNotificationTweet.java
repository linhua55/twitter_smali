package com.twitter.model.json.notifications;

import bbn;
import cmq;
import cms;
import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.core.ap;
import com.twitter.model.core.j;
import com.twitter.model.json.common.InvalidJsonFormatException;
import com.twitter.model.json.common.f;
import com.twitter.util.aj;
import java.util.List;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
/* compiled from: Twttr */
public class JsonNotificationTweet extends f<cmq> {
    @JsonField
    public long a;
    @JsonField
    public long b;
    @JsonField
    public long c;
    @JsonField
    public String d;
    @JsonField
    public String e;
    @JsonField
    public boolean f;
    @JsonField
    public List<ap> g;

    public /* synthetic */ Object b() {
        return a();
    }

    public cmq a() {
        if (this.a == 0) {
            bbn.a(new InvalidJsonFormatException("Missing id"));
            return null;
        } else if (this.c == 0) {
            bbn.a(new InvalidJsonFormatException("Missing created_at"));
            return null;
        } else if (!aj.a(this.d)) {
            return (cmq) new cms().a(this.a).b(this.b).c(this.c).a(this.d).b(this.e).a(this.f).a(j.a(this.g)).q();
        } else {
            bbn.a(new InvalidJsonFormatException("Missing text"));
            return null;
        }
    }
}
