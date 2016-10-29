.class public Labz;
.super Lauf;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lauf",
        "<",
        "Lcom/twitter/android/composer/ax;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/twitter/android/composer/ComposerActivity;

    invoke-direct {p0, p1, v0}, Lauf;-><init>(Landroid/app/Activity;Ljava/lang/Class;)V

    .line 17
    return-void
.end method
