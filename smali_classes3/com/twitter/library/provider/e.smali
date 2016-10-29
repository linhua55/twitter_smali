.class public Lcom/twitter/library/provider/e;
.super Lcom/twitter/library/provider/i;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/library/provider/i",
        "<",
        "Lcom/twitter/library/provider/c;",
        "Lcom/twitter/library/provider/e;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/twitter/library/database/dm/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/twitter/library/provider/i;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/library/database/dm/d;)Lcom/twitter/library/provider/e;
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/twitter/library/provider/e;->a:Lcom/twitter/library/database/dm/d;

    .line 60
    return-object p0
.end method

.method protected synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/twitter/library/provider/e;->e()Lcom/twitter/library/provider/c;

    move-result-object v0

    return-object v0
.end method

.method protected e()Lcom/twitter/library/provider/c;
    .locals 2

    .prologue
    .line 66
    new-instance v0, Lcom/twitter/library/provider/c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/twitter/library/provider/c;-><init>(Lcom/twitter/library/provider/e;Lcom/twitter/library/provider/d;)V

    return-object v0
.end method
