.class public Ltv/periscope/android/ui/broadcast/t;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ltv/periscope/android/ui/broadcast/BroadcastInfoItem;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ltv/periscope/android/ui/broadcast/BroadcastInfoItem",
        "<",
        "Ltv/periscope/model/r;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ltv/periscope/android/ui/broadcast/af;

.field private final b:Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$StatsType;

.field private final c:Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$UserType;


# virtual methods
.method public a()Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$Type;
    .locals 1

    .prologue
    .line 282
    sget-object v0, Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$Type;->i:Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$Type;

    return-object v0
.end method

.method public b()Ltv/periscope/model/r;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/t;->a:Ltv/periscope/android/ui/broadcast/af;

    invoke-virtual {v0}, Ltv/periscope/android/ui/broadcast/af;->d()Ltv/periscope/model/r;

    move-result-object v0

    return-object v0
.end method

.method public c()Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$StatsType;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/t;->b:Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$StatsType;

    return-object v0
.end method

.method public d()Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$UserType;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/t;->c:Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$UserType;

    return-object v0
.end method
