.class public Ltv/periscope/android/ui/broadcast/aa;
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
        "Lcom/google/android/gms/maps/model/LatLng;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/maps/model/LatLng;


# virtual methods
.method public a()Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$Type;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$Type;->b:Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$Type;

    return-object v0
.end method

.method public b()Lcom/google/android/gms/maps/model/LatLng;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/aa;->a:Lcom/google/android/gms/maps/model/LatLng;

    return-object v0
.end method
