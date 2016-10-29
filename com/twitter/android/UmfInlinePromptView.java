package com.twitter.android;

import android.content.Context;
import com.twitter.library.client.v;
import com.twitter.model.timeline.s;

/* compiled from: Twttr */
public class UmfInlinePromptView extends UmfPromptView {
    public UmfInlinePromptView(Context context) {
        super(context);
        setDismissVisibility(0);
    }

    protected void a() {
        g();
        c();
        super.a();
    }

    protected void b() {
        g();
        c();
        super.b();
    }

    private void g() {
        v a = v.a(getContext());
        if (this.a != null && this.a.h()) {
            a.b("optin");
            a.a("optin");
        }
    }

    public void c() {
        if (this.a != null) {
            new wh(this, getContext().getApplicationContext()).execute(new s[]{this.a});
        }
    }
}
