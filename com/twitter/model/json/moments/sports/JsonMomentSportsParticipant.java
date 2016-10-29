package com.twitter.model.json.moments.sports;

import clr;
import clt;
import clu;
import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.twitter.model.json.common.e;
import com.twitter.model.json.common.f;

@JsonObject
/* compiled from: Twttr */
public class JsonMomentSportsParticipant extends e<clr> {
    @JsonField
    public clu a;
    @JsonField
    public String b;
    @JsonField
    public long c;

    @JsonObject
    /* compiled from: Twttr */
    public class JsonParticipantMedia extends f<clu> {
        @JsonField
        public String a;

        public /* synthetic */ Object b() {
            return a();
        }

        public clu a() {
            return new clu(this.a);
        }
    }

    public /* synthetic */ com.twitter.util.object.f c() {
        return a();
    }

    public clt a() {
        return new clt().a(this.a).a(this.b).a(this.c);
    }
}
