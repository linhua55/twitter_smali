package com.twitter.android.dm;

import android.os.Bundle;
import com.twitter.app.common.base.g;
import com.twitter.app.common.list.h;

/* compiled from: Twttr */
public class m extends c<m> {
    public /* synthetic */ b a() {
        return d();
    }

    public /* synthetic */ h b() {
        return d();
    }

    public /* synthetic */ g c() {
        return d();
    }

    public m() {
        this(null);
    }

    public m(Bundle bundle) {
        super(bundle, 1);
    }

    public m c(boolean z) {
        this.a.putBoolean("is_forwarding_message", z);
        return this;
    }

    public m d(boolean z) {
        this.a.putBoolean("is_sharing_external_content", z);
        return this;
    }

    public m e(boolean z) {
        this.a.putBoolean("should_add_participants_to_existing_conversation", z);
        return this;
    }

    public m f(boolean z) {
        this.a.putBoolean("should_go_back_to_source_activity", z);
        return this;
    }

    public l d() {
        return new l(this.a);
    }
}
