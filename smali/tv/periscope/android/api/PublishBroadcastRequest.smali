.class public Ltv/periscope/android/api/PublishBroadcastRequest;
.super Ltv/periscope/android/api/PsRequest;
.source "Twttr"


# instance fields
.field public bitRate:I
    .annotation runtime Lnu;
        a = "bit_rate"
    .end annotation
.end field

.field public broadcastId:Ljava/lang/String;
    .annotation runtime Lnu;
        a = "broadcast_id"
    .end annotation
.end field

.field public cameraRotation:I
    .annotation runtime Lnu;
        a = "camera_rotation"
    .end annotation
.end field

.field public followingOnlyChat:Z
    .annotation runtime Lnu;
        a = "friend_chat"
    .end annotation
.end field

.field public hasLocation:Z
    .annotation runtime Lnu;
        a = "has_location"
    .end annotation
.end field

.field public lat:F
    .annotation runtime Lnu;
        a = "lat"
    .end annotation
.end field

.field public lng:F
    .annotation runtime Lnu;
        a = "lng"
    .end annotation
.end field

.field public locale:Ljava/lang/String;
    .annotation runtime Lnu;
        a = "locale"
    .end annotation
.end field

.field public lockIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnu;
        a = "lock"
    .end annotation
.end field

.field public title:Ljava/lang/String;
    .annotation runtime Lnu;
        a = "status"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ltv/periscope/android/api/PsRequest;-><init>()V

    return-void
.end method
