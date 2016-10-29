.class public Laoa;
.super Lanz;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lanz",
        "<",
        "Lckw;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/twitter/android/r;Lcom/twitter/android/util/ah;)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lanz;-><init>(Lcom/twitter/android/r;Lcom/twitter/android/util/ah;)V

    .line 25
    invoke-static {}, Lcom/twitter/util/collection/MutableList;->a()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Laoa;->a:Ljava/util/List;

    .line 30
    return-void
.end method


# virtual methods
.method public a(Lckw;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 35
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040020

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 22
    check-cast p1, Lckw;

    invoke-virtual {p0, p1, p2}, Laoa;->a(Lckw;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic a(Lckn;I)Lanp;
    .locals 1

    .prologue
    .line 22
    check-cast p1, Lckw;

    invoke-virtual {p0, p1, p2}, Laoa;->a(Lckw;I)Lanp;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lckw;I)Lanp;
    .locals 6

    .prologue
    .line 48
    new-instance v1, Lanr;

    const/16 v2, 0x8

    iget-object v0, p1, Lckw;->b:Lcks;

    check-cast v0, Lcle;

    invoke-virtual {v0}, Lcle;->a()J

    move-result-wide v4

    invoke-direct {v1, p2, v2, v4, v5}, Lanr;-><init>(IIJ)V

    invoke-virtual {v1}, Lanr;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanp;

    return-object v0
.end method

.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Laoa;->a:Ljava/util/List;

    return-object v0
.end method

.method public a(J)V
    .locals 3

    .prologue
    .line 52
    iget-object v0, p0, Laoa;->a:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    return-void
.end method

.method public bridge synthetic a(Landroid/view/View;Lckn;I)V
    .locals 0

    .prologue
    .line 22
    check-cast p2, Lckw;

    invoke-virtual {p0, p1, p2, p3}, Laoa;->a(Landroid/view/View;Lckw;I)V

    return-void
.end method

.method public a(Landroid/view/View;Lckw;I)V
    .locals 6

    .prologue
    .line 40
    invoke-super {p0, p1, p2, p3}, Lanz;->a(Landroid/view/View;Lckn;I)V

    .line 41
    invoke-static {p1}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/GapView;

    .line 42
    iget-object v2, p0, Laoa;->a:Ljava/util/List;

    iget-object v1, p2, Lckw;->b:Lcks;

    check-cast v1, Lcle;

    invoke-virtual {v1}, Lcle;->d()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/GapView;->setSpinnerActive(Z)V

    .line 43
    return-void
.end method

.method public bridge synthetic a(Landroid/view/View;Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 22
    check-cast p2, Lckw;

    invoke-virtual {p0, p1, p2, p3}, Laoa;->a(Landroid/view/View;Lckw;I)V

    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Laoa;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 62
    return-void
.end method
