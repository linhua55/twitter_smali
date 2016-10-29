package com.twitter.android.dialog;

import com.twitter.android.client.OpenUriHelper;
import com.twitter.android.client.c;
import com.twitter.app.common.base.d;
import com.twitter.model.timeline.s;
import com.twitter.util.aj;

/* compiled from: Twttr */
public class TakeoverPromptDialogFragment extends TakeoverDialogFragment {
    public /* synthetic */ p e() {
        return a();
    }

    public /* synthetic */ l f() {
        return a();
    }

    public /* synthetic */ d g() {
        return a();
    }

    public s a() {
        return s.a(getArguments());
    }

    protected s m() {
        return a().a();
    }

    protected void b() {
        super.b();
        c.a(getActivity()).a(m().c);
    }

    protected void d() {
        super.d();
        Object obj = m().g;
        if (aj.b(obj)) {
            OpenUriHelper.a(getActivity(), null, obj, l().g(), null, null, null);
        }
        c.a(getActivity()).b(m().c);
    }

    protected void c() {
        super.c();
        c.a(getActivity()).c(m().c);
    }
}
