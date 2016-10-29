.class public Lcom/twitter/android/timeline/m;
.super Lcom/twitter/android/timeline/bq;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/android/timeline/bq",
        "<",
        "Lcom/twitter/android/timeline/l;",
        "Lcom/twitter/android/timeline/m;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/twitter/model/timeline/e;


# direct methods
.method public constructor <init>(J)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/twitter/android/timeline/bq;-><init>(J)V

    .line 32
    return-void
.end method

.method static synthetic a(Lcom/twitter/android/timeline/m;)Lcom/twitter/model/timeline/e;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/twitter/android/timeline/m;->a:Lcom/twitter/model/timeline/e;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/twitter/model/timeline/e;)Lcom/twitter/android/timeline/m;
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/twitter/android/timeline/m;->a:Lcom/twitter/model/timeline/e;

    .line 37
    return-object p0
.end method

.method protected synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/twitter/android/timeline/m;->e()Lcom/twitter/android/timeline/l;

    move-result-object v0

    return-object v0
.end method

.method protected e()Lcom/twitter/android/timeline/l;
    .locals 1

    .prologue
    .line 43
    new-instance v0, Lcom/twitter/android/timeline/l;

    invoke-direct {v0, p0}, Lcom/twitter/android/timeline/l;-><init>(Lcom/twitter/android/timeline/m;)V

    return-object v0
.end method
