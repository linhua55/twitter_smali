.class final Lcom/google/android/exoplayer/util/SlidingPercentile$2;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/google/android/exoplayer/util/SlidingPercentile$Sample;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/google/android/exoplayer/util/SlidingPercentile$Sample;Lcom/google/android/exoplayer/util/SlidingPercentile$Sample;)I
    .locals 2

    .prologue
    .line 47
    iget v0, p1, Lcom/google/android/exoplayer/util/SlidingPercentile$Sample;->value:F

    iget v1, p2, Lcom/google/android/exoplayer/util/SlidingPercentile$Sample;->value:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget v0, p2, Lcom/google/android/exoplayer/util/SlidingPercentile$Sample;->value:F

    iget v1, p1, Lcom/google/android/exoplayer/util/SlidingPercentile$Sample;->value:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 44
    check-cast p1, Lcom/google/android/exoplayer/util/SlidingPercentile$Sample;

    check-cast p2, Lcom/google/android/exoplayer/util/SlidingPercentile$Sample;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer/util/SlidingPercentile$2;->compare(Lcom/google/android/exoplayer/util/SlidingPercentile$Sample;Lcom/google/android/exoplayer/util/SlidingPercentile$Sample;)I

    move-result v0

    return v0
.end method
