package com.twitter.library.api.upload;

import bvs;
import cni;
import com.twitter.library.api.at;
import com.twitter.library.network.an;
import com.twitter.library.network.ap;
import com.twitter.model.core.ag;
import com.twitter.model.drafts.DraftAttachment;
import com.twitter.model.drafts.d;
import com.twitter.model.geo.g;
import com.twitter.model.media.EditableImage;
import com.twitter.model.media.EditableMedia;
import com.twitter.util.aj;
import com.twitter.util.collection.CollectionUtils;
import com.twitter.util.object.e;
import cvi;
import java.io.Closeable;
import java.io.IOException;
import java.io.StringWriter;
import java.io.Writer;
import java.util.List;

/* compiled from: Twttr */
public class s {
    public static StringBuilder a(an anVar) {
        return an.a(anVar.b(), new Object[]{"1.1", "statuses", "update"}).append(".json");
    }

    public static void a(ap apVar, an anVar, d dVar, List<Long> list, String str, boolean z) {
        apVar.a("include_entities", true);
        apVar.a("include_media_features", true);
        apVar.a("earned_read", true);
        apVar.a();
        if (dVar.i != null) {
            apVar.a("attachment_url", dVar.i.a());
        }
        apVar.a("status", e.b(dVar.c).trim());
        apVar.a("send_error_codes", true);
        if (dVar.e > 0) {
            apVar.a("in_reply_to_status_id", dVar.e);
            if (dVar.f) {
                apVar.a("auto_populate_reply_metadata", true);
            }
        }
        cni cni = (dVar.e <= 0 || dVar.h == null) ? dVar.i != null ? dVar.i.m : dVar.h : dVar.h;
        if (cni != null && aj.b(cni.c)) {
            apVar.a("impression_id", cni.c);
            if (cni.c()) {
                apVar.a("earned", true);
            }
        }
        g gVar = dVar.g;
        if (gVar != null && z) {
            apVar.a("place_id", gVar.a().b);
            com.twitter.model.geo.d b = gVar.b();
            if (b != null && bvs.a().b()) {
                apVar.a("lat", b.a());
                apVar.a("long", b.b());
            }
            String c = gVar.c();
            if (c != null) {
                apVar.a("geo_search_request_id", c);
            }
        }
        Object a = a((List) list);
        if (aj.b(a)) {
            apVar.a("media_ids", a);
        }
        a = a(dVar.d, list);
        if (aj.b(a)) {
            apVar.a("media_tags", a);
        }
        if (aj.a(str)) {
            a = dVar.j;
            if (aj.b(a)) {
                apVar.a("card_uri", a);
            }
        } else {
            apVar.a("card_uri", str);
        }
        if (com.twitter.config.d.a("include_blocked_by_and_blocking_in_requests_enabled")) {
            apVar.a("include_blocking", true);
            apVar.a("include_blocked_by", true);
        }
        if (com.twitter.config.d.a("android_beyond_140_extended_payload_enabled")) {
            apVar.a("tweet_mode", "extended");
        }
    }

    private static String a(List<Long> list) {
        if (CollectionUtils.b(list)) {
            return null;
        }
        return aj.a(",", list);
    }

    private static String a(List<DraftAttachment> list, List<Long> list2) {
        if (list2 == null) {
            return null;
        }
        int size = list.size();
        if (size == 0 || size != list2.size()) {
            return null;
        }
        CharSequence charSequence = TtmlNode.ANONYMOUS_REGION_ID;
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("{");
        int i = 0;
        while (i < size) {
            EditableMedia a = ((DraftAttachment) list.get(i)).a(2);
            if (!(a instanceof EditableImage)) {
                return null;
            }
            String b;
            Object obj;
            Object obj2 = ((EditableImage) a).g;
            if (!CollectionUtils.b(obj2)) {
                b = b(obj2);
                if (b != null) {
                    stringBuilder.append(charSequence).append("\"").append(list2.get(i)).append("\":").append(b);
                    b = ",";
                    i++;
                    obj = b;
                }
            }
            CharSequence charSequence2 = charSequence;
            i++;
            obj = b;
        }
        stringBuilder.append("}");
        return aj.a(charSequence) ? null : stringBuilder.toString();
    }

    private static String b(List<ag> list) {
        Closeable closeable;
        Throwable th;
        Closeable a;
        try {
            Writer stringWriter = new StringWriter(512);
            a = at.a.a(stringWriter);
            try {
                a.a();
                for (ag agVar : list) {
                    a.c();
                    a.a("type", "user");
                    if (agVar.b != 0) {
                        a.a("user_id", Long.toString(agVar.b));
                    }
                    a.a("screen_name", agVar.d);
                    a.d();
                }
                a.b();
                a.flush();
                String stringBuffer = stringWriter.getBuffer().toString();
                cvi.a(a);
                return stringBuffer;
            } catch (IOException e) {
                closeable = a;
                cvi.a(closeable);
                return null;
            } catch (Throwable th2) {
                th = th2;
                cvi.a(a);
                throw th;
            }
        } catch (IOException e2) {
            closeable = null;
            cvi.a(closeable);
            return null;
        } catch (Throwable th3) {
            th = th3;
            a = null;
            cvi.a(a);
            throw th;
        }
    }
}
