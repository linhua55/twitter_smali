package com.twitter.model.json.timeline.urt;

import bbn;
import cnx;
import cnz;
import cob;
import coc;
import coj;
import com.bluelinelabs.logansquare.annotation.JsonField;
import com.bluelinelabs.logansquare.annotation.JsonObject;
import com.twitter.model.json.common.b;
import com.twitter.model.json.common.f;
import com.twitter.model.json.timeline.urt.JsonTimelineItem.JsonItemContent;
import com.twitter.util.h;

@JsonObject
/* compiled from: Twttr */
public class JsonTimelineEntry extends f<cnz> {
    @JsonField(name = {"entryId"})
    public String a;
    @JsonField(name = {"sortIndex"})
    public long b;
    @JsonField(name = {"content"})
    public JsonTimelineEntryContent c;

    @JsonObject
    /* compiled from: Twttr */
    public class JsonTimelineEntryContent extends b {
        @JsonField(name = {"item"})
        public JsonTimelineItem a;
        @JsonField(name = {"operation"})
        public JsonTimelineOperation b;
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public cnz a() {
        boolean z = true;
        if (this.a == null || this.b <= 0) {
            bbn.a(new IllegalStateException(String.format("A JsonTimelineEntry must have a non-null IDand a valid (greater than 0) sort index. ID: %s, Sort Index: %d", new Object[]{this.a, Long.valueOf(this.b)})));
        } else if (this.c.a != null) {
            if (this.c.b != null) {
                z = false;
            }
            h.b(z);
            return a(this.c.a);
        } else if (this.c.b != null) {
            return a(this.c.b);
        }
        return null;
    }

    private cob a(JsonTimelineItem jsonTimelineItem) {
        JsonItemContent jsonItemContent = jsonTimelineItem.a;
        if (jsonItemContent.a != null) {
            return new coj(this.a, this.b, jsonTimelineItem.c, jsonTimelineItem.b, jsonItemContent.a);
        }
        if (jsonItemContent.b != null) {
            return new c(this.a, this.b, jsonItemContent.b);
        }
        return null;
    }

    private coc a(JsonTimelineOperation jsonTimelineOperation) {
        if (jsonTimelineOperation.a != null) {
            return new cnx(this.a, this.b, jsonTimelineOperation.a);
        }
        return null;
    }
}
