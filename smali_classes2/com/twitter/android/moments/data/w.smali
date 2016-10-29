.class public Lcom/twitter/android/moments/data/w;
.super Lazk;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lazk",
        "<",
        "Lcmf",
        "<",
        "Lcom/twitter/android/moments/viewmodels/MomentModule;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lazt;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lazt",
            "<",
            "Lavh;",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 18
    new-instance v0, Lazm;

    invoke-direct {v0, p1}, Lazm;-><init>(Lazt;)V

    invoke-direct {p0, v0}, Lazk;-><init>(Lazt;)V

    .line 19
    return-void
.end method


# virtual methods
.method protected a(Landroid/database/Cursor;)Lcmf;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Lcmf",
            "<",
            "Lcom/twitter/android/moments/viewmodels/MomentModule;",
            ">;"
        }
    .end annotation

    .prologue
    .line 24
    new-instance v0, Lcme;

    new-instance v1, Lcom/twitter/android/moments/data/v;

    invoke-direct {v1}, Lcom/twitter/android/moments/data/v;-><init>()V

    invoke-direct {v0, p1, v1}, Lcme;-><init>(Landroid/database/Cursor;Lcmv;)V

    return-object v0
.end method
