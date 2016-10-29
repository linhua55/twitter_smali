.class public Ltv/periscope/android/ui/broadcast/s;
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
        "Ljava/util/List",
        "<",
        "Ldnc;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ldnc;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$UserType;


# virtual methods
.method public a()Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$Type;
    .locals 1

    .prologue
    .line 111
    sget-object v0, Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$Type;->c:Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$Type;

    return-object v0
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ldnc;",
            ">;"
        }
    .end annotation

    .prologue
    .line 116
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/s;->a:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public c()Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$UserType;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/s;->b:Ltv/periscope/android/ui/broadcast/BroadcastInfoItem$UserType;

    return-object v0
.end method
