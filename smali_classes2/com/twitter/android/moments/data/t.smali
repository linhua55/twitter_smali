.class public Lcom/twitter/android/moments/data/t;
.super Lazk;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lazk",
        "<",
        "Lcmf",
        "<",
        "Lcom/twitter/model/moments/ad;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lazt;)V
    .locals 0
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
    .line 17
    invoke-direct {p0, p1}, Lazk;-><init>(Lazt;)V

    .line 18
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
            "Lcom/twitter/model/moments/ad;",
            ">;"
        }
    .end annotation

    .prologue
    .line 23
    new-instance v0, Lcme;

    new-instance v1, Lcom/twitter/android/moments/data/r;

    invoke-direct {v1}, Lcom/twitter/android/moments/data/r;-><init>()V

    invoke-direct {v0, p1, v1}, Lcme;-><init>(Landroid/database/Cursor;Lcmv;)V

    return-object v0
.end method
