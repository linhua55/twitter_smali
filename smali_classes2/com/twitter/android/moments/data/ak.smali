.class public Lcom/twitter/android/moments/data/ak;
.super Lcom/twitter/android/moments/data/e;
.source "Twttr"

# interfaces
.implements Lcom/twitter/library/client/bf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/android/moments/data/e",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/twitter/model/core/Tweet;",
        ">;>;",
        "Lcom/twitter/library/client/bf;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcet;

.field private final c:Lcom/twitter/library/client/bd;

.field private d:Lcom/twitter/android/moments/data/al;

.field private final e:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcet;Landroid/support/v4/app/LoaderManager;JILcom/twitter/library/client/bd;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p3, p6}, Lcom/twitter/android/moments/data/e;-><init>(Landroid/support/v4/app/LoaderManager;I)V

    .line 40
    iput-object p1, p0, Lcom/twitter/android/moments/data/ak;->a:Landroid/content/Context;

    .line 41
    iput-object p2, p0, Lcom/twitter/android/moments/data/ak;->b:Lcet;

    .line 42
    iput-wide p4, p0, Lcom/twitter/android/moments/data/ak;->e:J

    .line 43
    iput-object p7, p0, Lcom/twitter/android/moments/data/ak;->c:Lcom/twitter/library/client/bd;

    .line 44
    return-void
.end method


# virtual methods
.method public a(Landroid/database/Cursor;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/core/Tweet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 99
    invoke-static {}, Lcom/twitter/util/collection/r;->e()Lcom/twitter/util/collection/r;

    move-result-object v0

    .line 100
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    sget-object v1, Lcgi;->a:Lcgi;

    invoke-virtual {v1, p1}, Lcgi;->a(Landroid/database/Cursor;)Lcom/twitter/model/core/Tweet;

    move-result-object v1

    .line 102
    invoke-virtual {v0, v1}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    goto :goto_0

    .line 104
    :cond_0
    invoke-virtual {v0}, Lcom/twitter/util/collection/r;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public a(ILandroid/os/Bundle;Lcom/twitter/library/service/x;)V
    .locals 0

    .prologue
    .line 65
    return-void
.end method

.method public a(ILcom/twitter/library/service/x;)V
    .locals 0

    .prologue
    .line 61
    return-void
.end method

.method public a(Ljava/util/List;Lcom/twitter/library/client/Session;Lcom/twitter/android/moments/data/al;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/twitter/library/client/Session;",
            "Lcom/twitter/android/moments/data/al;",
            ")V"
        }
    .end annotation

    .prologue
    .line 52
    iput-object p3, p0, Lcom/twitter/android/moments/data/ak;->d:Lcom/twitter/android/moments/data/al;

    .line 53
    new-instance v0, Lbtk;

    iget-object v1, p0, Lcom/twitter/android/moments/data/ak;->a:Landroid/content/Context;

    new-instance v2, Lcom/twitter/android/moments/data/am;

    iget-object v3, p0, Lcom/twitter/android/moments/data/ak;->b:Lcet;

    iget-wide v4, p0, Lcom/twitter/android/moments/data/ak;->e:J

    invoke-direct {v2, v3, v4, v5}, Lcom/twitter/android/moments/data/am;-><init>(Lcet;J)V

    invoke-direct {v0, v1, p2, p1, v2}, Lbtk;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;Ljava/util/List;Lbtl;)V

    .line 56
    iget-object v1, p0, Lcom/twitter/android/moments/data/ak;->c:Lcom/twitter/library/client/bd;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, p0}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/library/service/x;ILcom/twitter/library/client/bf;)Z

    .line 57
    return-void
.end method

.method public b(ILcom/twitter/library/service/x;)V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/twitter/android/moments/data/ak;->d:Lcom/twitter/android/moments/data/al;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/twitter/library/service/x;->U()Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/twitter/android/moments/data/ak;->d:Lcom/twitter/android/moments/data/al;

    invoke-interface {v0}, Lcom/twitter/android/moments/data/al;->a()V

    .line 72
    :cond_0
    return-void
.end method

.method public synthetic c(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Lcom/twitter/android/moments/data/ak;->a(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 109
    iget-object v0, p0, Lcom/twitter/android/moments/data/ak;->b:Lcet;

    iget-wide v2, p0, Lcom/twitter/android/moments/data/ak;->e:J

    invoke-virtual {v0, v2, v3}, Lcet;->a(J)Lcom/twitter/android/bt;

    move-result-object v0

    return-object v0
.end method
