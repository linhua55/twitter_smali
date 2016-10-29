package defpackage;

import android.app.Activity;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v7.recyclerview.BuildConfig;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.Toast;
import aqj;
import aqp;
import aqq;
import aqr;
import aqs;
import aqu;
import aqv;
import aqw;
import aqx;
import com.twitter.android.composer.ComposerCountView;
import com.twitter.android.composer.ComposerType;
import com.twitter.android.composer.TweetBox;
import com.twitter.android.media.camera.z;
import com.twitter.android.media.selection.AttachMediaListener;
import com.twitter.android.media.selection.MediaAttachment;
import com.twitter.android.media.selection.MediaAttachmentController;
import com.twitter.android.media.widget.AttachmentMediaView;
import com.twitter.android.media.widget.InlineComposerMediaLayout;
import com.twitter.android.media.widget.InlineComposerMediaScrollView;
import com.twitter.android.mx;
import com.twitter.android.widget.ar;
import com.twitter.android.widget.as;
import com.twitter.android.widget.bc;
import com.twitter.app.common.base.n;
import com.twitter.app.common.inject.v;
import com.twitter.media.model.MediaType;
import com.twitter.model.core.Tweet;
import com.twitter.model.drafts.DraftAttachment;
import com.twitter.model.media.EditableMedia;
import com.twitter.util.Tristate;
import com.twitter.util.collection.CollectionUtils;
import com.twitter.util.object.e;
import java.util.List;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
/* renamed from: aqo */
public class aqo extends v implements aqi, bc {
    private static final int b;
    private static final int c;
    protected final Activity a;
    private final TweetBox d;
    private final ComposerCountView e;
    private final Button f;
    private final View g;
    private final n h;
    private final MediaAttachmentController i;
    private final ar j;
    private InlineComposerMediaLayout k;
    private ViewGroup l;
    private MediaAttachment m;
    private boolean n;
    private int o;
    private final aqj p;
    private Tweet q;
    private aqn r;
    private boolean s;
    private String t;

    static /* synthetic */ boolean b(aqo aqo, int i) {
        boolean z = (byte) (aqo.s | i);
        aqo.s = z;
        return z;
    }

    static {
        b = n.a();
        c = n.a();
    }

    protected aqo(View view, FragmentActivity fragmentActivity, Bundle bundle, n nVar, MediaAttachmentController mediaAttachmentController, aqj aqj) {
        this.o = 0;
        this.t = BuildConfig.VERSION_NAME;
        if (bundle != null) {
            this.s = bundle.getBoolean("sticky", false);
            this.o = bundle.getInt("launch_camera_mode");
        }
        this.a = fragmentActivity;
        this.i = mediaAttachmentController;
        this.j = new as(fragmentActivity, bundle != null, this.i, view.findViewById(2131953291), 2131952502, this);
        this.p = aqj;
        this.p.a(new aqp(this));
        this.h = nVar;
        nVar.a(com.twitter.util.collection.n.a(Integer.valueOf(c), Integer.valueOf(b)), new aqq(this));
        a(view);
        this.d = (TweetBox) view.findViewById(2131952227);
        this.e = (ComposerCountView) view.findViewById(2131952251);
        this.f = (Button) view.findViewById(2131952267);
        this.g = view.findViewById(2131953025);
        this.f.setOnClickListener(new aqr(this));
        if (this.s) {
            this.g.setVisibility(0);
        }
        this.d.setTweetBoxListener(new aqs(this));
        u();
        t();
        b(bundle);
    }

    private void k() {
        if (this.p.a()) {
            this.n = true;
            this.d.a(false);
            return;
        }
        this.j.b();
    }

    public void a(int i) {
        if (z.a(this.a, i)) {
            this.i.a(true, i);
            return;
        }
        this.h.a(c, z.a(this.a, i, ":composition::twitter_camera"));
        this.o = i;
    }

    private void t() {
        View aO_ = aO_();
        aO_.setClickable(true);
        ((ImageView) aO_.findViewById(2131953292)).setImageDrawable(this.a.getResources().getDrawable(2130837806));
        this.k = (InlineComposerMediaLayout) aO_.findViewById(2131952720);
        ((InlineComposerMediaScrollView) this.k.findViewById(2131952721)).setActionListener(new aqu(this));
        this.l = (ViewGroup) aO_.findViewById(2131953026);
        this.l.findViewById(2131953027).setOnClickListener(new aqv(this));
        if (com.twitter.android.util.v.a(this.a)) {
            View findViewById = this.l.findViewById(2131952724);
            findViewById.setVisibility(0);
            findViewById.setOnClickListener(new aqw(this));
        }
    }

    public void a(boolean z) {
        if (z) {
            this.d.f();
        } else {
            this.d.g();
        }
    }

    public void f() {
        this.d.setVisibility(8);
    }

    public boolean aB_() {
        return this.d.d() || this.m != null;
    }

    public String g() {
        return this.d.getText();
    }

    public int[] l() {
        return this.d.getSelection();
    }

    public void d() {
        this.d.j();
    }

    public void a(aqn aqn) {
        this.r = aqn;
    }

    public void a(Tweet tweet) {
        this.q = tweet;
        u();
    }

    protected void a(Bundle bundle) {
        super.a(bundle);
        bundle.putBoolean("sticky", this.s);
        bundle.putParcelable("media_attachment", this.m);
        bundle.putInt("launch_camera_mode", this.o);
    }

    public void j() {
        this.d.a(false);
        this.d.a(BuildConfig.VERSION_NAME, null);
        this.d.clearFocus();
        u();
        this.s = false;
        this.g.setVisibility(8);
        this.m = null;
        this.i.b();
        this.i.h();
        v();
    }

    private void b(Bundle bundle) {
        if (bundle != null) {
            MediaAttachment mediaAttachment = (MediaAttachment) bundle.getParcelable("media_attachment");
            if (mediaAttachment != null) {
                this.i.a(mediaAttachment, (AttachMediaListener) this);
            }
        }
    }

    private void u() {
        this.d.setImeActionLabel(m());
        a(n());
        if (this.q != null) {
            this.d.a(this.q, Tristate.UNDEFINED);
        }
    }

    public void a(String str) {
        this.d.setHintText(str);
    }

    protected String n() {
        if (this.q == null) {
            return BuildConfig.VERSION_NAME;
        }
        if (buj.a().c()) {
            return this.a.getResources().getString(2131362327);
        }
        String d = this.q.d();
        return this.a.getResources().getString(2131362294, new Object[]{d});
    }

    public String h() {
        return this.t;
    }

    public void b(String str) {
        this.t = str;
        this.d.setPrefillText(str);
    }

    protected CharSequence m() {
        return this.a.getText(2131363369);
    }

    private void v() {
        b(null);
        this.j.c();
        a(false);
    }

    private void b(MediaAttachment mediaAttachment) {
        if (this.m != null) {
            this.m.a(mediaAttachment);
        }
        if (mediaAttachment == null || !mediaAttachment.b(3)) {
            this.m = null;
            this.k.setVisibility(8);
            this.k.a(null, ComposerType.INLINE_REPLY);
            c(true);
            return;
        }
        this.m = mediaAttachment;
        this.k.setVisibility(0);
        AttachmentMediaView a = this.k.a(mediaAttachment, ComposerType.INLINE_REPLY);
        if (a != null) {
            a.setOnAttachmentActionListener(new aqx(this));
        }
        c(false);
    }

    public boolean aC_() {
        if (!this.j.a()) {
            return false;
        }
        this.j.c();
        return true;
    }

    public boolean a(MediaAttachment mediaAttachment) {
        return true;
    }

    public void a(List<MediaAttachment> list) {
        MediaAttachment mediaAttachment = (MediaAttachment) CollectionUtils.c((List) list);
        if (mediaAttachment == null) {
            b(null);
            return;
        }
        switch (mediaAttachment.a) {
            case mx.View_android_theme /*0*/:
                b(mediaAttachment);
                this.j.c();
                a(true);
            case WireMessage.WIRE_CHAT /*1*/:
                Toast.makeText(this.a, this.a.getString(2131362923), 1).show();
            case WireMessage.WIRE_AUTH /*3*/:
                b(mediaAttachment);
            default:
        }
    }

    private void c(boolean z) {
        float f = z ? 1.0f : 0.3f;
        int childCount = this.l.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = this.l.getChildAt(i);
            childAt.setAlpha(f);
            childAt.setEnabled(z);
        }
    }

    public List<DraftAttachment> i() {
        if (this.m == null || this.m.a != 0) {
            return null;
        }
        return com.twitter.util.collection.n.b(e.a(this.m.d()));
    }

    public void a(EditableMedia editableMedia) {
        if ((editableMedia.g() == MediaType.d ? 1 : null) != null) {
            this.i.a(editableMedia, null, (AttachMediaListener) this);
        } else {
            this.i.a(editableMedia, (AttachMediaListener) this);
        }
    }

    public void a(EditableMedia editableMedia, View view) {
        this.i.a(editableMedia, null, (AttachMediaListener) this);
    }

    public void z() {
    }

    public void b(int i) {
        a(i);
    }

    public void b(boolean z) {
    }

    public v o() {
        return this;
    }
}
