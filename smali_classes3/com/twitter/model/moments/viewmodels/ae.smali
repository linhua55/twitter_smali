.class public Lcom/twitter/model/moments/viewmodels/ae;
.super Lcom/twitter/model/moments/viewmodels/z;
.source "Twttr"

# interfaces
.implements Lcom/twitter/model/moments/viewmodels/f;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NullableEnum"
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/model/moments/viewmodels/z",
        "<",
        "Lcom/twitter/model/moments/viewmodels/MomentTweetStreamingVideoPage;",
        "Lcom/twitter/model/moments/viewmodels/ae;",
        ">;",
        "Lcom/twitter/model/moments/viewmodels/f",
        "<",
        "Lcom/twitter/model/moments/viewmodels/MomentTweetStreamingVideoPage;",
        "Lcom/twitter/model/moments/viewmodels/ae;",
        ">;"
    }
.end annotation


# instance fields
.field j:Lcom/twitter/model/moments/k;

.field k:Lcom/twitter/model/moments/viewmodels/MomentTweetStreamingVideoPage$VideoType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/twitter/model/moments/viewmodels/z;-><init>()V

    .line 89
    return-void
.end method

.method public constructor <init>(Lcom/twitter/model/moments/viewmodels/MomentTweetStreamingVideoPage;)V
    .locals 1

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/twitter/model/moments/viewmodels/z;-><init>(Lcom/twitter/model/moments/viewmodels/y;)V

    .line 93
    iget-object v0, p1, Lcom/twitter/model/moments/viewmodels/MomentTweetStreamingVideoPage;->b:Lcom/twitter/model/moments/k;

    iput-object v0, p0, Lcom/twitter/model/moments/viewmodels/ae;->j:Lcom/twitter/model/moments/k;

    .line 94
    iget-object v0, p1, Lcom/twitter/model/moments/viewmodels/MomentTweetStreamingVideoPage;->a:Lcom/twitter/model/moments/viewmodels/MomentTweetStreamingVideoPage$VideoType;

    iput-object v0, p0, Lcom/twitter/model/moments/viewmodels/ae;->k:Lcom/twitter/model/moments/viewmodels/MomentTweetStreamingVideoPage$VideoType;

    .line 95
    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/model/moments/viewmodels/MomentTweetStreamingVideoPage$VideoType;)Lcom/twitter/model/moments/viewmodels/ae;
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/twitter/model/moments/viewmodels/ae;->k:Lcom/twitter/model/moments/viewmodels/MomentTweetStreamingVideoPage$VideoType;

    .line 113
    return-object p0
.end method

.method public synthetic a(Lcom/twitter/model/moments/k;)Lcom/twitter/model/moments/viewmodels/l;
    .locals 1

    .prologue
    .line 81
    invoke-virtual {p0, p1}, Lcom/twitter/model/moments/viewmodels/ae;->b(Lcom/twitter/model/moments/k;)Lcom/twitter/model/moments/viewmodels/ae;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/twitter/model/moments/k;)Lcom/twitter/model/moments/viewmodels/ae;
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/twitter/model/moments/viewmodels/ae;->j:Lcom/twitter/model/moments/k;

    .line 107
    return-object p0
.end method

.method protected synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/twitter/model/moments/viewmodels/ae;->e()Lcom/twitter/model/moments/viewmodels/MomentTweetStreamingVideoPage;

    move-result-object v0

    return-object v0
.end method

.method protected e()Lcom/twitter/model/moments/viewmodels/MomentTweetStreamingVideoPage;
    .locals 1

    .prologue
    .line 100
    new-instance v0, Lcom/twitter/model/moments/viewmodels/MomentTweetStreamingVideoPage;

    invoke-direct {v0, p0}, Lcom/twitter/model/moments/viewmodels/MomentTweetStreamingVideoPage;-><init>(Lcom/twitter/model/moments/viewmodels/ae;)V

    return-object v0
.end method
