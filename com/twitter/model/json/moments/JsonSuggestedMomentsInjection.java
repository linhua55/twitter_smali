package com.twitter.model.json.moments;

import clf;
import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.bluelinelabs.logansquare.annotation.JsonObject.FieldNamingPolicy;
import com.twitter.model.json.common.e;
import com.twitter.model.json.common.j;
import com.twitter.model.json.timeline.JsonStrings;
import com.twitter.model.json.timeline.JsonSuggestsInfo;
import com.twitter.model.moments.ab;
import com.twitter.model.moments.an;
import com.twitter.model.moments.ap;
import com.twitter.model.moments.aq;
import com.twitter.model.moments.as;
import com.twitter.model.timeline.aj;
import com.twitter.model.timeline.l;
import com.twitter.util.collection.n;
import com.twitter.util.collection.r;
import com.twitter.util.object.f;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

@JsonObject(fieldNamingPolicy = FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
/* compiled from: Twttr */
public class JsonSuggestedMomentsInjection extends e<an> {
    @JsonField
    public List<Long> a;
    @JsonField
    public String b;
    @JsonField
    public JsonSuggestsInfo c;
    @JsonField
    public Map<String, JsonMomentModule> d;
    @JsonField
    public l e;
    @JsonField
    public JsonStrings f;
    @JsonField
    public long g;

    public /* synthetic */ f c() {
        return a();
    }

    public ap a() {
        aj ajVar = null;
        String str = this.f != null ? this.f.a : null;
        if (this.c != null) {
            ajVar = this.c.a;
        }
        aq aqVar = new aq(str, ajVar, this.b);
        Map e = (this.c == null || this.c.d == null) ? r.e() : j.a(this.c.d);
        return new ap().a(e).a(this.e).a(this.g).a(aqVar);
    }

    public an a(Map<Long, ab> map) {
        return (an) a().a(a(b(this.a, map), d())).q();
    }

    public static List<as> a(List<ab> list, Map<String, clf> map) {
        n d = n.d();
        for (ab abVar : list) {
            clf clf = (clf) map.get(String.valueOf(abVar.b));
            if (clf != null) {
                d.c(new as(abVar, clf));
            }
        }
        return (List) d.q();
    }

    private List<ab> b(List<Long> list, Map<Long, ab> map) {
        if (list == null || map == null) {
            return n.g();
        }
        n d = n.d();
        for (Long l : list) {
            ab abVar = (ab) map.get(l);
            if (abVar != null) {
                d.c(abVar);
            }
        }
        return (List) d.q();
    }

    public Map<String, clf> d() {
        if (this.d == null) {
            return r.e();
        }
        r d = r.d();
        for (Entry entry : this.d.entrySet()) {
            JsonMomentModule jsonMomentModule = (JsonMomentModule) entry.getValue();
            if (!(jsonMomentModule == null || jsonMomentModule.e == null)) {
                d.b(entry.getKey(), jsonMomentModule.e.b());
            }
        }
        return (Map) d.q();
    }
}
