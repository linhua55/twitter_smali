package com.twitter.model.json.dms;

import cgl;
import com.fasterxml.jackson.core.JsonParser;
import com.twitter.config.d;
import com.twitter.model.dms.l;
import com.twitter.model.dms.q;
import com.twitter.model.dms.v;
import com.twitter.model.json.common.g;
import com.twitter.model.json.common.m;
import java.io.IOException;
import tv.periscope.android.library.p;

/* compiled from: Twttr */
public class c extends m<l> {
    public /* synthetic */ Object parse(JsonParser jsonParser) throws IOException {
        return a(jsonParser);
    }

    public l a(JsonParser jsonParser) throws IOException {
        if (d.a("dm_cards_enabled")) {
            cgl cgl = (cgl) g.c(jsonParser, cgl.class);
            if (cgl == null) {
                return null;
            }
            String b = cgl.b();
            Object obj = -1;
            switch (b.hashCode()) {
                case -1554754698:
                    if (b.equals("2586390716:feedback_csat")) {
                        obj = 1;
                        break;
                    }
                    break;
                case -1019974210:
                    if (b.equals("2586390716:feedback_nps")) {
                        obj = null;
                        break;
                    }
                    break;
            }
            switch (obj) {
                case p.View_android_theme /*0*/:
                    return (l) ((v) new v().b(cgl)).q();
                case p.View_android_focusable /*1*/:
                    return (l) ((q) new q().b(cgl)).q();
                default:
                    return null;
            }
        }
        jsonParser.c();
        return null;
    }
}
