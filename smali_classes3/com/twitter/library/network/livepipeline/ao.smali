.class public final Lcom/twitter/library/network/livepipeline/ao;
.super Lcom/twitter/library/network/livepipeline/ai;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/library/network/livepipeline/ai",
        "<",
        "Lcom/twitter/library/network/livepipeline/an;",
        "Lcom/twitter/library/network/livepipeline/ao;",
        ">;"
    }
.end annotation


# instance fields
.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/twitter/library/network/livepipeline/ai;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/twitter/library/network/livepipeline/ao;
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/twitter/library/network/livepipeline/ao;->c:Ljava/lang/String;

    .line 30
    return-object p0
.end method

.method protected synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/twitter/library/network/livepipeline/ao;->e()Lcom/twitter/library/network/livepipeline/an;

    move-result-object v0

    return-object v0
.end method

.method protected e()Lcom/twitter/library/network/livepipeline/an;
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lcom/twitter/library/network/livepipeline/an;

    invoke-direct {v0, p0}, Lcom/twitter/library/network/livepipeline/an;-><init>(Lcom/twitter/library/network/livepipeline/ao;)V

    return-object v0
.end method
