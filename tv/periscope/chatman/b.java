package tv.periscope.chatman;

import defpackage.dde;
import defpackage.ddg;
import defpackage.ddj;
import tv.periscope.android.library.p;
import tv.periscope.chatman.api.AuthMessage;
import tv.periscope.chatman.api.ChatMessage;
import tv.periscope.chatman.api.ControlMessage;
import tv.periscope.chatman.api.ControlMessage.Join;
import tv.periscope.chatman.api.WireMessage;
import tv.periscope.chatman.model.q;

/* compiled from: Twttr */
class b implements h {
    final /* synthetic */ a a;

    b(a aVar) {
        this.a = aVar;
    }

    public void a(f fVar, String str) {
        this.a.m = null;
        this.a.n = new e(this.a, fVar);
        this.a.b.offerFirst(WireMessage.create(ControlMessage.create(new Join(str))));
        if (ddg.b(this.a.k)) {
            ddj.e("CM", "connected, queue rejoin room=" + str);
            this.a.c.b(str);
        } else {
            ddj.e("CM", "connected, queue join room=" + str);
            this.a.k = str;
            this.a.c.a(str);
        }
        this.a.b.offerFirst(WireMessage.create(new AuthMessage(fVar.b)));
        a.a.execute(this.a.n);
    }

    public void a(f fVar) {
        if (this.a.n != null && this.a.n.b == fVar) {
            this.a.n.a();
            this.a.n = null;
        }
        if (this.a.l) {
            this.a.a(this.a.k);
        }
    }

    public void a(WireMessage wireMessage, String str) throws Exception {
        switch (wireMessage.kind) {
            case p.View_android_focusable /*1*/:
                if ((this.a.g & 2) != 0) {
                    ChatMessage chatMessage = (ChatMessage) dde.a.a(wireMessage.payload, ChatMessage.class);
                    ddj.e("CM", "decoded chat message: " + chatMessage);
                    this.a.c.a(q.a(chatMessage.room, chatMessage.body, chatMessage.sender, chatMessage.timestamp, str));
                    break;
                }
                ddj.e("CM", "read not allowed. cap=" + this.a.g);
                break;
            case p.View_paddingStart /*2*/:
                ControlMessage controlMessage = (ControlMessage) dde.a.a(wireMessage.payload, ControlMessage.class);
                ddj.e("CM", "decoded control message: " + controlMessage);
                this.a.a(controlMessage);
                break;
            default:
                throw new UnexpectedMessageException("Unexpected message kind=" + wireMessage.kind);
        }
        this.a.i = this.a.i + 1;
    }

    public void a(WireMessage wireMessage) {
        this.a.j = this.a.j + 1;
    }

    public void a(int i) {
        switch (i) {
            case 1000:
            case 4000:
                this.a.c();
            default:
        }
    }
}
