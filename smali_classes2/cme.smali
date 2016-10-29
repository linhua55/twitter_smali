.class public Lcme;
.super Lcmq;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcmq",
        "<",
        "Landroid/database/Cursor;",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/database/Cursor;Lcmv;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Lcmv",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 14
    new-instance v0, Lcmb;

    invoke-direct {v0, p1}, Lcmb;-><init>(Landroid/database/Cursor;)V

    invoke-direct {p0, v0, p2}, Lcmq;-><init>(Lcmf;Lcmy;)V

    .line 15
    return-void
.end method
