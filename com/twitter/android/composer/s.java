package com.twitter.android.composer;

import com.twitter.android.nativecards.pollcompose.p;
import com.twitter.model.drafts.DraftAttachment;

/* compiled from: Twttr */
class s implements p {
    final /* synthetic */ ComposerActivity a;

    s(ComposerActivity composerActivity) {
        this.a = composerActivity;
    }

    public void a() {
        this.a.aa.a(this.a.aL.e());
        this.a.i.h();
        this.a.ad();
        this.a.C();
        this.a.g(false);
        this.a.i.a(null, 5);
        this.a.t.setSelected(true);
    }

    public void b() {
        this.a.aa.a(this.a.aL.e());
        this.a.C();
    }

    public void c() {
        this.a.aa.a(null);
        this.a.aa.a(1);
        this.a.i.i();
        this.a.i.setImeActionLabel(this.a.getText(this.a.j));
        this.a.ad();
        this.a.C();
        this.a.t.setSelected(false);
        this.a.i.requestFocus();
    }

    public void a(DraftAttachment draftAttachment) {
        this.a.aa.a(draftAttachment);
    }

    public void b(DraftAttachment draftAttachment) {
        this.a.aa.a(draftAttachment.e);
    }
}
