package com.twitter.model.json.dms;

import com.fasterxml.jackson.core.JsonParser;
import com.twitter.model.core.MediaEntity;
import com.twitter.model.core.as;
import com.twitter.model.core.cm;
import com.twitter.model.dms.af;
import com.twitter.model.dms.ai;
import com.twitter.model.dms.c;
import com.twitter.model.dms.l;
import com.twitter.model.dms.x;
import com.twitter.model.dms.z;
import com.twitter.model.json.common.g;
import com.twitter.model.json.common.m;
import com.twitter.util.object.e;
import java.io.IOException;

/* compiled from: Twttr */
public class a extends m<c> {
    public /* synthetic */ Object parse(JsonParser jsonParser) throws IOException {
        return a(jsonParser);
    }

    public c a(JsonParser jsonParser) throws IOException {
        String e = jsonParser.e();
        if (x.c.contains(e)) {
            return (c) new z().a((MediaEntity) e.a(g.c(jsonParser, MediaEntity.class))).q();
        } else if ("tweet".equals(e)) {
            JsonTweetAttachment jsonTweetAttachment = (JsonTweetAttachment) e.a(g.c(jsonParser, JsonTweetAttachment.class));
            cm cmVar = jsonTweetAttachment.f;
            as asVar = cmVar != null ? new as(cmVar) : null;
            int[] iArr = jsonTweetAttachment.d;
            af afVar = (af) ((af) ((af) new af().a(asVar).a(jsonTweetAttachment.e).a(jsonTweetAttachment.a)).b(jsonTweetAttachment.b)).c(jsonTweetAttachment.c);
            if (iArr != null && iArr.length == 2) {
                ((af) afVar.a(iArr[0])).b(iArr[1]);
            }
            return (c) afVar.r();
        } else if ("card".equals(e)) {
            return (c) g.c(jsonParser, l.class);
        } else {
            JsonUnknownAttachment jsonUnknownAttachment = (JsonUnknownAttachment) e.a(g.c(jsonParser, JsonUnknownAttachment.class));
            ai aiVar = new ai();
            int[] iArr2 = jsonUnknownAttachment.d;
            if (iArr2 != null && iArr2.length == 2) {
                ((ai) aiVar.a(iArr2[0])).b(iArr2[1]);
            }
            return (c) ((ai) ((ai) ((ai) aiVar.a(jsonUnknownAttachment.a)).b(jsonUnknownAttachment.b)).c(jsonUnknownAttachment.c)).r();
        }
    }
}
