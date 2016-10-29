package defpackage;

import com.twitter.model.core.Tweet;
import com.twitter.model.core.TwitterUser;
import com.twitter.model.core.cm;
import com.twitter.model.json.people.JsonModule;
import com.twitter.model.json.people.JsonModuleLayout;
import com.twitter.model.json.people.JsonModuleLayoutContent;
import com.twitter.model.json.people.JsonModulePage;
import com.twitter.model.json.people.JsonPeopleDiscoveryResponse;
import com.twitter.model.people.aa;
import com.twitter.model.people.ab;
import com.twitter.model.people.ag;
import com.twitter.model.people.am;
import com.twitter.model.people.g;
import com.twitter.model.people.h;
import com.twitter.model.people.l;
import com.twitter.model.people.n;
import com.twitter.model.people.t;
import com.twitter.model.people.w;
import com.twitter.model.people.y;
import com.twitter.util.collection.r;
import com.twitter.util.object.e;
import java.util.List;
import java.util.Map;

/* compiled from: Twttr */
/* renamed from: alf */
public class alf {
    public static ag a(JsonPeopleDiscoveryResponse jsonPeopleDiscoveryResponse) {
        return new ag(alf.a(jsonPeopleDiscoveryResponse.a), jsonPeopleDiscoveryResponse.b);
    }

    public static List<g> a(List<g> list, Map<Long, Tweet> map) {
        return alf.a((List) list, r.e(), (Map) map);
    }

    public static List<g> b(List<g> list, Map<Long, TwitterUser> map) {
        return alf.a((List) list, (Map) map, r.e());
    }

    public static List<g> a(List<g> list, Map<Long, TwitterUser> map, Map<Long, Tweet> map2) {
        return cto.c(cto.a((Iterable) list, new alg(map, map2)));
    }

    public static g a(g gVar, Map<Long, TwitterUser> map, Map<Long, Tweet> map2) {
        return (g) new com.twitter.model.people.r().b(gVar.a()).a(gVar.b()).a(alf.a(gVar.c(), (Map) map, (Map) map2)).q();
    }

    public static t a(t tVar, Map<Long, TwitterUser> map, Map<Long, Tweet> map2) {
        return new t(tVar.b, (w) alf.a(tVar.c, (Map) map, (Map) map2).q());
    }

    public static y a(w wVar, Map<Long, TwitterUser> map, Map<Long, Tweet> map2) {
        return alf.a((aa) wVar, (Map) map, (Map) map2).d(cto.a(e.a(wVar.h), new alh(map, map2)));
    }

    public static y a(aa aaVar, Map<Long, TwitterUser> map, Map<Long, Tweet> map2) {
        return (y) ((ab) ((ab) ((ab) ((ab) ((ab) new y().a(alf.a(aaVar.a, (Map) map))).a(aaVar.b)).a(aaVar.c)).a(alf.a(aaVar.d, (Map) map))).b(alf.b(aaVar.e, (Map) map2))).c(aaVar.f);
    }

    public static List<am> a(Iterable<am> iterable, Map<Long, TwitterUser> map) {
        if (iterable == null) {
            return null;
        }
        return cto.c(cto.a((Iterable) iterable, new ali(map)));
    }

    public static l a(l lVar, Map<Long, TwitterUser> map) {
        if (lVar == null) {
            return null;
        }
        return (l) new n().a(lVar.c).b(lVar.d).a(lVar.e).a(alf.a(lVar.f, (Map) map)).q();
    }

    private static h a(h hVar, Map<Long, TwitterUser> map) {
        if (hVar == null) {
            return null;
        }
        return new h(cto.c(cto.a(e.a(hVar.c), new alj(map))));
    }

    public static List<Tweet> b(Iterable<Tweet> iterable, Map<Long, Tweet> map) {
        if (iterable == null) {
            return null;
        }
        return cto.c(cto.a((Iterable) iterable, new alk(map)));
    }

    public static List<g> a(List<JsonModule> list) {
        return cto.c(cto.a((Iterable) list, new all()));
    }

    public static g a(JsonModule jsonModule) {
        return (g) new com.twitter.model.people.r().b(jsonModule.b).a(jsonModule.a).a(alf.a(jsonModule.c)).q();
    }

    public static t a(JsonModuleLayout jsonModuleLayout) {
        return new t(jsonModuleLayout.a, alf.a(jsonModuleLayout.b));
    }

    public static w a(JsonModuleLayoutContent jsonModuleLayoutContent) {
        return (w) ((ab) ((ab) ((ab) ((ab) ((ab) new y().d(alf.a(jsonModuleLayoutContent.a)).a(jsonModuleLayoutContent.b)).a(jsonModuleLayoutContent.c)).a(jsonModuleLayoutContent.d)).a(jsonModuleLayoutContent.e)).b(alf.b(jsonModuleLayoutContent.f))).q();
    }

    private static Iterable<aa> a(Iterable<JsonModulePage> iterable) {
        if (iterable == null) {
            return null;
        }
        return cto.c(cto.a((Iterable) iterable, new alm()));
    }

    public static List<Tweet> b(List<cm> list) {
        if (list == null) {
            return null;
        }
        return com.twitter.util.collection.n.a(cto.a((Iterable) list, new aln()));
    }
}
