.class public Lavb;
.super Lavo;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lavo",
        "<",
        "Lavc;",
        "Landroid/database/Cursor;",
        "Lcmf",
        "<TT;>;>;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final a:Lcmw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcmw",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v4/app/LoaderManager;ILcom/twitter/util/object/i;Lcmw;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/LoaderManager;",
            "I",
            "Lcom/twitter/util/object/i",
            "<",
            "Lcom/twitter/android/bt;",
            ">;",
            "Lcmw",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 26
    new-instance v0, Lavc;

    invoke-direct {v0, p1, p2, p3}, Lavc;-><init>(Landroid/support/v4/app/LoaderManager;ILcom/twitter/util/object/i;)V

    invoke-direct {p0, v0}, Lavo;-><init>(Lavm;)V

    .line 27
    iput-object p4, p0, Lavb;->a:Lcmw;

    .line 28
    return-void
.end method


# virtual methods
.method public a(Landroid/database/Cursor;)Lcmf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Lcmf",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 33
    if-nez p1, :cond_0

    .line 34
    const/4 v0, 0x0

    .line 36
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lavb;->a:Lcmw;

    invoke-interface {v0, p1}, Lcmw;->a(Landroid/database/Cursor;)Lcmf;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18
    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lavb;->a(Landroid/database/Cursor;)Lcmf;

    move-result-object v0

    return-object v0
.end method
