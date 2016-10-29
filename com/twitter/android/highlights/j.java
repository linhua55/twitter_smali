package com.twitter.android.highlights;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.util.aj;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class j {
    private final Context a;
    private int b;
    private boolean c;
    private boolean d;
    private String e;
    private String f;
    private TwitterScribeLog g;

    public j(Context context) {
        this.b = 0;
        this.c = false;
        this.d = false;
        this.a = context;
    }

    public j a(int i) {
        this.b = i;
        return this;
    }

    public j a(boolean z) {
        this.d = z;
        return this;
    }

    public j a(boolean z, String str) {
        this.c = z;
        this.e = str;
        return this;
    }

    public j a(String str) {
        this.f = str;
        return this;
    }

    public j a(TwitterScribeLog twitterScribeLog) {
        this.g = twitterScribeLog;
        return this;
    }

    public Intent a() {
        Intent addFlags = new Intent(this.a, HighlightsStoriesActivity.class).addFlags(536870912);
        if (this.f != null) {
            addFlags.setData(Uri.parse(this.f));
        }
        if (this.c) {
            addFlags.addFlags(67108864);
            if (aj.a(this.e)) {
                this.e = "InvalidStoryId";
            }
            addFlags.putExtra("EXTRA_HIGHLIGHTS_TAPPED_STORY_ID", this.e);
        }
        switch (this.b) {
            case WireMessage.WIRE_CONTROL /*2*/:
            case WireMessage.WIRE_AUTH /*3*/:
                addFlags.putExtra("EXTRA_HIGHLIGHTS_FORCE_STATE", this.b);
                break;
        }
        addFlags.putExtra("EXTRA_HIGHLIGHTS_SAMPLE_STORIES", this.d);
        addFlags.putExtra("EXTRA_HIGHLIGHTS_SCRIBE_LOG", this.g);
        return addFlags;
    }
}
