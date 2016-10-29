package defpackage;

import com.twitter.model.drafts.DraftAttachment;

/* compiled from: Twttr */
/* renamed from: bin */
public class bin extends bhg<bin, bim> {
    private int i;
    private int j;
    private DraftAttachment k;

    protected /* synthetic */ Object c() {
        return d();
    }

    public bin(bim bim) {
        super(bim);
        this.i = bim.j;
        this.j = bim.k;
        this.k = bim.l;
    }

    public bin b(int i) {
        this.i = i;
        return this;
    }

    public bin a(DraftAttachment draftAttachment) {
        this.k = draftAttachment;
        return this;
    }

    public bin c(int i) {
        this.j = i;
        return this;
    }

    protected bim d() {
        return new bim(this);
    }
}
