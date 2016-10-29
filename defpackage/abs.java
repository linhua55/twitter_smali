package defpackage;

import android.content.DialogInterface;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.view.View;
import aqj;
import com.twitter.android.media.selection.AttachMediaListener;
import com.twitter.android.media.selection.MediaAttachmentController;
import com.twitter.android.widget.ec;
import com.twitter.app.common.base.m;
import com.twitter.app.common.base.n;

/* compiled from: Twttr */
/* renamed from: abs */
public class abs extends aqo implements abr, m {
    private final abt b;
    private final FragmentManager c;
    private String d;

    public abs(View view, FragmentActivity fragmentActivity, Bundle bundle, n nVar, MediaAttachmentController mediaAttachmentController, aqj aqj, abt abt) {
        super(view, fragmentActivity, bundle, nVar, mediaAttachmentController, aqj);
        this.b = abt;
        this.c = fragmentActivity.getSupportFragmentManager();
    }

    protected CharSequence m() {
        return this.a.getString(2131363370);
    }

    protected String n() {
        return this.d;
    }

    public void a(String str) {
        this.d = str;
        super.a(str);
    }

    public AttachMediaListener e() {
        return this;
    }

    public void a() {
        this.a.finish();
    }

    public void az_() {
        ((ec) ((ec) ((ec) new ec(1).b(2131363373)).d(2131363522)).f(2131362398)).i().a((m) this).a(this.c);
    }

    public void aA_() {
        this.b.e();
    }

    public void k() {
        this.b.c();
    }

    public void a(DialogInterface dialogInterface, int i, int i2) {
        if (1 == i) {
            this.b.a(i2);
        }
    }
}
