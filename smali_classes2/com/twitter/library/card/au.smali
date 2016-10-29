.class public abstract Lcom/twitter/library/card/au;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/library/widget/renderablecontent/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/twitter/library/widget/renderablecontent/c",
        "<",
        "Lcom/twitter/library/card/av;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/twitter/library/card/v;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/res/Configuration;)V
    .locals 0

    .prologue
    .line 83
    return-void
.end method

.method protected a(Lcom/twitter/library/card/v;)V
    .locals 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/twitter/library/card/au;->a:Lcom/twitter/library/card/v;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/library/card/au;->a:Lcom/twitter/library/card/v;

    invoke-virtual {v0, p1}, Lcom/twitter/library/card/v;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "The cache key has already been assigned"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_0
    iput-object p1, p0, Lcom/twitter/library/card/au;->a:Lcom/twitter/library/card/v;

    .line 38
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 53
    return-void
.end method

.method public ao_()V
    .locals 0

    .prologue
    .line 68
    return-void
.end method

.method public ap_()V
    .locals 0

    .prologue
    .line 45
    return-void
.end method

.method public aq_()V
    .locals 0

    .prologue
    .line 75
    return-void
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 61
    return-void
.end method

.method protected r()Lcom/twitter/library/card/v;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/twitter/library/card/au;->a:Lcom/twitter/library/card/v;

    return-object v0
.end method
