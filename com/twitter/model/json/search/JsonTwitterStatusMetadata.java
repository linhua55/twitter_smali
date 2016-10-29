package com.twitter.model.json.search;

import android.text.TextUtils;
import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.core.TwitterSocialProof;
import com.twitter.model.json.common.e;
import com.twitter.model.search.a;
import com.twitter.model.search.g;
import com.twitter.model.search.p;
import com.twitter.model.search.q;
import com.twitter.util.collection.ImmutableList;
import com.twitter.util.object.f;
import java.util.List;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
/* compiled from: Twttr */
public class JsonTwitterStatusMetadata extends e<p> {
    @JsonField
    public String a;
    @JsonField
    public String b;
    @JsonField
    public boolean c;
    @JsonField
    public boolean d;
    @JsonField
    public List<a> e;
    @JsonField
    public JsonSearchSocialProof f;
    @JsonField
    public JsonSearchHighlightContext g;
    @JsonField
    public JsonTwitterStatusReason h;
    @JsonField
    public JsonHighlightTimeRange i;

    public /* synthetic */ f c() {
        return a();
    }

    public q a() {
        TwitterSocialProof twitterSocialProof;
        q c = new q().a(this.a).a(this.c).b(this.d).a(ImmutableList.a(this.e)).b(this.h != null ? this.h.a : null).c(this.h != null ? this.h.b : null);
        if (this.f != null) {
            twitterSocialProof = (TwitterSocialProof) this.f.b();
        } else {
            twitterSocialProof = null;
        }
        if (this.g != null) {
            twitterSocialProof = (TwitterSocialProof) this.g.b();
        }
        c.a(twitterSocialProof);
        JsonHighlightTimeRange jsonHighlightTimeRange = this.i;
        if (!(TextUtils.isEmpty(this.b) || jsonHighlightTimeRange == null || jsonHighlightTimeRange.a == 0 || jsonHighlightTimeRange.b == 0)) {
            c.a(new g(this.b, jsonHighlightTimeRange.a, jsonHighlightTimeRange.b));
        }
        return c;
    }
}
