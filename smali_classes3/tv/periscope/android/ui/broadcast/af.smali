.class public abstract Ltv/periscope/android/ui/broadcast/af;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ltv/periscope/android/data/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ltv/periscope/android/data/e",
        "<",
        "Ltv/periscope/android/ui/broadcast/BroadcastInfoItem;",
        ">;"
    }
.end annotation


# instance fields
.field protected final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ltv/periscope/android/ui/broadcast/BroadcastInfoItem;",
            ">;"
        }
    .end annotation
.end field

.field protected final b:Ltv/periscope/android/data/b;

.field protected c:Ljava/lang/String;

.field private final d:Ltv/periscope/android/data/f;

.field private e:I


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/af;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic a(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Ltv/periscope/android/ui/broadcast/af;->b(I)Ltv/periscope/android/ui/broadcast/BroadcastInfoItem;

    move-result-object v0

    return-object v0
.end method

.method public b(I)Ltv/periscope/android/ui/broadcast/BroadcastInfoItem;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/af;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/periscope/android/ui/broadcast/BroadcastInfoItem;

    return-object v0
.end method

.method public b()Ltv/periscope/model/o;
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/af;->b:Ltv/periscope/android/data/b;

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/af;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Ltv/periscope/android/data/b;->a(Ljava/lang/String;)Ltv/periscope/model/o;

    move-result-object v0

    return-object v0
.end method

.method public c()Ltv/periscope/android/data/f;
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/af;->d:Ltv/periscope/android/data/f;

    return-object v0
.end method

.method public d()Ltv/periscope/model/r;
    .locals 2

    .prologue
    .line 438
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/af;->b:Ltv/periscope/android/data/b;

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/af;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Ltv/periscope/android/data/b;->b(Ljava/lang/String;)Ltv/periscope/model/r;

    move-result-object v0

    return-object v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 442
    iget v0, p0, Ltv/periscope/android/ui/broadcast/af;->e:I

    return v0
.end method
