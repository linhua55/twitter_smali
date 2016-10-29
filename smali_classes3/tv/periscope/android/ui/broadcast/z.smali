.class public Ltv/periscope/android/ui/broadcast/z;
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
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ltv/periscope/android/ui/broadcast/af;

.field private final b:Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$UserType;


# virtual methods
.method public a()Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$Type;
    .locals 1

    .prologue
    .line 345
    sget-object v0, Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$Type;->l:Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$Type;

    return-object v0
.end method

.method public b()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/z;->a:Ltv/periscope/android/ui/broadcast/af;

    invoke-virtual {v0}, Ltv/periscope/android/ui/broadcast/af;->e()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public c()Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$UserType;
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/z;->b:Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$UserType;

    return-object v0
.end method
