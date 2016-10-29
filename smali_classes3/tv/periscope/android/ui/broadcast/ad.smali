.class public Ltv/periscope/android/ui/broadcast/ad;
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
        "Ltv/periscope/android/data/f;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Z

.field private final d:Ltv/periscope/android/ui/broadcast/af;


# virtual methods
.method public a()Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$Type;
    .locals 1

    .prologue
    .line 218
    sget-object v0, Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$Type;->f:Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$Type;

    return-object v0
.end method

.method public b()Ltv/periscope/android/data/f;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/ad;->d:Ltv/periscope/android/ui/broadcast/af;

    invoke-virtual {v0}, Ltv/periscope/android/ui/broadcast/af;->c()Ltv/periscope/android/data/f;

    move-result-object v0

    return-object v0
.end method
