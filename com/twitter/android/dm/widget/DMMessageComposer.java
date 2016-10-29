package com.twitter.android.dm.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import bbu;
import com.twitter.android.composer.ComposerType;
import com.twitter.android.composer.TweetBox;
import com.twitter.android.composer.ch;
import com.twitter.android.dm.DMEmojiComposeView;
import com.twitter.android.dm.i;
import com.twitter.android.dm.q;
import com.twitter.android.dm.u;
import com.twitter.android.media.selection.MediaAttachment;
import com.twitter.android.media.widget.AttachmentMediaView;
import com.twitter.android.media.widget.InlineComposerMediaLayout;
import com.twitter.android.media.widget.InlineComposerMediaScrollView;
import com.twitter.android.media.widget.au;
import com.twitter.android.util.v;
import com.twitter.android.wa;
import com.twitter.library.client.bg;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.util.ui.r;

/* compiled from: Twttr */
public abstract class DMMessageComposer extends RelativeLayout implements OnClickListener, ch, q, u, au {
    final TweetBox a;
    final Button b;
    final View c;
    private final Context d;
    private final ViewGroup e;
    private final DMEmojiComposeView f;
    private final ImageView g;
    private final View h;
    private final InlineComposerMediaLayout i;
    private final InlineComposerMediaScrollView j;
    private final AttachmentMediaView k;
    private final long l;
    private d m;
    private wa n;
    private boolean o;

    abstract void m();

    protected DMMessageComposer(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    protected DMMessageComposer(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.d = context;
        this.l = bg.a().c().g();
        inflate(context, 2130968752, this);
        this.e = (ViewGroup) findViewById(2131952688);
        this.a = (TweetBox) this.e.findViewById(2131952726);
        this.a.setTweetBoxListener(this);
        this.a.setMaxChars(-1);
        this.a.setImeActionLabel(getResources().getText(2131363370));
        this.a.setAttachmentsUseSecureUrls(true);
        this.b = (Button) this.e.findViewById(2131952324);
        this.b.setOnClickListener(this);
        this.f = (DMEmojiComposeView) findViewById(2131952327);
        this.c = this.e.findViewById(2131952325);
        this.g = (ImageView) this.e.findViewById(2131952723);
        this.g.setOnClickListener(this);
        this.h = v.a(context) ? this.e.findViewById(2131952724) : null;
        this.i = (InlineComposerMediaLayout) this.e.findViewById(2131952720);
        this.j = (InlineComposerMediaScrollView) this.i.findViewById(2131952721);
        this.j.setActionListener(this);
        this.k = (AttachmentMediaView) this.j.findViewById(2131952488);
    }

    public String getMessageText() {
        return this.a.getText();
    }

    public void n() {
        this.a.a(TtmlNode.ANONYMOUS_REGION_ID, null);
    }

    public boolean o() {
        return this.a.d();
    }

    public void p() {
        this.a.a(true);
    }

    public void q() {
        this.a.a(false);
    }

    public void r() {
        this.a.f();
    }

    public void s() {
        this.a.g();
    }

    public void b(boolean z) {
        this.f.setListener(this);
        this.c.setOnClickListener(this);
        this.e.getViewTreeObserver().addOnGlobalLayoutListener(new c(this, z));
        this.o = z;
    }

    public void t() {
        if (this.h != null) {
            this.h.setVisibility(0);
            this.h.setOnClickListener(this);
        }
    }

    public void onClick(View view) {
        int id = view.getId();
        if (id == 2131952325) {
            this.m.t();
            u();
        } else if (id == 2131952324) {
            this.m.b(this.a.getText().trim());
        } else if (id == 2131952723) {
            this.m.r();
        } else if (id == 2131952724) {
            this.m.s();
        }
    }

    public void a(String str) {
        this.m.b(str);
        v();
        bbu.a(new TwitterScribeLog(this.l).b(new String[]{"messages:thread:dm_compose_bar:suggestions:send_dm"}));
    }

    public void d() {
        v();
        bbu.a(new TwitterScribeLog(this.l).b(new String[]{"messages:thread:dm_compose_bar:suggestions:cancel"}));
    }

    public void u() {
        i.a(this.f, 300);
        i.d(this.e, 300, getWidth());
        this.o = true;
        bbu.a(new TwitterScribeLog(this.l).b(new String[]{"messages:thread:dm_compose_bar:suggestions:impression"}));
    }

    public void v() {
        i.c(this.f, 300, getWidth());
        i.a(this.e, 300);
        this.o = false;
    }

    public boolean w() {
        return this.o;
    }

    public void x() {
        this.e.setVisibility(0);
    }

    public void y() {
        this.e.setVisibility(8);
    }

    public void setMessageComposerListener(d dVar) {
        this.m = dVar;
    }

    public void i() {
        this.g.setVisibility(0);
    }

    public void j() {
        this.g.setVisibility(8);
    }

    public void k() {
        if (this.h != null) {
            this.h.setVisibility(0);
        }
    }

    public void l() {
        if (this.h != null) {
            this.h.setVisibility(8);
        }
    }

    public AttachmentMediaView a(MediaAttachment mediaAttachment) {
        return this.i.a(mediaAttachment, ComposerType.c);
    }

    public void e() {
        this.i.setVisibility(0);
        r();
    }

    public void f() {
        this.i.setVisibility(8);
    }

    public boolean g() {
        return this.i.isShown();
    }

    public boolean h() {
        return this.k.g();
    }

    public void z() {
        this.j.setVisibility(0);
    }

    public void setTypingEventProducer(wa waVar) {
        this.n = waVar;
    }

    public void a(InlineComposerMediaScrollView inlineComposerMediaScrollView) {
        if (this.a != null && this.a.hasFocus()) {
            r.b(this.d, this.a, false);
        }
    }

    public void a(int i) {
        m();
        if (this.n != null) {
            this.n.I_();
        }
    }

    public void a() {
    }

    public void b() {
        this.m.b(getMessageText().trim());
    }

    public void a(boolean z) {
    }

    public void c() {
    }

    public boolean a(KeyEvent keyEvent) {
        return false;
    }
}
