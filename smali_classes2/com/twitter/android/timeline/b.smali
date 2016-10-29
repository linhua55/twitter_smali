.class public Lcom/twitter/android/timeline/b;
.super Lcom/twitter/android/timeline/bq;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/android/timeline/bq",
        "<",
        "Lcom/twitter/android/timeline/a;",
        "Lcom/twitter/android/timeline/b;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(J)V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/twitter/android/timeline/bq;-><init>(J)V

    .line 23
    return-void
.end method

.method static synthetic a(Lcom/twitter/android/timeline/b;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/twitter/android/timeline/b;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/twitter/android/timeline/b;
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/twitter/android/timeline/b;->a:Ljava/lang/String;

    .line 28
    return-object p0
.end method

.method public bq_()Z
    .locals 1

    .prologue
    .line 33
    invoke-super {p0}, Lcom/twitter/android/timeline/bq;->bq_()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/timeline/b;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/twitter/android/timeline/b;->e()Lcom/twitter/android/timeline/a;

    move-result-object v0

    return-object v0
.end method

.method protected e()Lcom/twitter/android/timeline/a;
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lcom/twitter/android/timeline/a;

    invoke-direct {v0, p0}, Lcom/twitter/android/timeline/a;-><init>(Lcom/twitter/android/timeline/b;)V

    return-object v0
.end method
