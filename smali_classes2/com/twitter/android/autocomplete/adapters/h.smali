.class public abstract Lcom/twitter/android/autocomplete/adapters/h;
.super Lcvt;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "S:",
        "Ljava/lang/Object;",
        ">",
        "Lcvt",
        "<TS;>;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcvt;-><init>(Landroid/content/Context;)V

    .line 16
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lcmf;)Lcmf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcmf",
            "<TS;>;)",
            "Lcmf",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 27
    iput-object p1, p0, Lcom/twitter/android/autocomplete/adapters/h;->a:Ljava/lang/Object;

    .line 28
    invoke-virtual {p0, p2}, Lcom/twitter/android/autocomplete/adapters/h;->a(Lcmf;)Lcmf;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 33
    iget-object v0, p0, Lcom/twitter/android/autocomplete/adapters/h;->a:Ljava/lang/Object;

    return-object v0
.end method
