.class public Lcom/twitter/android/qc;
.super Lcom/twitter/android/qb;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/android/qb",
        "<",
        "Lcom/twitter/android/qc;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/twitter/android/qb;-><init>(I)V

    .line 50
    return-void
.end method


# virtual methods
.method protected a()Lcom/twitter/android/ShareTweetEmptyOverlay;
    .locals 1

    .prologue
    .line 59
    new-instance v0, Lcom/twitter/android/ShareTweetEmptyOverlay;

    invoke-direct {v0}, Lcom/twitter/android/ShareTweetEmptyOverlay;-><init>()V

    return-object v0
.end method

.method protected synthetic c()Lcom/twitter/app/common/base/BaseDialogFragment;
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/twitter/android/qc;->a()Lcom/twitter/android/ShareTweetEmptyOverlay;

    move-result-object v0

    return-object v0
.end method
