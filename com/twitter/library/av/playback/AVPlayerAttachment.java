package com.twitter.library.av.playback;

import com.twitter.library.av.playback.AVPlayer.PlayerPauseType;
import com.twitter.library.av.s;
import com.twitter.library.scribe.TwitterScribeAssociation;
import defpackage.bqk;

/* compiled from: Twttr */
public class AVPlayerAttachment implements aw {
    public AttachmentState a;
    private final AVPlayer b;
    private final bqk c;
    private final aw d;
    private s e;
    private final TwitterScribeAssociation f;

    public AVPlayerAttachment(AVPlayer aVPlayer, bqk bqk, TwitterScribeAssociation twitterScribeAssociation) {
        this(aVPlayer, bqk, twitterScribeAssociation, new ax(aVPlayer));
    }

    AVPlayerAttachment(AVPlayer aVPlayer, bqk bqk, TwitterScribeAssociation twitterScribeAssociation, aw awVar) {
        this.a = AttachmentState.a;
        this.b = aVPlayer;
        this.c = bqk;
        this.f = twitterScribeAssociation;
        this.d = awVar;
    }

    public AVPlayer a() {
        return this.b;
    }

    public bqk b() {
        return this.c;
    }

    public AttachmentState c() {
        return this.a;
    }

    public AVPlayerAttachment a(AttachmentState attachmentState) {
        this.a = attachmentState;
        return this;
    }

    public s d() {
        return this.e;
    }

    public boolean e() {
        return this.a == AttachmentState.c;
    }

    public TwitterScribeAssociation f() {
        return this.f;
    }

    public AVPlayerAttachment a(s sVar) {
        if (sVar != null) {
            sVar = cb.a(sVar);
        }
        this.e = sVar;
        if (sVar != null) {
            this.b.a(sVar);
            if (c() == AttachmentState.c) {
                sVar.h();
            }
        }
        return this;
    }

    public void g() {
        s sVar = this.e;
        if (sVar != null) {
            this.b.a(sVar);
        }
    }

    public au h() {
        return this.b.e();
    }

    public AVPlayerAttachment i() {
        this.b.f().c(this);
        return this;
    }

    public AVPlayerAttachment j() {
        Object obj = (this.b.u() || (this.b.t() && this.b.E())) ? 1 : null;
        if (obj != null) {
            a(PlayerPauseType.a);
        }
        this.b.f().d(this);
        return this;
    }

    public void k() {
        s sVar = this.e;
        if (sVar != null) {
            sVar.h();
            g();
        }
        boolean z = this.b.y() && this.b.q() == PlayerPauseType.a;
        if (z) {
            a(false);
        }
    }

    public void l() {
        s sVar = this.e;
        if (sVar != null) {
            sVar.i();
        }
    }

    public void a(boolean z) {
        if (this.a == AttachmentState.c) {
            this.d.a(z);
        }
    }

    public void m() {
        a(PlayerPauseType.b);
    }

    public void a(PlayerPauseType playerPauseType) {
        if (this.a == AttachmentState.c) {
            this.d.a(playerPauseType);
        }
    }

    public void n() {
        this.d.n();
    }

    public void o() {
        if (this.a == AttachmentState.c) {
            this.d.o();
        }
    }

    public void a(float f) {
        if (this.a == AttachmentState.c) {
            this.d.a(f);
        }
    }

    public void p() {
        if (this.a == AttachmentState.c) {
            this.d.p();
        }
    }
}
