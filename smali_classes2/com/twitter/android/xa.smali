.class public Lcom/twitter/android/xa;
.super Lcom/twitter/android/wz;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/android/wz",
        "<",
        "Lcom/twitter/android/xa;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/twitter/android/wz;-><init>(I)V

    .line 33
    return-void
.end method


# virtual methods
.method protected a()Lcom/twitter/android/UpdateConversationNameDialog;
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lcom/twitter/android/UpdateConversationNameDialog;

    invoke-direct {v0}, Lcom/twitter/android/UpdateConversationNameDialog;-><init>()V

    return-object v0
.end method

.method protected synthetic c()Lcom/twitter/app/common/base/BaseDialogFragment;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/twitter/android/xa;->a()Lcom/twitter/android/UpdateConversationNameDialog;

    move-result-object v0

    return-object v0
.end method
