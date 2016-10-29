.class public Lcom/twitter/android/moments/ui/maker/bq;
.super Laui;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Laui",
        "<",
        "Lcom/twitter/android/moments/ui/maker/bp;",
        "Lcom/twitter/util/collection/ab",
        "<",
        "Landroid/net/Uri;",
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
    .line 62
    const/4 v0, 0x0

    new-instance v1, Lcom/twitter/android/moments/ui/maker/br;

    invoke-direct {v1}, Lcom/twitter/android/moments/ui/maker/br;-><init>()V

    invoke-direct {p0, p1, v0, p2, v1}, Laui;-><init>(Landroid/app/Activity;Ljava/lang/Class;ILauk;)V

    .line 69
    return-void
.end method
