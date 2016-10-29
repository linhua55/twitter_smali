.class public Lcom/twitter/android/av/monetization/n;
.super Laui;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Laui",
        "<",
        "Lcom/twitter/android/av/monetization/l;",
        "Ljava/util/Set",
        "<",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Landroid/app/Activity;",
            ":",
            "Lcom/twitter/app/common/util/t;",
            ">(TA;I)V"
        }
    .end annotation

    .prologue
    .line 96
    const-class v0, Lcom/twitter/android/av/monetization/MonetizationCategorySelectorActivity;

    new-instance v1, Lcom/twitter/android/av/monetization/m;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/twitter/android/av/monetization/m;-><init>(Lcom/twitter/android/av/monetization/k;)V

    invoke-direct {p0, p1, v0, p2, v1}, Laui;-><init>(Landroid/app/Activity;Ljava/lang/Class;ILauk;)V

    .line 97
    return-void
.end method
