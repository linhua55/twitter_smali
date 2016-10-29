.class public Lcom/twitter/android/moments/ui/fullscreen/ds;
.super Ljava/lang/Object;
.source "Twttr"


# direct methods
.method public static a(Landroid/content/res/Resources;Lcom/twitter/model/moments/viewmodels/ai;)Lcom/twitter/model/moments/bd;
    .locals 4

    .prologue
    .line 15
    invoke-interface {p1}, Lcom/twitter/model/moments/viewmodels/ai;->v()Lcom/twitter/model/moments/bd;

    move-result-object v0

    new-instance v1, Lcom/twitter/model/moments/bd;

    const v2, 0x7f120170

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    const v3, 0x7f1200e4

    .line 16
    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/twitter/model/moments/bd;-><init>(II)V

    .line 15
    invoke-static {v0, v1}, Lcom/twitter/util/object/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/bd;

    return-object v0
.end method
