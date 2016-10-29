.class public Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$More;
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

.field private final b:Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$More$MoreType;

.field private final c:I


# virtual methods
.method public a()Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$Type;
    .locals 1

    .prologue
    .line 183
    sget-object v0, Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$Type;->g:Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$Type;

    return-object v0
.end method

.method public b()Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$More$MoreType;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$More;->b:Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$More$MoreType;

    return-object v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 191
    iget v0, p0, Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$More;->c:I

    return v0
.end method

.method public d()Ltv/periscope/model/r;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$More;->a:Ltv/periscope/android/ui/broadcast/af;

    invoke-virtual {v0}, Ltv/periscope/android/ui/broadcast/af;->d()Ltv/periscope/model/r;

    move-result-object v0

    return-object v0
.end method
