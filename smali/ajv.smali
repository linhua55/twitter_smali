.class public Lajv;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lalk;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lalk",
        "<",
        "Lcom/twitter/model/moments/viewmodels/MomentPage;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Laju;


# direct methods
.method constructor <init>(Laju;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lajv;->a:Laju;

    .line 32
    return-void
.end method

.method public static a(Landroid/view/LayoutInflater;Lcom/twitter/model/moments/viewmodels/MomentPage;)Lajv;
    .locals 2

    .prologue
    .line 23
    invoke-virtual {p1}, Lcom/twitter/model/moments/viewmodels/MomentPage;->f()Lcom/twitter/model/moments/ad;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/ad;

    invoke-static {v0}, Lcey;->a(Lcom/twitter/model/moments/ad;)Z

    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    invoke-static {p0}, Laju;->a(Landroid/view/LayoutInflater;)Laju;

    move-result-object v0

    .line 27
    :goto_0
    new-instance v1, Lajv;

    invoke-direct {v1, v0}, Lajv;-><init>(Laju;)V

    return-object v1

    .line 26
    :cond_0
    invoke-static {p0}, Laju;->b(Landroid/view/LayoutInflater;)Laju;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/twitter/model/moments/viewmodels/MomentPage;Lcom/twitter/model/core/Tweet;)V
    .locals 0

    .prologue
    .line 37
    return-void
.end method

.method public aK_()Landroid/view/View;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lajv;->a:Laju;

    invoke-virtual {v0}, Laju;->a()Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public aX_()Lrx/w;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/w",
            "<",
            "Lalk",
            "<",
            "Lcom/twitter/model/moments/viewmodels/MomentPage;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 42
    invoke-static {p0}, Lrx/w;->a(Ljava/lang/Object;)Lrx/w;

    move-result-object v0

    return-object v0
.end method

.method public c()V
    .locals 0

    .prologue
    .line 47
    return-void
.end method
