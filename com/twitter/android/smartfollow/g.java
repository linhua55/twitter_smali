package com.twitter.android.smartfollow;

import android.content.Context;
import android.content.Intent;
import com.twitter.app.common.base.u;
import com.twitter.model.stratostore.SourceLocation;
import com.twitter.util.object.e;

/* compiled from: Twttr */
public class g extends u<g> {
    private g(Intent intent) {
        super(intent);
    }

    public g a(String str) {
        this.b.putExtra("extra_scribe_page", str);
        return this;
    }

    public g a(boolean z) {
        this.b.putExtra("extra_make_home_timeline_request", z);
        return this;
    }

    public g b(String str) {
        this.b.putExtra("extra_htl_request_context", str);
        return this;
    }

    public g a(SourceLocation sourceLocation) {
        this.b.putExtra("extra_source_location", sourceLocation.ordinal());
        return this;
    }

    public g a(int i) {
        this.b.putExtra("extra_flow_type", i);
        return this;
    }

    public String a() {
        return e.b(this.b.getStringExtra("extra_scribe_page"));
    }

    public String b() {
        return this.b.getStringExtra("extra_htl_request_context");
    }

    public boolean c() {
        return this.b.getBooleanExtra("extra_make_home_timeline_request", false);
    }

    public SourceLocation d() {
        return SourceLocation.values()[this.b.getIntExtra("extra_source_location", SourceLocation.Nux.ordinal())];
    }

    public int e() {
        return this.b.getIntExtra("extra_flow_type", 1);
    }

    public Intent a(Context context) {
        return a(context, SmartFollowFlowActivity.class);
    }

    public static g a(Intent intent) {
        return new g(intent);
    }
}
