.class public Lcom/twitter/android/smartfollow/waitingforsuggestions/WaitingForSuggestionsPresenterSavedState;
.super Lcom/twitter/app/common/util/BaseStateSaver;
.source "Twttr"


# annotations
.annotation build Latx;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<OBJ:",
        "Lcom/twitter/android/smartfollow/waitingforsuggestions/d;",
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
    .line 16
    new-instance v0, Lcom/twitter/android/smartfollow/waitingforsuggestions/h;

    invoke-direct {v0}, Lcom/twitter/android/smartfollow/waitingforsuggestions/h;-><init>()V

    sput-object v0, Lcom/twitter/android/smartfollow/waitingforsuggestions/WaitingForSuggestionsPresenterSavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/twitter/app/common/util/BaseStateSaver;-><init>(Landroid/os/Parcel;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Lcom/twitter/android/smartfollow/waitingforsuggestions/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TOBJ;)V"
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/twitter/app/common/util/BaseStateSaver;-><init>(Ljava/lang/Object;)V

    .line 32
    return-void
.end method


# virtual methods
.method protected a(Lcom/twitter/util/serialization/aj;Lcom/twitter/android/smartfollow/waitingforsuggestions/d;)Lcom/twitter/android/smartfollow/waitingforsuggestions/d;
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

    check-cast v0, Lcom/twitter/android/smartfollow/waitingforsuggestions/d;

    .line 52
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->i()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/twitter/android/smartfollow/waitingforsuggestions/d;->j:Ljava/lang/String;

    .line 53
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->e()I

    move-result v1

    iput v1, v0, Lcom/twitter/android/smartfollow/waitingforsuggestions/d;->k:I

    .line 54
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->e()I

    move-result v1

    iput v1, v0, Lcom/twitter/android/smartfollow/waitingforsuggestions/d;->l:I

    .line 55
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->d()Z

    move-result v1

    iput-boolean v1, v0, Lcom/twitter/android/smartfollow/waitingforsuggestions/d;->m:Z

    .line 56
    invoke-virtual {p1}, Lcom/twitter/util/serialization/aj;->d()Z

    move-result v1

    iput-boolean v1, v0, Lcom/twitter/android/smartfollow/waitingforsuggestions/d;->n:Z

    .line 57
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
    .line 14
    check-cast p2, Lcom/twitter/android/smartfollow/waitingforsuggestions/d;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/android/smartfollow/waitingforsuggestions/WaitingForSuggestionsPresenterSavedState;->a(Lcom/twitter/util/serialization/aj;Lcom/twitter/android/smartfollow/waitingforsuggestions/d;)Lcom/twitter/android/smartfollow/waitingforsuggestions/d;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/twitter/util/serialization/ak;Lcom/twitter/android/smartfollow/waitingforsuggestions/d;)V
    .locals 1
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
    .line 40
    invoke-super {p0, p1, p2}, Lcom/twitter/app/common/util/BaseStateSaver;->a(Lcom/twitter/util/serialization/ak;Ljava/lang/Object;)V

    .line 41
    iget-object v0, p2, Lcom/twitter/android/smartfollow/waitingforsuggestions/d;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/ak;->b(Ljava/lang/String;)Lcom/twitter/util/serialization/ak;

    .line 42
    iget v0, p2, Lcom/twitter/android/smartfollow/waitingforsuggestions/d;->k:I

    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/ak;->e(I)Lcom/twitter/util/serialization/ak;

    .line 43
    iget v0, p2, Lcom/twitter/android/smartfollow/waitingforsuggestions/d;->l:I

    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/ak;->e(I)Lcom/twitter/util/serialization/ak;

    .line 44
    iget-boolean v0, p2, Lcom/twitter/android/smartfollow/waitingforsuggestions/d;->m:Z

    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/ak;->b(Z)Lcom/twitter/util/serialization/ak;

    .line 45
    iget-boolean v0, p2, Lcom/twitter/android/smartfollow/waitingforsuggestions/d;->n:Z

    invoke-virtual {p1, v0}, Lcom/twitter/util/serialization/ak;->b(Z)Lcom/twitter/util/serialization/ak;

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
    .line 14
    check-cast p2, Lcom/twitter/android/smartfollow/waitingforsuggestions/d;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/android/smartfollow/waitingforsuggestions/WaitingForSuggestionsPresenterSavedState;->a(Lcom/twitter/util/serialization/ak;Lcom/twitter/android/smartfollow/waitingforsuggestions/d;)V

    return-void
.end method
