.class public Lcom/twitter/android/qa;
.super Lcom/twitter/android/dialog/p;
.source "Twttr"


# direct methods
.method protected constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/twitter/android/dialog/p;-><init>(Landroid/os/Bundle;)V

    .line 18
    return-void
.end method

.method public static a(Landroid/os/Bundle;)Lcom/twitter/android/qa;
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lcom/twitter/android/qa;

    invoke-direct {v0, p0}, Lcom/twitter/android/qa;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/twitter/model/core/ay;
    .locals 3

    .prologue
    .line 27
    iget-object v0, p0, Lcom/twitter/android/qa;->b:Landroid/os/Bundle;

    const-string/jumbo v1, "quoted_tweet"

    sget-object v2, Lcom/twitter/model/core/ay;->a:Lcom/twitter/util/serialization/ah;

    invoke-static {v0, v1, v2}, Lcom/twitter/util/aa;->a(Landroid/os/Bundle;Ljava/lang/String;Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/ay;

    return-object v0
.end method
