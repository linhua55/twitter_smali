.class public Ltv/periscope/android/ui/broadcast/u;
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
        "Ltv/periscope/model/o;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ltv/periscope/android/ui/broadcast/af;


# virtual methods
.method public a()Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$Type;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$Type;->a:Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$Type;

    return-object v0
.end method

.method public b()Ltv/periscope/model/o;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/u;->a:Ltv/periscope/android/ui/broadcast/af;

    invoke-virtual {v0}, Ltv/periscope/android/ui/broadcast/af;->b()Ltv/periscope/model/o;

    move-result-object v0

    return-object v0
.end method
