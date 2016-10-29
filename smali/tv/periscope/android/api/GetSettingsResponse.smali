.class public Ltv/periscope/android/api/GetSettingsResponse;
.super Ltv/periscope/android/api/PsResponse;
.source "Twttr"


# instance fields
.field public isAutoDeleteEnabled:Z
    .annotation runtime Lnu;
        a = "disable_broadcast_persistence"
    .end annotation
.end field

.field public isAutoSaveEnabled:Z
    .annotation runtime Lnu;
        a = "auto_save_to_camera"
    .end annotation
.end field

.field public isBroadcastModerationDisabled:Z
    .annotation runtime Lnu;
        a = "disable_broadcast_moderation"
    .end annotation
.end field

.field public isFindMyProfileDisabled:Z
    .annotation runtime Lnu;
        a = "disable_find_by_digits_id"
    .end annotation
.end field

.field public isUserFollowEnabled:Z
    .annotation runtime Lnu;
        a = "push_new_follower"
    .end annotation
.end field

.field public isViewerModerationDisabled:Z
    .annotation runtime Lnu;
        a = "disable_viewer_moderation"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ltv/periscope/android/api/PsResponse;-><init>()V

    return-void
.end method
