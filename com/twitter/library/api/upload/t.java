package com.twitter.library.api.upload;

import android.content.Context;
import android.text.TextUtils;
import bbn;
import com.google.android.exoplayer.util.MimeTypes;
import com.twitter.internal.android.service.ab;
import com.twitter.internal.network.HttpOperation.RequestMethod;
import com.twitter.library.client.Session;
import com.twitter.library.service.aa;
import com.twitter.library.service.b;
import com.twitter.library.service.c;
import com.twitter.library.service.d;
import com.twitter.media.model.ImageFile;
import com.twitter.model.core.a;
import com.twitter.model.drafts.DraftAttachment;
import com.twitter.model.media.EditableImage;
import com.twitter.model.media.EditableMedia;
import com.twitter.model.media.foundmedia.FoundMediaOrigin;
import com.twitter.util.collection.CollectionUtils;
import com.twitter.util.concurrent.ObservablePromise;
import defpackage.ckf;
import org.apache.http.HttpEntity;
import org.apache.http.entity.StringEntity;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: Twttr */
public class t extends b<c> {
    private final aa a;
    private final ObservablePromise<aa> b;

    public t(Context context, String str, Session session, aa aaVar, ObservablePromise<aa> observablePromise) {
        super(context, str, session);
        this.a = aaVar;
        this.b = observablePromise;
    }

    public void a(ab<aa> abVar) {
        super.a(abVar);
        aa aaVar = (aa) abVar.b();
        if (aaVar == null || aaVar.b()) {
            this.b.set(aaVar);
            return;
        }
        Throwable c = aaVar.c();
        ObservablePromise observablePromise = this.b;
        if (c == null) {
            c = new Exception("cannot upload media metadata data");
        }
        observablePromise.setException(c);
    }

    protected d a() {
        HttpEntity stringEntity;
        try {
            stringEntity = new StringEntity(b(), "utf-8");
        } catch (Throwable e) {
            bbn.a(e);
            stringEntity = null;
        }
        return K().a(RequestMethod.b).a("media/metadata/create").a(stringEntity).a();
    }

    protected c f() {
        return null;
    }

    private String b() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("media_id", this.a.c());
            DraftAttachment b = this.a.b();
            FoundMediaOrigin d = b.h.d();
            if (d != null) {
                jSONObject.put("found_media_origin", d.a());
            }
            EditableMedia a = b.a(3);
            if (a instanceof a) {
                CharSequence a2 = ((a) a).a();
                if (!TextUtils.isEmpty(a2)) {
                    try {
                        JSONObject jSONObject2 = new JSONObject();
                        jSONObject2.put(MimeTypes.BASE_TYPE_TEXT, a2);
                        jSONObject.put("alt_text", jSONObject2);
                    } catch (JSONException e) {
                    }
                }
            }
            if (a instanceof EditableImage) {
                EditableImage editableImage = (EditableImage) a;
                Object<ckf> obj = editableImage.h;
                if (!CollectionUtils.b(obj)) {
                    float e2 = ((ImageFile) editableImage.k).e.e();
                    com.twitter.util.math.c cVar = editableImage.f;
                    int i = editableImage.e;
                    JSONArray jSONArray = new JSONArray();
                    for (ckf b2 : obj) {
                        jSONArray.put(b2.b(e2, cVar, i));
                    }
                    JSONObject jSONObject3 = new JSONObject();
                    jSONObject3.put("stickers", jSONArray);
                    jSONObject.put("sticker_info", jSONObject3);
                }
            }
            return jSONObject.toString();
        } catch (Throwable e3) {
            bbn.a(e3);
            return TtmlNode.ANONYMOUS_REGION_ID;
        }
    }
}
