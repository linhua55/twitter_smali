package com.twitter.android;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Resources;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.LoaderManager;
import android.support.v4.app.LoaderManager.LoaderCallbacks;
import android.support.v4.content.Loader;
import android.support.v7.recyclerview.BuildConfig;
import android.view.View;
import android.widget.ListView;
import android.widget.Toast;
import bgt;
import bhz;
import bid;
import bie;
import bji;
import bpm;
import cdl;
import cgq;
import cgt;
import com.twitter.android.client.ak;
import com.twitter.android.client.z;
import com.twitter.android.composer.ComposerType;
import com.twitter.android.composer.bi;
import com.twitter.android.dialog.RateLimitDialogFragmentActivity;
import com.twitter.android.dm.n;
import com.twitter.android.dm.s;
import com.twitter.android.dm.t;
import com.twitter.android.dm.widget.DMConversationMessageComposer;
import com.twitter.android.dm.widget.ReadOnlyConversationFooterView;
import com.twitter.android.dm.widget.d;
import com.twitter.android.dm.y;
import com.twitter.android.media.selection.AttachMediaListener;
import com.twitter.android.media.selection.AttachMediaListener.MediaAttachFailure;
import com.twitter.android.media.selection.MediaAttachment;
import com.twitter.android.media.selection.MediaAttachmentController;
import com.twitter.android.media.widget.AttachmentMediaView;
import com.twitter.android.runtimepermissions.PermissionRequestActivity;
import com.twitter.android.runtimepermissions.b;
import com.twitter.android.util.v;
import com.twitter.android.widget.GalleryGridFragment;
import com.twitter.android.widget.NewItemBannerView;
import com.twitter.android.widget.PromptDialogFragment;
import com.twitter.android.widget.ec;
import com.twitter.app.common.base.TwitterFragmentActivity;
import com.twitter.app.common.base.g;
import com.twitter.app.common.base.j;
import com.twitter.app.common.base.m;
import com.twitter.app.common.base.u;
import com.twitter.app.common.list.TwitterListFragment;
import com.twitter.app.common.list.h;
import com.twitter.app.common.list.k;
import com.twitter.internal.android.widget.ToolBar;
import com.twitter.internal.network.HttpOperation;
import com.twitter.library.api.UserSettings;
import com.twitter.library.api.dm.requests.ReportDMRequest;
import com.twitter.library.api.dm.requests.ReportDMRequest.Type;
import com.twitter.library.api.dm.requests.SendDMRequest;
import com.twitter.library.api.dm.requests.f;
import com.twitter.library.api.dm.requests.o;
import com.twitter.library.api.dm.requests.q;
import com.twitter.library.api.dm.requests.x;
import com.twitter.library.client.Session;
import com.twitter.library.client.ax;
import com.twitter.library.client.az;
import com.twitter.library.client.navigation.w;
import com.twitter.library.dm.DMGroupAvatarImageVariant;
import com.twitter.library.media.util.a;
import com.twitter.library.network.an;
import com.twitter.library.network.livepipeline.CallbackContext;
import com.twitter.library.network.livepipeline.ac;
import com.twitter.library.platform.notifications.ad;
import com.twitter.library.provider.ck;
import com.twitter.library.provider.cr;
import com.twitter.library.provider.cs;
import com.twitter.library.scribe.ScribeItem;
import com.twitter.library.scribe.TwitterScribeAssociation;
import com.twitter.library.scribe.TwitterScribeItem;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.library.service.aa;
import com.twitter.library.widget.PageableListView;
import com.twitter.media.model.MediaType;
import com.twitter.model.dms.Participant;
import com.twitter.model.drafts.DraftAttachment;
import com.twitter.model.livepipeline.c;
import com.twitter.model.media.EditableImage;
import com.twitter.ui.widget.Tooltip;
import com.twitter.util.aj;
import com.twitter.util.collection.CollectionUtils;
import com.twitter.util.collection.ar;
import com.twitter.util.collection.r;
import com.twitter.util.object.ObjectUtils;
import defpackage.abw;
import defpackage.ark;
import defpackage.aru;
import defpackage.asa;
import defpackage.bbu;
import defpackage.bbw;
import defpackage.bca;
import defpackage.bdl;
import defpackage.bhc;
import defpackage.big;
import defpackage.biw;
import defpackage.cca;
import defpackage.cgu;
import defpackage.chr;
import defpackage.cly;
import defpackage.cto;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.TimeUnit;
import rx.subjects.e;
import tv.periscope.android.api.ValidateUsernameError.UsernameError;
import tv.periscope.chatman.api.ControlMessage;
import tv.periscope.chatman.api.WireMessage;
import wy;
import xb;
import xc;

/* compiled from: Twttr */
public class DMConversationFragment extends TwitterListFragment<Cursor, cd> implements LoaderCallbacks<Cursor>, bz, ak, de, t, d, AttachMediaListener, ni, wa, j, m, a {
    private boolean A;
    private boolean B;
    private boolean C;
    private boolean D;
    private View E;
    private boolean F;
    private dl G;
    private boolean H;
    private boolean I;
    private ax J;
    private long K;
    private boolean L;
    private boolean M;
    private boolean N;
    private NewItemBannerView O;
    private boolean P;
    private boolean Q;
    private boolean R;
    private boolean S;
    private PromptDialogFragment a;
    private boolean ab;
    private boolean ac;
    private boolean ad;
    private wy ae;
    private boolean af;
    private boolean ag;
    private boolean ah;
    private vx ai;
    private ac<com.twitter.model.livepipeline.j> aj;
    private ac<c> ak;
    private e<String> al;
    private boolean am;
    private Handler an;
    private com.twitter.android.dm.ac ao;
    private boolean ap;
    private xk b;
    private long c;
    private String d;
    private Session e;
    private long f;
    private MediaAttachmentController g;
    private dd h;
    private boolean i;
    private DMConversationMessageComposer j;
    private ProgressDialog k;
    private s l;
    private MediaAttachmentController m;
    private boolean n;
    private boolean o;
    private boolean p;
    private boolean q;
    private y r;
    private boolean s;
    private boolean t;
    private boolean u;
    private boolean v;
    private String w;
    private String x;
    private boolean y;
    private long[] z;

    public DMConversationFragment() {
        this.c = -1;
    }

    public /* synthetic */ h C() {
        return w();
    }

    public /* synthetic */ g o() {
        return w();
    }

    public /* synthetic */ void onLoadFinished(Loader loader, Object obj) {
        a(loader, (Cursor) obj);
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        z.a(getActivity()).a((ak) this);
        this.P = big.f();
        this.N = v.a(this.T);
        this.r = y.a();
        a((TwitterScribeAssociation) ((TwitterScribeAssociation) ((TwitterScribeAssociation) new TwitterScribeAssociation().b("messages")).c("thread")).d(BuildConfig.VERSION_NAME));
        this.ad = big.a();
        this.ae = new dc(this, null);
        this.af = big.m();
        this.ag = big.l();
        this.am = big.e();
        this.an = new Handler();
        this.e = aT();
        this.f = this.e.g();
        this.ap = big.b();
        this.K = (this.ap ? 10 : 30) * 1000;
        this.J = new ax(new cf(this), this.K);
        if (this.ap) {
            this.ao = new com.twitter.android.dm.ac(this.f);
        } else {
            this.ao = null;
        }
    }

    private void D() {
        if (!biw.a(this.d)) {
            if (this.af) {
                E();
            }
            if (this.ag) {
                F();
            }
            this.ah = true;
        }
    }

    private void E() {
        this.ai = new vx(new com.twitter.library.provider.e(getContext().getContentResolver()), this.d);
        ((cd) az()).a(this.ai);
        this.aj = new cr(this);
        a(com.twitter.library.network.livepipeline.v.a().a(getContext(), this.d, CallbackContext.b).d(new cv(this)).b(this.aj));
        this.ak = new cw(this);
        a(com.twitter.library.network.livepipeline.v.a().b(getContext(), this.d, CallbackContext.b).d(new cx(this)).b(this.ak));
    }

    private void F() {
        this.al = e.q();
        a(this.al.c(2000, TimeUnit.MILLISECONDS).b(new cy(this)));
    }

    private void H() {
        I();
        J();
        this.ah = false;
    }

    private void I() {
        this.ai = null;
        ((cd) az()).a(null);
        if (this.aj != null) {
            this.aj.K_();
            this.aj = null;
        }
        if (this.ak != null) {
            this.ak.K_();
            this.ak = null;
        }
    }

    private void J() {
        if (this.al != null) {
            this.al.bs_();
            this.al = null;
        }
    }

    public void onActivityCreated(Bundle bundle) {
        List list;
        Uri uri;
        MediaAttachment mediaAttachment;
        String str;
        String str2;
        boolean z;
        boolean z2;
        boolean z3;
        super.onActivityCreated(bundle);
        Context activity = getActivity();
        this.H = bundle != null;
        n w = w();
        this.ab = w.o();
        this.C = w.a();
        String f;
        String f2;
        String f3;
        boolean a;
        if (this.H) {
            boolean a2;
            h d = h.d((Bundle) com.twitter.util.object.e.a((Object) bundle));
            String f4 = d.f("conversation_id");
            f = d.f("title");
            f2 = d.f("subtitle");
            f3 = d.f("text");
            Uri uri2 = (Uri) d.h("media_uri");
            MediaAttachment mediaAttachment2 = (MediaAttachment) d.h("media_attachment");
            this.ac = d.a("has_sent_message", false);
            List g = d.g("canceled_pending_attachments");
            a = d.a("quick_emoji_visible", false);
            this.i = d.a("error_dialog", true);
            this.G = new dl(this.f, d);
            this.I = d.a("has_scrolled_to_last_read_marker", false);
            this.c = d.c("report_entry_id");
            this.u = d.a("is_group_convo", false);
            this.o = d.a("has_requested_older_messages", false);
            this.q = d.a("has_user_scrolled", false);
            this.v = d.a("read_only", false);
            if (this.ao != null) {
                a2 = this.ao.a(bundle);
            } else {
                a2 = false;
            }
            list = g;
            uri = uri2;
            mediaAttachment = mediaAttachment2;
            str = f3;
            str2 = f4;
            z = a2;
            CharSequence charSequence = f2;
            z2 = a;
            CharSequence charSequence2 = f;
            z3 = false;
        } else {
            f3 = w.j();
            String l = w.l();
            f = w.m();
            f2 = w.c();
            Uri k = w.k();
            a = w.b();
            this.i = true;
            this.G = new dl(this.f);
            this.ac = false;
            long[] i = w.i();
            if (!(i == null || i.length == 0)) {
                this.aa.a(new bid(activity, this.e, f3, i));
            }
            Object obj;
            Object obj2;
            if (this.ab) {
                ScribeItem twitterScribeItem = new TwitterScribeItem();
                twitterScribeItem.v = "direct_share";
                bbu.a(((TwitterScribeLog) new TwitterScribeLog(this.f).b("messages:thread::external_share:impression")).a(twitterScribeItem));
                uri = k;
                mediaAttachment = null;
                str2 = f3;
                str = f2;
                z = false;
                z2 = false;
                obj = f;
                obj2 = l;
                z3 = a;
                list = null;
            } else {
                bbu.a(new TwitterScribeLog(this.f).b("messages:thread:::impression"));
                uri = k;
                mediaAttachment = null;
                str2 = f3;
                str = f2;
                z = false;
                z2 = false;
                obj = f;
                obj2 = l;
                z3 = a;
                list = null;
            }
        }
        this.d = str2;
        if (aj.b(charSequence2)) {
            activity.setTitle(charSequence2);
        } else {
            activity.setTitle(2131362928);
        }
        if (aj.b(charSequence)) {
            ((TwitterFragmentActivity) activity).b(charSequence);
        }
        super.c();
        LoaderManager loaderManager = getLoaderManager();
        loaderManager.initLoader(1, null, this);
        loaderManager.initLoader(2, null, this);
        if (this.ad) {
            loaderManager.initLoader(3, null, this);
        }
        a((PageableListView) ap().a);
        this.h = new dd(this);
        this.g = MediaAttachmentController.a(activity, this.h, "dm_group_avatar_composition", MediaType.g, 1, ComposerType.DIRECT_MESSAGE, this.e, "group_avatar_fragment_tag");
        this.j = (DMConversationMessageComposer) getView().findViewById(2131952328);
        this.j.setMessageComposerListener(this);
        if (this.ag) {
            this.j.setTypingEventProducer(this);
        }
        if (this.P) {
            V();
        }
        if (this.v) {
            R();
        }
        if (z) {
            ((cd) az()).a(this.ao.a());
        }
        a(mediaAttachment, uri, str, z3, list, z2);
        Resources resources = getResources();
        getView().getViewTreeObserver().addOnGlobalLayoutListener(new cz(this, resources.getDisplayMetrics().heightPixels - resources.getDimensionPixelSize(2131690566)));
    }

    private void d(int i) {
        if (getView().getHeight() < i) {
            if (!this.D && (Z() || X())) {
                c(false);
            }
            this.D = true;
            return;
        }
        this.D = false;
    }

    public void a(Intent intent, int i, Bundle bundle) {
        startActivityForResult(intent, i);
    }

    protected void c() {
    }

    protected void a(boolean z) {
        super.a(z);
        LoaderManager loaderManager = getLoaderManager();
        loaderManager.restartLoader(1, null, this);
        loaderManager.restartLoader(2, null, this);
        if (this.ad) {
            loaderManager.restartLoader(3, null, this);
        }
    }

    protected void a(com.twitter.refresh.widget.a aVar, boolean z) {
        long j = aVar.b;
        if (j <= 0) {
            return;
        }
        if (this.G.a() && (!this.I || !this.H)) {
            return;
        }
        if (Y()) {
            c(true);
            return;
        }
        int a = a(j);
        k ap = ap();
        if (a >= ap.a.getHeaderViewsCount() || !z) {
            ap.a(a, aVar.c);
        }
    }

    private void a(PageableListView pageableListView) {
        bdl cdVar = new cd(getActivity(), aD(), this, this.G, this.ad, this.ap, this.ae, (UserSettings) com.twitter.util.object.e.a(this.e.j()));
        cdVar.a(this.u);
        cdVar.b(this.v);
        pageableListView.setOnItemLongClickListener(new da(this, pageableListView));
        pageableListView.setOnItemClickListener(new db(this, cdVar, pageableListView, this));
        this.E = new ReadOnlyConversationFooterView(getContext());
        pageableListView.a();
        pageableListView.a(false);
        ap().a(cdVar);
        pageableListView.setOnPageScrollListener(new cg(this, pageableListView));
    }

    void m() {
        f fVar = new f(this.T, this.e, this.d);
        if (this.af) {
            fVar.a(this.ai);
        }
        c(fVar, 12, 0);
    }

    private void K() {
        if (!this.o) {
            this.o = true;
            if (!this.S) {
                this.p = true;
            }
        }
        com.twitter.library.api.dm.requests.e eVar = new com.twitter.library.api.dm.requests.e(getActivity(), this.e, this.d);
        ((PageableListView) ap().a).a(true);
        this.n = true;
        c(eVar, 6, 0);
    }

    private void L() {
        this.l.m();
        this.j.s();
    }

    private void M() {
        if (this.N) {
            this.j.t();
            Context activity = getActivity();
            com.twitter.android.util.t a = com.twitter.android.util.t.a(activity, "dm_found_media_tooltip", this.e.e());
            if (a.a()) {
                Tooltip.a(activity, 2131952724).a(2131362457).c(0).a(new ch(this)).a(activity.getSupportFragmentManager(), "found_media_tooltip_fragment_tag");
                a.b();
            }
        }
    }

    private void a(MediaAttachment mediaAttachment, Uri uri, String str, boolean z, Collection<Uri> collection, boolean z2) {
        M();
        Context activity = getActivity();
        this.m = MediaAttachmentController.a(activity, this, "dm_composition", MediaType.h, 1, ComposerType.DIRECT_MESSAGE, this.e, "media_upload_fragment_tag");
        this.l = new s(this.j, this, this, mediaAttachment, uri, collection);
        this.j.b(z2);
        this.j.a(str, z);
        this.l.a(GalleryGridFragment.a(activity), 3);
    }

    private void N() {
        bbu.a(new TwitterScribeLog(this.f).b("messages:thread:dm_compose_bar:media:dismiss"));
        this.l.c();
        this.l.p();
        W();
    }

    public void e() {
        if (this.a != null) {
            this.a.dismiss();
            this.a = null;
        }
        this.J.b();
        H();
        super.e();
    }

    public void onDestroy() {
        this.an.removeCallbacksAndMessages(null);
        z.a(getActivity()).b((ak) this);
        super.onDestroy();
    }

    public boolean n() {
        return this.j.o() || q();
    }

    public boolean p() {
        return (biw.a(this.d) || !this.u) && ao() && ((cd) az()).isEmpty();
    }

    public boolean q() {
        return this.l.k();
    }

    public void a(String str) {
        if (!str.equals(this.d)) {
            this.d = str;
            if (!this.ah) {
                D();
            }
            a(false);
        }
    }

    protected void a(com.twitter.app.common.list.t tVar) {
        super.a(tVar);
        tVar.c(2130968754);
    }

    protected Loader<Cursor> q_() {
        return new bu(getActivity(), ck.a(Uri.withAppendedPath(cr.a, this.d), this.f), bie.b, null, null, null);
    }

    public Loader<Cursor> onCreateLoader(int i, Bundle bundle) {
        switch (i) {
            case WireMessage.WIRE_CHAT /*1*/:
                return new xb(getActivity(), this.f, this.d);
            case WireMessage.WIRE_CONTROL /*2*/:
                return new xc(getActivity(), this.Y, this.d);
            case WireMessage.WIRE_AUTH /*3*/:
                return new bu(getActivity(), ck.a(cs.a, this.f), cs.b, "card_conversation_id=?", new String[]{this.d}, null);
            default:
                return null;
        }
    }

    public void a() {
        super.a();
        this.J.a(this.K);
        D();
    }

    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putParcelable("media_uri", this.l.h());
        bundle.putParcelable("media_attachment", this.l.l());
        bundle.putParcelableArrayList("canceled_pending_attachments", new ArrayList(this.l.e()));
        bundle.putString("text", this.j.getMessageText());
        bundle.putBoolean("error_dialog", this.i);
        bundle.putString("conversation_id", this.d);
        bundle.putBoolean("is_group_convo", this.u);
        bundle.putBoolean("has_sent_message", this.ac);
        bundle.putBoolean("read_only", this.v);
        bundle.putLong("report_entry_id", this.c);
        bundle.putBoolean("quick_emoji_visible", this.j.w());
        this.G.a(bundle);
        bundle.putBoolean("has_scrolled_to_last_read_marker", this.I);
        bundle.putBoolean("has_requested_older_messages", this.o);
        bundle.putBoolean("has_user_scrolled", this.q);
        TwitterFragmentActivity twitterFragmentActivity = (TwitterFragmentActivity) getActivity();
        CharSequence title = twitterFragmentActivity.getTitle();
        if (aj.b(title)) {
            bundle.putString("title", title.toString());
        }
        CharSequence K = twitterFragmentActivity.K();
        if (aj.b(K)) {
            bundle.putString("subtitle", K.toString());
        }
        if (this.ao != null) {
            bundle.putAll(this.ao.b());
        }
    }

    protected void a(cgu<Cursor> cgu_android_database_Cursor) {
        int i = 0;
        boolean Y = Y();
        long a = biw.a(aA());
        super.a((cgu) cgu_android_database_Cursor);
        Cursor e = ((cd) az()).e();
        if (!((cd) az()).isEmpty()) {
            asa.a("dm:conversation_load", aru.b(), ark.m).j();
            c(new o(getActivity(), this.e, this.d, true), 5, 0);
            if (this.p) {
                this.p = false;
                if (!this.q) {
                    ap().a.post(new ci(this));
                }
            } else {
                boolean z;
                if (this.G.c()) {
                    z = false;
                } else {
                    z = true;
                }
                this.G.a(e);
                a(e, Y, z, a);
            }
            if (this.P) {
                Cursor a2 = biw.a(aA(), a);
                if (a2 != null) {
                    i = biw.a(a2, a2.getPosition() + 1, this.f);
                }
                if (i > 0 && !f(i + 2)) {
                    this.O.c();
                }
            }
            if (this.ao != null && this.ao.a(new cgq(aA()))) {
                ((cd) az()).a(this.ao.a());
            }
            this.B = true;
        } else if (!(biw.a(this.d) || this.A || this.n)) {
            K();
            this.A = true;
        }
        aE().h();
    }

    public void a(Loader<Cursor> loader, Cursor cursor) {
        Context activity = getActivity();
        switch (loader.getId()) {
            case WireMessage.WIRE_CHAT /*1*/:
                cca cca = (cca) ObjectUtils.a((Object) cursor);
                if (cca.moveToNext()) {
                    b(!cca.l());
                    ((TwitterFragmentActivity) activity).b(cca.g());
                    i(cca.i());
                    aE().h();
                    this.w = cca.e();
                    this.x = cca.h();
                    ((cd) az()).a(this.x);
                    Collection b = cca.b();
                    if (this.M || b.isEmpty()) {
                        activity.setTitle(cca.f());
                        if (this.ao != null && this.ao.b(cca.a())) {
                            ((cd) az()).a(this.ao.a());
                        }
                    } else {
                        c(new bpm(activity, this.e).a(b), 13, 0);
                        this.M = true;
                    }
                    h(cca.k());
                    if (!this.L) {
                        R();
                        this.L = true;
                        if (this.v) {
                            e(cca.j());
                        }
                    }
                }
            case WireMessage.WIRE_CONTROL /*2*/:
                List b2 = b(cursor);
                if (!(b2 == null || this.ao == null || !this.ao.a(b2))) {
                    ((cd) az()).a(this.ao.a());
                }
                b(b2);
                aE().h();
            case WireMessage.WIRE_AUTH /*3*/:
                if (this.ad) {
                    ((cd) az()).a(c(cursor));
                    O();
                }
            default:
        }
    }

    public void onLoaderReset(Loader<Cursor> loader) {
    }

    private void b(List<Participant> list) {
        if (list != null) {
            this.z = CollectionUtils.e(com.twitter.util.collection.n.a(cto.a((Iterable) list, new cj(this))));
            if (this.b != null && this.z != null) {
                this.b.a(this.z);
                this.y = true;
            }
        }
    }

    private void O() {
        if (!this.W && this.B) {
            ((cd) az()).notifyDataSetChanged();
        }
    }

    private void a(Cursor cursor, boolean z, boolean z2, long j) {
        if (this.s) {
            g(false);
            c(false);
        } else if (this.G.a()) {
            if (z2) {
                e(cursor);
            } else if (z && a(cursor, j)) {
                c(false);
            }
        } else if (z) {
            c(false);
        } else if (!this.B) {
            P();
        }
    }

    private void P() {
        ap().a.post(new ck(this));
    }

    private boolean a(Cursor cursor, long j) {
        long a = biw.a(cursor);
        boolean z;
        if (this.ai == null || !this.ai.a() || this.ai.d()) {
            z = false;
        } else {
            z = true;
        }
        if (a > j || r2) {
            return true;
        }
        return false;
    }

    private void e(long j) {
        com.twitter.android.dm.e.a(getActivity(), j, new cl(this));
    }

    private void R() {
        if (!this.u) {
            if (this.v) {
                this.j.y();
                if (!this.F) {
                    ap().a.addFooterView(this.E, null, false);
                }
                this.F = true;
                return;
            }
            this.j.x();
            ap().a.removeFooterView(this.E);
            this.F = false;
        }
    }

    private List<Participant> b(Cursor cursor) {
        if (cursor == null) {
            return null;
        }
        int position = cursor.getPosition();
        com.twitter.util.collection.n d = com.twitter.util.collection.n.d();
        try {
            if (cursor.moveToFirst()) {
                a(d, cursor);
                while (cursor.moveToNext()) {
                    a(d, cursor);
                }
            }
            cursor.moveToPosition(position);
            return (List) d.q();
        } catch (Throwable th) {
            cursor.moveToPosition(position);
        }
    }

    private void a(com.twitter.util.collection.n<Participant> nVar, Cursor cursor) {
        Object a = new cdl(cursor).a();
        if (a.b != this.f) {
            nVar.c(a);
        }
    }

    private Map<Long, cly> c(Cursor cursor) {
        r d = r.d();
        if (this.ad && cursor != null) {
            Iterator it = new cgt(cursor, new cm(this)).iterator();
            while (it.hasNext()) {
                com.twitter.util.collection.z zVar = (com.twitter.util.collection.z) it.next();
                d.b(zVar.a(), zVar.b());
            }
        }
        return (Map) d.q();
    }

    private void b(boolean z) {
        this.t = z;
        aE().h();
    }

    public boolean a(w wVar) {
        super.a(wVar);
        wVar.a(2132017165);
        return true;
    }

    public int b(w wVar) {
        boolean z;
        boolean z2 = true;
        super.b(wVar);
        boolean z3 = ay() && ((cd) az()).getCount() > 0;
        ToolBar j = wVar.j();
        bca a = j.a(2131953435);
        a.b(z3);
        a.d(2131363077);
        boolean z4 = this.u;
        boolean a2 = biw.a(this.d);
        int i = this.t ? 2131362533 : 2131362534;
        bca a3 = j.a(2131953430);
        if (this.v || this.z == null || a2) {
            z = false;
        } else {
            z = true;
        }
        a3.b(z);
        a3 = j.a(2131953431);
        if (z4 && this.y && !a2) {
            z = true;
        } else {
            z = false;
        }
        a3.b(z);
        a3 = j.a(2131953432);
        if (!z4 || a2) {
            z = false;
        } else {
            z = true;
        }
        a3.b(z);
        a3 = j.a(2131953433);
        if (!z4 || a2) {
            z = false;
        } else {
            z = true;
        }
        a3.b(z);
        bca a4 = j.a(2131953434);
        if (a2) {
            z = false;
        } else {
            z = true;
        }
        a4.b(z).d(i).d(this.t);
        bca a5 = j.a(2131953436);
        if (a2) {
            z2 = false;
        }
        a5.b(z2);
        return 2;
    }

    public boolean a(com.twitter.library.client.navigation.ac acVar) {
        Context activity = getActivity();
        switch (acVar.a()) {
            case 2131953430:
                if (this.z == null || this.z.length < big.g()) {
                    bbu.a(new TwitterScribeLog(this.f).b("messages:thread::thread:add_participants"));
                    startActivityForResult(new Intent(activity, DMAddParticipantsActivity.class).putExtra("preselected_items", this.z), 1);
                } else {
                    Toast.makeText(activity, getString(2131362531), 0).show();
                }
                return true;
            case 2131953431:
                bbu.a(new TwitterScribeLog(this.f).b("messages:thread::thread:view_participants"));
                this.j.q();
                this.b.a();
                return true;
            case 2131953432:
                bbu.a(new TwitterScribeLog(this.f).b("messages:thread::thread:edit_name"));
                UpdateConversationNameDialog.a(this.w, this.d).a(this).a(activity.getSupportFragmentManager());
                return true;
            case 2131953433:
                bbu.a(new TwitterScribeLog(this.f).b("messages:thread::thread:edit_photo"));
                Resources resources = getResources();
                boolean b = aj.b(this.x);
                com.twitter.util.collection.n d = com.twitter.util.collection.n.d();
                com.twitter.util.collection.n d2 = com.twitter.util.collection.n.d();
                if (b) {
                    d2.c(Integer.valueOf(0));
                    d.c(resources.getString(2131364165));
                }
                d2.c(Integer.valueOf(1));
                d.c(resources.getString(2131361985));
                d2.c(Integer.valueOf(2));
                d.c(resources.getString(2131363329));
                if (b) {
                    d2.c(Integer.valueOf(3));
                    d.c(resources.getString(2131363469));
                }
                ((PromptDialogFragment) ((ec) new ec(779).a((CharSequence[]) ((List) d.q()).toArray(new String[d.i()]))).i().a((Fragment) this).a(new cn(this, (List) d2.q(), activity))).a(activity.getSupportFragmentManager());
                return true;
            case 2131953434:
                if ((acVar instanceof bca) && ((bca) acVar).n()) {
                    bbu.a(new TwitterScribeLog(this.f).b("messages:thread::thread:mute_dm_thread"));
                    c(new x(activity, this.e, this.d, true), 9, 0);
                } else {
                    bbu.a(new TwitterScribeLog(this.f).b("messages:thread::thread:unmute_dm_thread"));
                    c(new x(activity, this.e, this.d, false), 8, 0);
                }
                return true;
            case 2131953435:
                DeleteConversationDialog.a(769, this.u, this.d, "thread").a(this).a(activity.getSupportFragmentManager());
                return true;
            case 2131953436:
                ReportConversationDialog.a(777, this.u, this.d, "thread", this).a(this).a(activity.getSupportFragmentManager());
                return true;
            default:
                return super.a(acVar);
        }
    }

    public void onActivityResult(int i, int i2, Intent intent) {
        this.g.a(this.h.b(i), i2, intent, this.h);
        this.l.a(i, i2, intent);
        if (i2 == -1) {
            if (i == 1) {
                long[] longArrayExtra = intent.getLongArrayExtra("user_ids");
                if (longArrayExtra != null && longArrayExtra.length > 0) {
                    Context activity = getActivity();
                    ar b = ar.d().b(CollectionUtils.a(longArrayExtra));
                    if (this.u) {
                        this.k = new ProgressDialog(activity);
                        this.k.setProgressStyle(0);
                        this.k.setIndeterminate(true);
                        this.k.setCancelable(true);
                        this.k.show();
                        c(new com.twitter.library.api.dm.requests.a(activity, this.e, this.d, (Set) b.q()), 10, 0);
                        return;
                    }
                    startActivity(com.twitter.android.dm.r.a(activity, new com.twitter.android.dm.o().a(CollectionUtils.e((Collection) b.b(CollectionUtils.a(this.z)).q())).d()));
                    activity.finish();
                }
            } else if (i != 3 || intent == null) {
                if (i == 14 && PermissionRequestActivity.a(intent)) {
                    T();
                } else if (i == 2) {
                    if (intent != null) {
                        DraftAttachment a = v.a(intent);
                        if (a != null) {
                            this.l.a(new MediaAttachment(a));
                        }
                    }
                    v.a(ComposerType.DIRECT_MESSAGE, intent);
                } else if (i == 5 && intent != null) {
                    this.l.a((MediaAttachment) intent.getParcelableExtra("media_attachment"));
                } else if (i == 4 && PermissionRequestActivity.a(intent)) {
                    ac();
                }
            } else if (PermissionRequestActivity.a(intent)) {
                this.l.a();
            } else {
                W();
            }
        } else if (i == 2) {
            v.a(ComposerType.DIRECT_MESSAGE, null);
        }
    }

    public void b(String str) {
        bbw bbw = (TwitterScribeLog) new TwitterScribeLog(this.f).b("messages:thread:::send_dm");
        if (this.ab && !this.ac) {
            ScribeItem twitterScribeItem = new TwitterScribeItem();
            twitterScribeItem.v = "direct_share";
            bbw.a(twitterScribeItem);
        }
        bbu.a(bbw);
        this.ac = true;
        g(true);
        this.G.d();
        this.l.j();
        if (!this.l.g() || this.l.k()) {
            String uuid = UUID.randomUUID().toString();
            com.twitter.android.metrics.c.a(uuid, aG()).i();
            ((cd) az()).b(uuid);
            MediaAttachment l = this.l.l();
            c(a(uuid, str, l), 7, 0);
            bi.a(this.f, ComposerType.DIRECT_MESSAGE, l != null ? l.d() : null);
            this.l.n();
            this.j.n();
            L();
            this.B = true;
        }
    }

    public void r() {
        if (X()) {
            c(false);
        }
        ac();
    }

    public void s() {
        bbu.a(new TwitterScribeLog(this.f).b("messages:thread:dm_compose_bar:found_media:click"));
        this.l.a(true);
        v.a(getActivity(), 2, ComposerType.DIRECT_MESSAGE);
    }

    public void t() {
        if (X()) {
            c(false);
        }
    }

    private q a(String str, String str2, MediaAttachment mediaAttachment) {
        DraftAttachment d = mediaAttachment != null ? mediaAttachment.d() : null;
        q qVar = new q(getContext(), this.e, this.d, str, str2, null, null, d, c(mediaAttachment));
        y yVar = this.r;
        if (!this.l.w()) {
            d = null;
        }
        yVar.a(str, qVar, d);
        return qVar;
    }

    private boolean c(MediaAttachment mediaAttachment) {
        if (mediaAttachment == null || mediaAttachment.a == 0 || big.h()) {
            return false;
        }
        return mediaAttachment.a(3) instanceof EditableImage;
    }

    public boolean u() {
        return this.B;
    }

    public void a(DialogInterface dialogInterface, int i, int i2) {
        switch (i) {
            case 769:
                if (DeleteConversationDialog.a(i2)) {
                    this.j.q();
                    FragmentActivity activity = getActivity();
                    if (activity instanceof DMActivity) {
                        ((DMActivity) activity).o();
                    }
                    activity.finish();
                }
            case 770:
                if (this.c >= 0) {
                    this.G.d();
                    switch (i2) {
                        case mx.View_android_theme /*0*/:
                            bbu.a(new TwitterScribeLog(this.f).b("messages:thread:message:spam:report_as_spam"));
                            c(new ReportDMRequest(getActivity(), this.e, this.c, Type.a), 3, 0);
                            break;
                        case WireMessage.WIRE_CHAT /*1*/:
                            bbu.a(new TwitterScribeLog(this.f).b("messages:thread:message:abusive:report_as_spam"));
                            c(new ReportDMRequest(getActivity(), this.e, this.c, Type.b), 4, 0);
                            ((ec) ((ec) ((ec) new ec(771).b(2131363026)).d(2131364205)).f(2131363158)).i().a((Fragment) this).a(getActivity().getSupportFragmentManager());
                            break;
                    }
                }
                this.c = -1;
            case 771:
                if (i2 == -1) {
                    U();
                }
            case 778:
                if (i2 == -1) {
                    U();
                }
                ab();
            default:
        }
    }

    private void T() {
        if (com.twitter.android.media.camera.z.a(getActivity(), 1)) {
            this.g.a(false, 1, 1);
        } else {
            startActivityForResult(com.twitter.android.media.camera.z.a(getActivity(), 1, "messages:thread::thread"), 14);
        }
    }

    private void U() {
        startActivity(new Intent(getActivity(), WebViewActivity.class).setData(Uri.parse(getString(2131364411))));
    }

    public boolean a(int i) {
        Cursor cursor = (Cursor) ((cd) az()).getItem(i);
        if (cursor == null || !e(cursor.getInt(5))) {
            return false;
        }
        bhc d = d(cursor);
        DMMessageDialog.a(d.h() ? 775 : 772, d, this).a(this).a(getActivity().getSupportFragmentManager());
        return true;
    }

    public boolean b(int i) {
        Cursor cursor = (Cursor) ((cd) az()).getItem(i);
        if (cursor == null || !e(cursor.getInt(5))) {
            return false;
        }
        bhc d = d(cursor);
        DMTweetDialog.a(d.h() ? 774 : 773, d, this).a(this).a(getActivity().getSupportFragmentManager());
        return true;
    }

    private static bhc d(Cursor cursor) {
        return (bhc) new bhz().a(cursor);
    }

    private static boolean e(int i) {
        return chr.a.contains(Integer.valueOf(i));
    }

    private void f(long j) {
        ((ec) ((ec) new ec(770).a(2131363871)).c(2131427350)).i().a((Fragment) this).a(getActivity().getSupportFragmentManager());
        this.c = j;
    }

    public void a_(long j) {
        bbu.a(new TwitterScribeLog(this.f).b("messages:thread:rtf_message::report_as_spam"));
        c(new ReportDMRequest(getActivity(), this.e, j, Type.a), 3, 0);
    }

    public void b(long j) {
        bbu.a(new TwitterScribeLog(this.f).b("messages:thread:rtf_message::report_as_ok"));
        c(new ReportDMRequest(getActivity(), this.e, j, Type.c), 11, 0);
    }

    private void a(long j, boolean z) {
        g(true);
        c(new com.twitter.library.api.dm.requests.w(getActivity(), this.e, j, z), 2, 0);
    }

    private void c(boolean z) {
        if (!((cd) az()).isEmpty()) {
            ListView listView = ap().a;
            if (z) {
                listView.smoothScrollToPosition(listView.getCount() - 1);
            } else {
                listView.setSelection(listView.getCount() - 1);
            }
        }
    }

    private void e(Cursor cursor) {
        int c = this.G.c(cursor);
        if (c != -1) {
            if (c < aF() - 1) {
                ap().a(c + 1, (int) (((double) getView().getHeight()) * 0.2d));
            } else {
                c(false);
            }
            this.I = true;
        }
    }

    private void V() {
        this.O = (NewItemBannerView) getView().findViewById(2131951631);
        this.O.setText(2131362487);
        this.O.a();
        this.O.setShouldThrottleShowing(false);
        this.O.setOnClickListener(new cp(this));
    }

    protected void a(com.twitter.library.service.x xVar, int i, int i2) {
        int i3 = 2131362424;
        super.a(xVar, i, i2);
        aa aaVar = (aa) xVar.l().b();
        boolean z = !aaVar.b() && an.a(aaVar);
        switch (i) {
            case WireMessage.WIRE_CHAT /*1*/:
                if (!aaVar.b() && !z) {
                    Toast.makeText(this.T, 2131363070, 0).show();
                }
            case WireMessage.WIRE_CONTROL /*2*/:
            case UsernameError.ERROR_USERNAME_CHANGE_LIMIT_EXCEEDED /*7*/:
                SendDMRequest sendDMRequest = (SendDMRequest) xVar;
                if (!sendDMRequest.e()) {
                    com.twitter.android.metrics.c.a(sendDMRequest.at_(), aG()).a(aaVar.b());
                }
                long a;
                if (aaVar.b()) {
                    com.twitter.internal.network.k g = aaVar.g();
                    String f;
                    switch (g != null ? g.a : 0) {
                        case 200:
                            f = sendDMRequest.f();
                            if (f != null) {
                                a(f);
                            }
                            bji bji = ((SendDMRequest) xVar).a;
                            if (!bji.a.isEmpty()) {
                                Toast.makeText(this.T, bji.a().isEmpty() ? 2131362424 : 2131362425, 0).show();
                            }
                        case 202:
                            if (this.am) {
                                HttpOperation f2 = aaVar.f();
                                if (f2 == null) {
                                    f = null;
                                } else {
                                    f = f2.b("retry-after");
                                }
                                a = aj.a(f, 0);
                                if (a > 0) {
                                    this.an.postDelayed(new cq(this, sendDMRequest), a * 1000);
                                }
                            }
                        default:
                    }
                } else if (!z) {
                    switch (aaVar.d()) {
                        case 403:
                            Set g2 = sendDMRequest.g();
                            if (g2.contains(Integer.valueOf(349))) {
                                Toast.makeText(this.T, 2131362452, 0).show();
                                h(true);
                                R();
                            } else if (g2.contains(Integer.valueOf(150))) {
                                Toast.makeText(this.T, 2131362453, 0).show();
                                h(true);
                                R();
                            } else if (g2.contains(Integer.valueOf(226))) {
                                Toast.makeText(this.T, 2131362430, 0).show();
                            } else if (g2.contains(Integer.valueOf(344))) {
                                RateLimitDialogFragmentActivity.a(getActivity());
                            } else if (g2.contains(Integer.valueOf(354))) {
                                Toast.makeText(this.T, 2131362449, 0).show();
                            } else {
                                Toast.makeText(this.T, 2131362445, 0).show();
                            }
                        case 404:
                            Toast.makeText(this.T, 2131362450, 0).show();
                        case 420:
                        case 429:
                            Toast.makeText(this.T, 2131362451, 0).show();
                        default:
                            a = sendDMRequest.h();
                            if (!sendDMRequest.isCancelled() && a != -1) {
                                a(a, i);
                            }
                    }
                }
            case WireMessage.WIRE_AUTH /*3*/:
                if (aaVar.b()) {
                    Toast.makeText(this.T, 2131363028, 0).show();
                }
            case ControlMessage.CONTROL_PRESENCE /*4*/:
                if (aaVar.b()) {
                    Toast.makeText(this.T, 2131363024, 0).show();
                }
            case mx.UserView_actionButtonPaddingBottom /*6*/:
                ((PageableListView) ap().a).a(false);
                if (!aaVar.b()) {
                    if (aaVar.d() == 401 && this.C) {
                        Toast.makeText(this.T, 2131362436, 0).show();
                        Activity activity = getActivity();
                        if (activity != null) {
                            if (activity instanceof DMActivity) {
                                ((DMActivity) activity).o();
                            }
                            activity.finish();
                        }
                    }
                    this.Q = true;
                } else if (!((com.twitter.library.api.dm.requests.e) xVar).e()) {
                    this.Q = true;
                }
                this.n = false;
            case ControlMessage.CONTROL_BAN /*8*/:
                if (aaVar.b()) {
                    b(true);
                    Toast.makeText(this.T, 2131362490, 0).show();
                }
            case mx.TwitterEditText_messageSize /*9*/:
                if (aaVar.b()) {
                    b(false);
                    Toast.makeText(this.T, 2131362489, 0).show();
                }
            case mx.TwitterEditText_messageStyle /*10*/:
                com.twitter.library.api.dm.requests.a aVar = (com.twitter.library.api.dm.requests.a) xVar;
                if (this.k != null) {
                    this.k.hide();
                }
                if (aaVar.b()) {
                    bgt bgt = aVar.a;
                    if (bgt.a.isEmpty()) {
                        i3 = -1;
                    } else if (!bgt.a().isEmpty()) {
                        i3 = 2131362425;
                    }
                } else if (z) {
                    i3 = -1;
                } else if (403 == aaVar.d()) {
                    if (CollectionUtils.a(aVar.g(), 344)) {
                        RateLimitDialogFragmentActivity.a(getActivity());
                        i3 = -1;
                    }
                } else if (420 == aaVar.d() || 429 == aaVar.d()) {
                    i3 = 2131362426;
                }
                if (i3 != -1) {
                    Toast.makeText(this.T, i3, 0).show();
                }
            case mx.TwitterEditText_characterCounterMode /*13*/:
                if (aaVar.b()) {
                    getLoaderManager().restartLoader(1, null, this);
                }
            case mx.TwitterButton_strokeWidth /*15*/:
                if (!aaVar.b() && !z) {
                    Toast.makeText(this.T, 2131362439, 0).show();
                }
            case mx.TwitterButton_nodpiBaseIconName /*16*/:
                if (!aaVar.b()) {
                    O();
                    Toast.makeText(this.T, 2131363216, 0).show();
                }
            case mx.TwitterButton_bounded /*17*/:
                if (!aaVar.b()) {
                }
            default:
        }
    }

    private void W() {
        this.l.o();
        L();
    }

    private boolean X() {
        return this.G.a() && !this.R;
    }

    public boolean a(MediaAttachment mediaAttachment) {
        this.l.d(mediaAttachment.a());
        return true;
    }

    public void a(List<MediaAttachment> list) {
        if (list.isEmpty()) {
            this.l.a(false);
            W();
            return;
        }
        MediaAttachment mediaAttachment = (MediaAttachment) com.twitter.util.object.e.a(CollectionUtils.c((List) list));
        if (mediaAttachment.a == 1) {
            this.l.a(false);
            if (mediaAttachment.b != MediaAttachFailure.CANCELED) {
                CharSequence a;
                W();
                if (mediaAttachment.b == MediaAttachFailure.GIF_TOO_LARGE) {
                    a = abw.a(getContext());
                } else {
                    a = getString(2131362927);
                }
                Toast.makeText(getActivity(), a, 1).show();
            } else if (!this.l.g()) {
                this.l.q();
            }
        } else if (mediaAttachment.a == 0) {
            if (!this.l.c(mediaAttachment.a())) {
                this.l.a(false);
                boolean i = this.l.i();
                this.l.d(null);
                this.l.c(mediaAttachment);
                if (Z()) {
                    P();
                }
                if (i) {
                    b(this.j.getMessageText().trim());
                }
            }
        } else if (mediaAttachment.a == 3) {
            this.l.c(mediaAttachment);
        }
    }

    private void a(long j, int i) {
        if (this.i || i == 2) {
            ((ec) ((ec) ((ec) ((ec) new ec(776).a(2131362413)).b(2131363374)).d(2131363491)).f(2131362041)).i().a(new ct(this, j)).a(getActivity().getSupportFragmentManager());
            this.i = false;
        }
    }

    public int v() {
        return 4;
    }

    public n w() {
        return n.b(getArguments());
    }

    public boolean a(ad adVar, long j) {
        return j == this.f && ah() && this.d != null && this.d.equals(adVar.k);
    }

    public void a(xk xkVar) {
        this.b = xkVar;
    }

    private void g(boolean z) {
        this.s = z;
    }

    private void h(boolean z) {
        if (this.v != z) {
            this.v = z;
            if (ay()) {
                ((cd) az()).b(z);
            }
        }
    }

    private void i(boolean z) {
        if (this.u != z) {
            this.u = z;
            if (ay()) {
                ((cd) az()).a(z);
            }
        }
    }

    private boolean Y() {
        return f(2);
    }

    private boolean Z() {
        return f(8);
    }

    private boolean f(int i) {
        return aa() <= i;
    }

    private int aa() {
        ListView listView = ap().a;
        return ((listView.getCount() - listView.getHeaderViewsCount()) - listView.getFooterViewsCount()) - listView.getLastVisiblePosition();
    }

    public void c(long j) {
        a(j, false);
    }

    public void d(long j) {
        f(j);
    }

    public void G_() {
        this.r.b();
        ab();
    }

    public void c(String str) {
        this.r.b(str);
        this.G.d();
    }

    public void y() {
        this.G.d();
    }

    public void a(long j, String str) {
        this.r.b(str);
        String a = this.r.a(str);
        if (a != null) {
            az.a(getActivity()).a(a, true);
        }
        h(j);
    }

    private void h(long j) {
        Context activity = getActivity();
        az.a(activity).a(new com.twitter.android.dm.x(activity, this.e, j));
        Toast.makeText(activity, 2131363069, 0).show();
    }

    private void ab() {
        this.j.q();
        getActivity().finish();
    }

    public void H_() {
        this.r.b();
        ((ec) ((ec) ((ec) new ec(778).b(this.u ? 2131363029 : 2131363030)).d(2131364205)).f(2131363158)).i().a((j) this).a((Fragment) this).a(getActivity().getSupportFragmentManager());
    }

    public void a(DialogInterface dialogInterface, int i) {
        if (i == 778) {
            ab();
        }
    }

    public static void a(Context context, String str) {
        String a = DMGroupAvatarImageVariant.a(str, DMGroupAvatarImageVariant.FULL);
        context.startActivity(new u().d(true).a(context, ImageActivity.class).setData(Uri.parse(a)).putExtra("image_url", a));
    }

    private void ac() {
        Context activity = getActivity();
        if (GalleryGridFragment.a(activity)) {
            startActivityForResult((Intent) new gs().a(activity).a("dm_composition").b("messages:thread:dm_compose_bar:media").a(true).a(1).q(), 5);
        } else {
            c(4);
        }
    }

    public void I_() {
        if (this.al != null) {
            this.al.b_(this.d);
        }
    }

    public void b(MediaAttachment mediaAttachment) {
        AttachmentMediaView a = this.j.a(mediaAttachment);
        if (a != null) {
            a.setOnAttachmentActionListener(new cu(this));
        }
        if (mediaAttachment != null) {
            this.j.z();
        }
    }

    public void a(MediaAttachment mediaAttachment, AttachMediaListener attachMediaListener) {
        this.m.a(mediaAttachment, attachMediaListener);
    }

    public void a(Uri uri, AttachMediaListener attachMediaListener) {
        this.m.a(uri, true, attachMediaListener);
    }

    public void b(Uri uri, AttachMediaListener attachMediaListener) {
        this.m.a(uri, attachMediaListener);
    }

    public void B() {
        this.m.h();
    }

    public void a(Uri uri) {
        this.m.a(uri);
    }

    public void a(int i, int i2, Intent intent, AttachMediaListener attachMediaListener) {
        this.m.a(i, i2, intent, attachMediaListener);
    }

    public void c(int i) {
        startActivityForResult(new b(getString(2131362739), getActivity(), "android.permission.WRITE_EXTERNAL_STORAGE").f("messages:thread:dm_compose_bar:media").a(true).a(), i);
    }
}
