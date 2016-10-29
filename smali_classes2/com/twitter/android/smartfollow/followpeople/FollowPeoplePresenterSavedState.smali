.class public Lcom/twitter/android/smartfollow/followpeople/FollowPeoplePresenterSavedState;
.super Lcom/twitter/app/common/util/BaseStateSaver;
.source "Twttr"


# annotations
.annotation build Latx;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<OBJ:",
        "Lcom/twitter/android/smartfollow/followpeople/e;",
        ">",
        "Lcom/twitter/app/common/util/BaseStateSaver",
        "<TOBJ;>;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcom/twitter/android/smartfollow/followpeople/f;

    invoke-direct {v0}, Lcom/twitter/android/smartfollow/followpeople/f;-><init>()V

    sput-object v0, Lcom/twitter/android/smartfollow/followpeople/FollowPeoplePresenterSavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/twitter/app/common/util/BaseStateSaver;-><init>(Landroid/os/Parcel;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Lcom/twitter/android/smartfollow/followpeople/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TOBJ;)V"
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/twitter/app/common/util/BaseStateSaver;-><init>(Ljava/lang/Object;)V

    .line 34
    return-void
.end method


# virtual methods
.method protected a(Lcom/twitter/util/serialization/aj;Lcom/twitter/android/smartfollow/followpeople/e;)Lcom/twitter/android/smartfollow/followpeople/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/util/serialization/aj;",
            "TOBJ;)TOBJ;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 51
    invoke-super {p0, p1, p2}, Lcom/twitter/app/common/util/BaseStateSaver;->a(Lcom/twitter/util/serialization/aj;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/smartfollow/followpeople/e;

    .line 52
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->d()Z

    move-result v1

    iput-boolean v1, v0, Lcom/twitter/android/smartfollow/followpeople/e;->i:Z

    .line 53
    sget-object v1, Lawa;->a:Lcom/twitter/util/serialization/ah;

    invoke-virtual {p1, v1}, Lcom/twitter/util/serialization/aj;->a(Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    iput-object v1, v0, Lcom/twitter/android/smartfollow/followpeople/e;->j:Ljava/util/Set;

    .line 54
    sget-object v1, Lcom/twitter/refresh/widget/a;->a:Lcom/twitter/util/serialization/ah;

    invoke-virtual {p1, v1}, Lcom/twitter/util/serialization/aj;->a(Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/refresh/widget/a;

    iput-object v1, v0, Lcom/twitter/android/smartfollow/followpeople/e;->k:Lcom/twitter/refresh/widget/a;

    .line 55
    return-object v0
.end method

.method protected bridge synthetic a(Lcom/twitter/util/serialization/aj;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 16
    check-cast p2, Lcom/twitter/android/smartfollow/followpeople/e;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/android/smartfollow/followpeople/FollowPeoplePresenterSavedState;->a(Lcom/twitter/util/serialization/aj;Lcom/twitter/android/smartfollow/followpeople/e;)Lcom/twitter/android/smartfollow/followpeople/e;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/twitter/util/serialization/ak;Lcom/twitter/android/smartfollow/followpeople/e;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/util/serialization/ak;",
            "TOBJ;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42
    invoke-super {p0, p1, p2}, Lcom/twitter/app/common/util/BaseStateSaver;->a(Lcom/twitter/util/serialization/ak;Ljava/lang/Object;)V

    .line 43
    iget-boolean v0, p2, Lcom/twitter/android/smartfollow/followpeople/e;->i:Z

    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/ak;->b(Z)Lcom/twitter/util/serialization/ak;

    .line 44
    iget-object v0, p2, Lcom/twitter/android/smartfollow/followpeople/e;->j:Ljava/util/Set;

    sget-object v1, Lawa;->a:Lcom/twitter/util/serialization/ah;

    invoke-virtual {p1, v0, v1}, Lcom/twitter/util/serialization/ak;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ak;

    .line 45
    iget-object v0, p2, Lcom/twitter/android/smartfollow/followpeople/e;->k:Lcom/twitter/refresh/widget/a;

    sget-object v1, Lcom/twitter/refresh/widget/a;->a:Lcom/twitter/util/serialization/ah;

    invoke-virtual {p1, v0, v1}, Lcom/twitter/util/serialization/ak;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ak;

    .line 46
    return-void
.end method

.method protected bridge synthetic a(Lcom/twitter/util/serialization/ak;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 16
    check-cast p2, Lcom/twitter/android/smartfollow/followpeople/e;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/android/smartfollow/followpeople/FollowPeoplePresenterSavedState;->a(Lcom/twitter/util/serialization/ak;Lcom/twitter/android/smartfollow/followpeople/e;)V

    return-void
.end method
