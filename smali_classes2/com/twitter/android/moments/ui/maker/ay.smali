.class public Lcom/twitter/android/moments/ui/maker/ay;
.super Laui;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Laui",
        "<",
        "Lcom/twitter/android/moments/ui/maker/ax;",
        "Lcom/twitter/util/collection/ab",
        "<",
        "Lcom/twitter/model/moments/ad;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 2
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
    .line 84
    const-class v0, Lcom/twitter/android/moments/ui/maker/CreateMomentActivity;

    new-instance v1, Lcom/twitter/android/moments/ui/guide/an;

    invoke-direct {v1}, Lcom/twitter/android/moments/ui/guide/an;-><init>()V

    invoke-direct {p0, p1, v0, p2, v1}, Laui;-><init>(Landroid/app/Activity;Ljava/lang/Class;ILauk;)V

    .line 85
    return-void
.end method
