package com.twitter.model.json.notifications;

import bbn;
import cmu;
import cmw;
import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.json.common.InvalidJsonFormatException;
import com.twitter.model.json.common.f;
import com.twitter.util.aj;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
/* compiled from: Twttr */
public class JsonNotificationUser extends f<cmu> {
    @JsonField
    public long a;
    @JsonField
    public String b;
    @JsonField
    public String c;
    @JsonField
    public String d;
    @JsonField
    public String e;
    @JsonField
    public String f;
    @JsonField(name = {"protected"})
    public boolean g;
    @JsonField(name = {"following"})
    public boolean h;

    public /* synthetic */ Object b() {
        return a();
    }

    public cmu a() {
        if (this.a == 0) {
            bbn.a(new InvalidJsonFormatException("Missing id"));
            return null;
        } else if (!aj.a(this.b)) {
            return (cmu) new cmw().a(this.a).a(this.b).b(this.c).c(this.d).d(this.e).e(this.f).a(this.g).b(this.h).q();
        } else {
            bbn.a(new InvalidJsonFormatException("Missing screen_name"));
            return null;
        }
    }
}
