.class public Lcom/twitter/android/dm/widget/i;
.super Lcom/twitter/android/dialog/r;
.source "Twttr"


# instance fields
.field private b:Lcom/twitter/android/util/t;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/twitter/android/dialog/r;-><init>(I)V

    .line 22
    return-void
.end method


# virtual methods
.method protected a()Lcom/twitter/android/dm/widget/ReadReceiptEducationOverlay;
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcom/twitter/android/dm/widget/ReadReceiptEducationOverlay;

    invoke-direct {v0}, Lcom/twitter/android/dm/widget/ReadReceiptEducationOverlay;-><init>()V

    return-object v0
.end method

.method public a(Lcom/twitter/android/util/t;)Lcom/twitter/android/dm/widget/i;
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/twitter/android/dm/widget/i;->b:Lcom/twitter/android/util/t;

    .line 27
    return-object p0
.end method

.method protected synthetic b()Lcom/twitter/android/dialog/TakeoverDialogFragment;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/twitter/android/dm/widget/i;->a()Lcom/twitter/android/dm/widget/ReadReceiptEducationOverlay;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic c()Lcom/twitter/app/common/base/BaseDialogFragment;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/twitter/android/dm/widget/i;->a()Lcom/twitter/android/dm/widget/ReadReceiptEducationOverlay;

    move-result-object v0

    return-object v0
.end method
