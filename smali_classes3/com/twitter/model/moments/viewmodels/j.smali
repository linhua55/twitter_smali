.class public abstract Lcom/twitter/model/moments/viewmodels/j;
.super Lcom/twitter/model/moments/viewmodels/l;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/twitter/model/moments/viewmodels/i;",
        "B:",
        "Lcom/twitter/model/moments/viewmodels/l",
        "<TT;TB;>;>",
        "Lcom/twitter/model/moments/viewmodels/l",
        "<TT;TB;>;"
    }
.end annotation


# instance fields
.field a:Z


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/twitter/model/moments/viewmodels/l;-><init>()V

    .line 45
    return-void
.end method

.method protected constructor <init>(Lcom/twitter/model/moments/viewmodels/i;)V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/twitter/model/moments/viewmodels/l;-><init>(Lcom/twitter/model/moments/viewmodels/MomentPage;)V

    .line 49
    invoke-virtual {p1}, Lcom/twitter/model/moments/viewmodels/i;->b()Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/model/moments/viewmodels/j;->a:Z

    .line 50
    return-void
.end method
