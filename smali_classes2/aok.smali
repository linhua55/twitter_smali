.class public Laok;
.super Lanz;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lanz",
        "<",
        "Lclb;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Laom;


# direct methods
.method public constructor <init>(Laom;Lcom/twitter/android/r;Lcom/twitter/android/util/ah;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p2, p3}, Lanz;-><init>(Lcom/twitter/android/r;Lcom/twitter/android/util/ah;)V

    .line 22
    iput-object p1, p0, Laok;->a:Laom;

    .line 23
    return-void
.end method


# virtual methods
.method public a(Lclb;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Laok;->a:Laom;

    invoke-virtual {v0, p2}, Laom;->a(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 14
    check-cast p1, Lclb;

    invoke-virtual {p0, p1, p2}, Laok;->a(Lclb;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic a(Lckn;I)Lanp;
    .locals 1

    .prologue
    .line 14
    check-cast p1, Lclb;

    invoke-virtual {p0, p1, p2}, Laok;->a(Lclb;I)Lanp;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lclb;I)Lanp;
    .locals 6

    .prologue
    .line 40
    new-instance v1, Lanr;

    const/4 v2, 0x2

    iget-object v0, p1, Lclb;->b:Lcks;

    check-cast v0, Lcla;

    invoke-virtual {v0}, Lcla;->c()J

    move-result-wide v4

    invoke-direct {v1, p2, v2, v4, v5}, Lanr;-><init>(IIJ)V

    iget-object v0, p1, Lclb;->c:Lcom/twitter/model/core/Tweet;

    .line 41
    invoke-virtual {v1, v0}, Lanr;->a(Lcom/twitter/model/core/Tweet;)Lanr;

    move-result-object v0

    .line 42
    invoke-virtual {v0}, Lanr;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanp;

    .line 40
    return-object v0
.end method

.method public bridge synthetic a(Landroid/view/View;Lckn;I)V
    .locals 0

    .prologue
    .line 14
    check-cast p2, Lclb;

    invoke-virtual {p0, p1, p2, p3}, Laok;->a(Landroid/view/View;Lclb;I)V

    return-void
.end method

.method public a(Landroid/view/View;Lclb;I)V
    .locals 4

    .prologue
    .line 33
    invoke-super {p0, p1, p2, p3}, Lanz;->a(Landroid/view/View;Lckn;I)V

    .line 34
    iget-object v0, p0, Laok;->a:Laom;

    iget-object v1, p2, Lclb;->c:Lcom/twitter/model/core/Tweet;

    const-string/jumbo v2, "mention"

    invoke-virtual {p0, p2}, Laok;->a(Lckn;)Z

    move-result v3

    invoke-virtual {v0, p1, v1, v2, v3}, Laom;->a(Landroid/view/View;Lcom/twitter/model/core/Tweet;Ljava/lang/String;Z)V

    .line 35
    return-void
.end method

.method public bridge synthetic a(Landroid/view/View;Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 14
    check-cast p2, Lclb;

    invoke-virtual {p0, p1, p2, p3}, Laok;->a(Landroid/view/View;Lclb;I)V

    return-void
.end method
