.class public Ltv/periscope/android/api/SuggestedPeopleResponse;
.super Ltv/periscope/android/api/PsResponse;
.source "Twttr"


# instance fields
.field public digits:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ltv/periscope/android/api/PsUser;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnu;
        a = "digits"
    .end annotation
.end field

.field public featured:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ltv/periscope/android/api/PsUser;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnu;
        a = "featured"
    .end annotation
.end field

.field public hearted:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ltv/periscope/android/api/PsUser;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnu;
        a = "hearted"
    .end annotation
.end field

.field public popular:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ltv/periscope/android/api/PsUser;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnu;
        a = "popular"
    .end annotation
.end field

.field public twitter:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ltv/periscope/android/api/PsUser;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnu;
        a = "twitter"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ltv/periscope/android/api/PsResponse;-><init>()V

    return-void
.end method
